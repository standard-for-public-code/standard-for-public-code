#!/bin/bash
# SPDX-License-Identifier: LGPL-2.1-or-later
# to-archive-org.sh : send referenced URLs to the wayback machine
# Copyright (C) 2020 Eric Herman <eric@freesa.org>

# TODO FIXXXME: use something better than bash

if [ "_${ARCHIVER_LOG_FILE}_" == "__" ]; then
	NOW=$(date --utc +%Y%m%dT%H%M%SZ)
	ARCHIVER_LOG_FILE=/tmp/to-archive-org.sh.${NOW}.log
fi
echo "ARCHIVER_LOG_FILE=$ARCHIVER_LOG_FILE"

if [ "_${ARCHIVER_USER_AGENT}_" == "__" ]; then
	GIT_USER_NAME=$(git config --get user.name)
	GIT_USER_EMAIL=$(git config --get user.email)
	RUN_BY="$GIT_USER_NAME ( $GIT_USER_EMAIL )"
	REMOTE=$(git remote -v | head -n1 | cut -f1 -d$'\t')
	REPO_URL=$(git config --get remote.${REMOTE}.url)
	ARCHIVER_USER_AGENT="'url-archiver run by $RUN_BY for $REPO_URL'"
fi
echo "ARCHIVER_USER_AGENT=$ARCHIVER_USER_AGENT"

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

# create a list of unique URLs, excluding archive.org and localhost
cat urls.txt \
	| cut -f1 -d'#' \
	| grep -v '^https://web.archive.org' \
	| grep -v '^http[s]\?://localhost/' \
	| grep -v '^http[s]\?://127.0.0.1/' \
	| sort -u \
	> urls-sorted.txt

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

	echo "" >> $ARCHIVER_LOG_FILE
	echo "----------" >> $ARCHIVER_LOG_FILE
	echo $URL >> $ARCHIVER_LOG_FILE
	ARC_ORG_URL=https://web.archive.org/save/$ENCODED
	echo $ARC_ORG_URL >> $ARCHIVER_LOG_FILE
	curl --user-agent "$ARCHIVER_USER_AGENT" \
		$ARC_ORG_URL >> $ARCHIVER_LOG_FILE
	echo "" >> $ARCHIVER_LOG_FILE
	echo "----------" >> $ARCHIVER_LOG_FILE
done
echo "done"
