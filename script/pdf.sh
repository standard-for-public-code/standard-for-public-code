#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS

# This script is used to generate a PDF from the html generated by Jekyll.
# This script is used during the release process (see ../docs/releasing.md)

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
	set -x
fi

VERSION="${1}"
if [ "_${VERSION}_" == "__" ]; then
	VERSION=$( script/git-repo-version.sh )
fi

function weasyprint_version() {
	weasyprint --version \
		| sed -e's/[^0-9]*\([0-9\.]*\).*/\1/'
}

function temp_weasyprint_info() {
	if [ $TMP_WEASYPRINT -gt 0 ]; then
		WEASY_PRINT_VER=$(weasyprint_version)
		echo "================================================="
		echo "temp WeasyPrint installed, version $WEASY_PRINT_VER"
		echo "to use this version outside of this script,"
		echo "type the following command:"
		echo
		echo "$ source /tmp/weasyprint/venv/bin/activate"
		echo "================================================="
	fi
}

function ensure_good_weasyprint () {
	WEASY_PRINT_VER=$(weasyprint_version)
	echo "WEASY_PRINT_VER='$WEASY_PRINT_VER'"

	if [ "_${WEASY_PRINT_VER}_" != "__" ]; then
		WP_MAJOR_VERSION=$(echo "${WEASY_PRINT_VER}" | cut -f1 -d'.')
		WP_MINOR_VERSION=$(echo "${WEASY_PRINT_VER}" | cut -f2 -d'.')
	else
		WP_MAJOR_VERSION=0
		WP_MINOR_VERSION=0
	fi

	if [ "$WP_MAJOR_VERSION" -lt 57 ]; then
		echo "WeasyPrint version: $WEASY_PRINT_VER less than 57"
	        echo "installing new weasyprint"
		pushd /tmp
		rm -rf weasyprint
		git clone https://github.com/Kozea/WeasyPrint.git weasyprint
		cd weasyprint
		python3 -m venv venv
	        source venv/bin/activate
	        pip install weasyprint
		TMP_WEASYPRINT=1
		echo
		temp_weasyprint_info
		echo
		popd
	fi
	if [ "_${TMP_WEASYPRINT}_" == "__" ]; then
		TMP_WEASYPRINT=0
	fi
}
ensure_good_weasyprint

function free-port() {
	ruby -e 'require "socket";
		s=TCPServer.new("", 0);
		print s.addr[1], "\n";
		s.close();'
}

JEKYLL_PDF_PORT=$(free-port)
echo "JEKYLL_PDF_PORT=$JEKYLL_PDF_PORT"
JEKYLL_PDF_DIR=_build_pdf
rm -rf $JEKYLL_PDF_DIR

PAGES_REPO_NWO=standard-for-public-code/standard-for-public-code \
	bundle exec jekyll serve \
		--port=$JEKYLL_PDF_PORT \
		--destination=$JEKYLL_PDF_DIR &
JEKYLL_PID=$!
function cleanup() {
	echo "Killing JEKYLL_PID: $JEKYLL_PID"
	kill $JEKYLL_PID
}
trap cleanup EXIT # stop the jekyll serve

MAX_LOOPS=100
LOOPS=0
while ! curl "http://127.0.0.1:$JEKYLL_PDF_PORT" >/dev/null 2>&1 ; do
	LOOPS=$(( $LOOPS + 1 ));
	echo "try $LOOPS, waiting to connect ..."
	sleep 1;
	if [ $LOOPS -gt $MAX_LOOPS ]; then
		echo "exceeds MAX_LOOPS";
		exit 1;
	fi
done

# give it plenty of time to come up completely
# otherwise we might get a 503 Service Unavailable
sleep 15;

echo
weasyprint --presentational-hints \
	"http://127.0.0.1:$JEKYLL_PDF_PORT/standard-print.html" \
	standard-for-public-code-$VERSION.pdf
ls -l	standard-for-public-code-$VERSION.pdf

echo
weasyprint --presentational-hints \
	"http://127.0.0.1:$JEKYLL_PDF_PORT/foreword-print.html" \
	standard-for-public-code-foreword-$VERSION.pdf
ls -l	standard-for-public-code-foreword-$VERSION.pdf

echo
weasyprint --presentational-hints \
	"http://127.0.0.1:$JEKYLL_PDF_PORT/print-cover.html" \
	standard-cover-$VERSION.pdf
ls -l	standard-cover-$VERSION.pdf

echo
weasyprint --presentational-hints \
	"http://127.0.0.1:$JEKYLL_PDF_PORT/docs/review-template.html" \
	standard-review-template-$VERSION.pdf
ls -l	standard-review-template-$VERSION.pdf

echo
weasyprint --presentational-hints \
	"http://127.0.0.1:$JEKYLL_PDF_PORT/docs/checklist.html" \
	standard-checklist-$VERSION.pdf
ls -l	standard-checklist-$VERSION.pdf

echo
if ! pdfjam --version ; then
	echo "'pdfjam' not installed, skipping print versions"
	echo "'pdfjam' should be available from the package manager, e.g.:"
	echo
	echo "        sudo apt install -y texlive-extra-utils"
	echo
else
	pdfjam standard-checklist-$VERSION.pdf \
		'4,1-3' \
		--trim "-0.6cm -0.6cm -0.6cm -0.6cm" \
		--nup 2x1 --landscape \
		--papersize '{216mm,303mm}'  \
		--outfile standard-checklist-folded-$VERSION.pdf

	pdfjam \
		standard-for-public-code-foreword-$VERSION.pdf \
		standard-for-public-code-$VERSION.pdf \
		--outfile standard-for-public-code-print-$VERSION.pdf

	ls -l standard-checklist-folded-$VERSION.pdf
	ls -l standard-for-public-code-print-$VERSION.pdf
fi

echo
if ! pandoc --version ; then
	echo "'pandoc' not installed, skipping .epub version"
	echo "'pandoc' should be available from the package manager, e.g.:"
	echo
	echo "        sudo apt install -y pandoc"
	echo
else
	pandoc $JEKYLL_PDF_DIR/standard-print.html \
		-o standard-for-public-code-$VERSION.epub
	ls -l standard-for-public-code-$VERSION.epub
fi

echo
temp_weasyprint_info

ls -l *.pdf *.epub

echo "done"
