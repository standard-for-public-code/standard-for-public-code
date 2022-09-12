#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# Written 2022 by The Foundation for Public Code <info@publiccode.net>

TEMPLATE=docs/review-template.md
THIS_YEAR=$(date +%Y)
STANDARD_VERSION=$(grep version: _config.yml | cut -f2 -d':' | xargs)
cat << EOF > $TEMPLATE
---
type: Resource
---

# [Codebase] and the Standard for Public Code version $STANDARD_VERSION

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- generated $THIS_YEAR by The Foundation for Public Code <info@publiccode.net> -->

Link to commitment to meet the Standard for Public Code:
EOF

# the index.md contains the criteria in order, we shall follow that.
# grep and cuts extract the filename from between the link parenthesis
CRITERIA_FILES=$(cat index.md \
	| grep 'criteria/[a-z\-]\+\.md' \
	| cut --fields=2 --delimiter='(' \
	| cut --fields=1 --delimiter=')')

for FILE in $CRITERIA_FILES; do
	# echo $FILE
	FILE_BASE=$(basename --suffix=.md $FILE)
	# Strip the '#' off of the H1
	CRITERIA_TITLE=$(grep '^# [A-Z]' $FILE \
		| cut --fields=2- --delimiter=' ')
	CRITERIA_LINK=https://standard.publiccode.net/criteria/${FILE_BASE}.html
	cat << EOF >> $TEMPLATE

## [$CRITERIA_TITLE]($CRITERIA_LINK)

- [ ] criterion met.

Requirement | meets | links and notes
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

# strip local links in requirement lines by looking for lines lacking a colon
sed -i -e's/\[\(.*\)\]([^:]*)/\1/g' $TEMPLATE

ls -l $TEMPLATE
