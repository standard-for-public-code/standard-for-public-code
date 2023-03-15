#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

TEMPLATE=docs/review-template.md
THIS_YEAR=$(date +%Y)
STANDARD_VERSION=$(grep version: _config.yml | cut -f2 -d':' | xargs)
cat << EOF > $TEMPLATE
# &#95;&#95;&#95;&#95;&#95;&#95;&#95;&#95; and the Standard for Public Code version $STANDARD_VERSION

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2022-$THIS_YEAR by The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

Link to commitment to meet the Standard for Public Code:
EOF

# grep criteria files for "order: ", results in entries like:
#   criteria/document-the-code.md:order: 9
# ignoring the index.md
# swap name and order (extract the order number put it ahead of the file name)
# sort numerically
# take only the file name
CRITERIA_FILES=$(grep '^order: ' criteria/*.md \
	| grep --invert-match 'index.md' \
	| sed 's@\(criteria/[a-z\-]*.md\):order:\s*\([0-9]*\).*@\2 \1@g' \
	| sort --numeric-sort \
	| cut --fields=2 --delimiter=' ')

for FILE in $CRITERIA_FILES; do
	# echo $FILE
	FILE_BASE=$(basename --suffix=.md $FILE)
	# Strip the '#' off of the H1
	CRITERIA_TITLE=$(grep '^# [A-Z]' $FILE \
		| grep --invert-match 'SPDX' \
		| cut --fields=2- --delimiter=' ')
	CRITERIA_LINK=https://standard.publiccode.net/criteria/${FILE_BASE}.html
	cat << EOF >> $TEMPLATE

## [$CRITERIA_TITLE]($CRITERIA_LINK)

&#9744; criterion met.

Requirement | meets | &nbsp;links&nbsp;and&nbsp;notes&nbsp;
-----|-----|-----
EOF
	# awk will process each line of file
	# set 'p' to 1 if we are in the "## Requirements" section, or skip line
	# set 's' to be all the words except the leading "*" of requirement
	# if not a blank line, print 's' and the column pipe delimiters
	awk 'BEGIN {p=0}; /## Requirements/ {p=1 ; next}; /##/ {p=0 ; next}; \
		p { s = ""; for (i = 2; i <= NF; i++) s = s $i " "; \
		if (length(s) > 0) print s "|  |"}' $FILE >> $TEMPLATE
done

cp -v $TEMPLATE $TEMPLATE.orig

# unlink glossary local links in requirement lines
sed -i -e's@\[\([^]]*\)\](../glossary.md\(#[a-z\-]*\))@\1@g' $TEMPLATE

# fully qualify local criteria links in requirement lines
# by looking for links lacking a colon
sed -i -e's@\[\([^]]*\)\](\([^:)]*\).md)@[\1](https://standard.publiccode.net/criteria/\2.html)@g' $TEMPLATE

# diff -u $TEMPLATE.orig $TEMPLATE

ls -l $TEMPLATE
