#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2022-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS

function git_list_files() {
		# -r Recurse into sub-trees.
	git ls-tree \
		--full-tree \
		-r \
		--name-only \
		HEAD
}

IGNORE_PATTERN='\.svg\|\.json\|CNAME\|Gemfile\|LICENSE\|jargon.txt'

MISSING=0
for FILE in $(git_list_files | grep --invert-match $IGNORE_PATTERN); do
	if ! grep --quiet SPDX-License-Identifier $FILE; then
		MISSING=$(( 1 + $MISSING ))
		echo $FILE
	fi
done

if [ $MISSING -ne 0 ]; then
	exit 1
fi
