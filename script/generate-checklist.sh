#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

TEMPLATE=docs/checklist.html
THIS_YEAR=$(date +%Y)
STANDARD_VERSION="${1}"
if [ "_${STANDARD_VERSION}_" == "__" ]; then
	STANDARD_VERSION=$( script/git-repo-version.sh )
fi
cat << EOF > $TEMPLATE
<!DOCTYPE html>
<html lang="en" dir="ltr">
<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2023-$THIS_YEAR by The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->
<head>
<meta charset="UTF-8">
<title>Standard for Public Code Checklist</title>
<style>
html, body {
font-family: Mulish;
font-size: 8.5pt;
}
h1, h2 {
font-weight: normal;
position: relative;
}
h1 {
margin-top: 0;
font-size: 0.5cm;
border-bottom: none;
}
h2 {
font-size: 1.0em;
}
ul {
list-style-type: "\2610";
}
@media print {
  @page {
    size: 14.8cm 21.0cm;
    margin: 0.5cm 0.2cm;
  }
}
</style>
</head>
<body>
<h1>Standard for Public Code version <span class="standard-version">${STANDARD_VERSION}</span> checklist</h1>
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

<h2>&#9744; $CRITERION_TITLE</h2>

<ul id="$FILE_BASE">
EOF
	# awk will process each line of file
	# set 'p' to 1 if we are in the "## Requirements" section, or skip line
	# set 's' to be all the words except the leading "*" of requirement
	# if not a blank line, print 's' and the column pipe delimiters
	awk 'BEGIN {p=0}; /## Requirements/ {p=1 ; next}; /##/ {p=0 ; next}; \
		p { s = ""; for (i = 2; i <= NF; i++) s = s $i " "; \
		if (length(s) > 0) print \
		"<li>&nbsp;" s "</li>"}' \
		$FILE >> $TEMPLATE
	echo "</ul>" >> $TEMPLATE
done
echo "</body>" >> $TEMPLATE
echo "</html>" >> $TEMPLATE

# remove trailing spaces at end of line
sed -i -e's/\s\+$//g' $TEMPLATE

# remove markdown links
sed -i -e's@\[\([^]]*\)\](\([^)]*\))@\1@g' $TEMPLATE

ls -l $TEMPLATE
