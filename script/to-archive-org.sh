#!/bin/bash
# SPDX-License-Identifier: LGPL-2.1-or-later
# to-archive-org.sh : send referenced URLs to the wayback machine
# Copyright (C) 2020 Eric Herman <eric@freesa.org>

# TODO FIXXXME: use something better than bash

rm -f urls.txt

# find . -type f -name '*.md' -print0 |
# while IFS= read -r -d '' FILE; do

BRANCH_NAME=$(git branch | grep \* | cut -d ' ' -f2)
for FILE in $(git ls-tree -r --name-only $BRANCH_NAME); do
	# URLs inside parens
	grep '(http[s]\?:' "$FILE" \
		| sed -e's/.*[(]\(http[s]*:[^)]*\).*/\1/' \
		>> urls.txt
	# URLs inside angle brackets
	grep '<http[s]\?:' "$FILE" \
		| sed -e's/.*<\(http[s]*:[^>]*\).*/\1/' \
		>> urls.txt
	# URLs inside double-quotes
	grep '"http[s]\?:' "$FILE" \
		| sed -e's/.*"\(http[s]*:[^"]*\).*/\1/' \
		>> urls.txt
done

cat urls.txt | cut -f1 -d'#' | sort -u > urls-sorted.txt
URLS_TOTAL=$(wc -l urls-sorted.txt | cut -f1 -d' ')

# cat urls-sorted.txt

MAX_PER_MINUTE=5
echo "sending $URLS_TOTAL URLs to the wayback machine,"
echo "        throttled to $MAX_PER_MINUTE per minute..."
PAUSE_TIME=$(( 1 + (60 / $MAX_PER_MINUTE) ))
URLS_COUNT=0
for URL in $(cat urls-sorted.txt); do
	echo sleeping for $PAUSE_TIME ....
	sleep $PAUSE_TIME
	# $ sudo apt-get install gridsite-clients
	ENCODED=`urlencode $URL`
	echo ""
	URLS_COUNT=$(( $URLS_COUNT + 1 ))
	echo "$URLS_COUNT of $URLS_TOTAL"
	echo URL: $URL
	echo encoded: $ENCODED
	ARC_ORG_URL=https://web.archive.org/save/$ENCODED
	# wget  --post-data "url=$URL" https://web.archive.org/save
	wget \
		--user-agent="foundation-for-public-code-url-archiver" \
		$ARC_ORG_URL
done
echo "done"
