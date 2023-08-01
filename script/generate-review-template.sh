#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

TEMPLATE=docs/review-template.html
THIS_YEAR=$(date +%Y)
STANDARD_VERSION="${1}"
if [ "_${STANDARD_VERSION}_" == "__" ]; then
	STANDARD_VERSION=$( script/git-repo-version.sh )
fi
cat << EOF > $TEMPLATE
<!DOCTYPE html>
<html lang="en" dir="ltr">
<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2022-$THIS_YEAR by The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->
<head>
<meta charset="UTF-8">
<title>________ and the Standard for Public Code</title>
<style>
html, body {
font-family: Mulish;
font-size: 11pt;
}
h1, h2 {
font-weight: normal;
position: relative;
}
h1 {
margin-top: 0;
font-size: 1.5cm;
border-bottom: none;
}
h2 {
font-size: 1.5em;
}
@media print {
a {
color: #111;
text-decoration: none;
}
th {
font-weight: 600;
}
td {
padding: 6px 13px;
border: 1px solid #dfe2e5;
}
tr {
background-color: #fff;
border-top: 1px solid #c6cbd1;
}
tr:nth-child(2n) {
background-color: #f6f8fa;
}
}
</style>
</head>
<body>
<h1>________ and the Standard for Public Code version <span class="standard-version">${STANDARD_VERSION}</span></h1>

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
	CRITERION_TITLE=$(grep '^# [A-Z]' $FILE \
		| grep --invert-match 'SPDX' \
		| cut --fields=2- --delimiter=' ')
	CRITERION_LINK=https://standard.publiccode.net/criteria/${FILE_BASE}.html
	cat << EOF >> $TEMPLATE

<h2><a href="$CRITERION_LINK">$CRITERION_TITLE</a></h2>

&#9744;<!-- &#9745; --> criterion met.

<table id="$FILE_BASE" style="width:100%">
<tr><th>Meets</th><th>Requirement</th><th style="width:25%">Notes and links</th></tr>
EOF
	# awk will process each line of file
	# set 'p' to 1 if we are in the "## Requirements" section, or skip line
	# set 's' to be all the words except the leading "*" of requirement
	# if not a blank line, print 's' and the column pipe delimiters
	awk 'BEGIN {p=0}; /## Requirements/ {p=1 ; next}; /##/ {p=0 ; next}; \
		p { s = ""; for (i = 2; i <= NF; i++) s = s $i " "; \
		if (length(s) > 0) print \
		"<tr>\n<td>\n\n</td>\n<td>\n" \
		s \
		"\n</td>\n<td>\n\n</td>\n</tr>\n"}' \
		$FILE >> $TEMPLATE
	echo "</table>" >> $TEMPLATE
done
echo "</body>" >> $TEMPLATE
echo "</html>" >> $TEMPLATE

# remove trailing spaces at end of line
sed -i -e's/\s\+$//g' $TEMPLATE

# unlink glossary local links in requirement lines
sed -i -e's@\[\([^]]*\)\](../glossary.md\(#[a-z\-]*\))@\1@g' $TEMPLATE

# fully qualify local criteria links in requirement lines
# by looking for links lacking a colon
sed -i -e's@\[\([^]]*\)\](\([^:)]*\).md)@[\1](https://standard.publiccode.net/criteria/\2.html)@g' $TEMPLATE

# convert markdown links to html links
sed -i -e's@\[\([^]]*\)\](\([^)]*\))@<a href="\2">\1</a>@g' $TEMPLATE

ls -l $TEMPLATE
