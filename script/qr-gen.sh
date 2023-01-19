#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

if [ "_${VERBOSE}_" == "__" ]; then VERBOSE=0; fi
if [ "${VERBOSE}" -gt 1 ]; then
	set -x
fi

SKIP_PATTERNS=(
	'http://127.0.0.1' # local host
	'http://localhost' # local host
	'\$ENCODED' # not a real URL
	'\$JEKYLL' # not a real URL
)

rm -f images/qr.*.svg

DOC_FILE=docs/qr-links.md
cat > $DOC_FILE << EOF
# QR codes for links

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->
EOF

EXPECTED=0
URLS=$(git grep http |
		grep -Eo "(http|https)://[^ )\"><']+" |
		sort --unique)
for URL in $URLS; do
	SKIP_URL=0
	for PATTERN in "${SKIP_PATTERNS[@]}"; do
		if echo "$URL" | grep --quiet --extended-regexp "$PATTERN"; then
			if [ $VERBOSE -gt 0 ]; then
				echo "'$URL' matches '$PATTERN'"
			fi
			SKIP_URL=1
		fi
	done
	if [ $SKIP_URL -eq 1 ]; then
		continue
	fi
	EXPECTED=$(( $EXPECTED + 1 ))
	FILE_NAME_STEM=$(echo "$URL" \
		| tr --squeeze-repeats --complement [:alnum:] '-' \
		| sed -e 's/^https-//' -e's/^http-//' -e's/-$//' )
	FILE_NAME=images/qr.$FILE_NAME_STEM.svg
	qrencode --output="$FILE_NAME" --type=SVG $URL
	QR_CAPTION=$(echo "$URL" | cut -f3- -d'/')
	cat >> $DOC_FILE << EOF

![$URL](../$FILE_NAME)

[$QR_CAPTION]($URL)
EOF

done

CREATED=$(ls -1 images/qr.*.svg | wc -l)
if [ $CREATED -ne $EXPECTED ]; then
	echo "Possible FILE_NAME_STEM collision"
	echo "Expected $EXPECTED, but was $CREATED"
	exit 1
fi
