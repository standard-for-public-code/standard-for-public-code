#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# 2021-2022 by The Foundation for Public Code <info@publiccode.net>

# This script is referenced by .github/workflows/test.yml which executes on
# each pull request.

# As part of reviewing a contribution, reviewers are responsible for checking
# that new links are valid. This script is intended to aid in that process.
# Rather than checking all links with an incoming contribution, only the links
# added by that contribution should be checked.

NOT_OK_COUNT=0
SKIP_PATTERNS=(
	'github\.com/.*/edit' # links may not exist yet
	'twitter\.com' # twitter is broken
	'http://127.0.0.1' # local host
	'http://localhost' # local host
)

if [ "_${VERBOSE}_" == "__" ]; then VERBOSE=0; fi

for URL in $(git diff develop |
		grep '^+' |
		grep -Eo '(http|https)://[^ )"><]+'); do
	SKIP_URL=0
	for PATTERN in "${SKIP_PATTERNS[@]}"; do
		if echo "$URL" | grep --quiet --extended-regexp "$PATTERN"
		then
			if [ $VERBOSE -gt 0 ]; then
				echo "'$URL' matches '$PATTERN'"
			fi
			SKIP_URL=1
		fi
	done
	if [ $SKIP_URL -eq 1 ]
	then
		if [ $VERBOSE -gt 0 ]; then
			echo "(ignoring '$URL')"
		fi
	elif curl --fail --show-error --silent --head --location $URL \
		> url_head 2>&1
	then
		if [ $VERBOSE -gt 0 ]
		then
			echo "$URL"
			head -n1 url_head
		fi
	else
		let "NOT_OK_COUNT+=1"
		echo $URL
		head -n1 url_head
	fi
	rm -f url_head
done

if [ $NOT_OK_COUNT -gt 0 ]; then
	echo "FAIL: $NOT_OK_COUNT new URLs were not OK"
	EXIT_FAILURE=1
	exit $EXIT_FAILURE
fi
