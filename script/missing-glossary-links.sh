#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script extracts the glossary terms from glossary.md
# for each file in the criteria directory, it looks for the use of a term
# if the term is found, it checks to see if a link exists
# if no link is found, it prints the TODO list

if [ "_${VERBOSE}_" == "__" ]; then
	VERBOSE=0
fi

if [ $VERBOSE -gt 1 ]; then
	set -x
fi

MISSING=0;

# grep for heading in glossary
# strip the hashes off
# strip off the leading space
# convert space to hyphen
# transform upper case to lower case
GLOSSARY_ANCHORS=$( grep '## ' glossary.md \
	| cut -f3- -d"#" \
	| sed -e 's/^ //g' \
	| sed -e 's/ /-/g' \
	| tr A-Z a-z )

function glossary_pass_list() {
	GLOSSARY_ANCHOR=$1
	FILE=$2

	# "version control" correctly links to the criterion
	# rather than the glossary entry
	if [ "$GLOSSARY_ANCHOR" == "version-control" ] &&
	   [ "$FILE" == "criteria/bundle-policy-and-source-code.md" ]; then
		return 0
	fi
	if [ "$GLOSSARY_ANCHOR" == "version-control" ] &&
	   [ "$FILE" == "criteria/use-continuous-integration.md" ]; then
		return 0
	fi

	# "Open Source Initiative" would be a false positive
	if [ "$GLOSSARY_ANCHOR" == "open-source" ] &&
	   [ "$FILE" == "criteria/use-open-standards.md" ]; then
		return 0
	fi

	# repository inside of a link would be a false positive
	if [ "$GLOSSARY_ANCHOR" == "repository" ] &&
	   [ "$FILE" == "criteria/require-review-of-contributions.md" ]; then
		return 0
	fi

	# link to "bundle policy and source code" is a false positive
	if [ "$GLOSSARY_ANCHOR" == "source-code" ] &&
	   [ "$FILE" == "criteria/document-codebase-objectives.md" ]; then
		return 0
	fi

	return 1
}

for GLOSSARY_ANCHOR in $GLOSSARY_ANCHORS; do
	GLOSSARY_TERM=$(echo $GLOSSARY_ANCHOR | sed -e 's/-/ /g')

	if [ $VERBOSE -gt 0 ]; then
		echo GLOSSARY_ANCHOR: $GLOSSARY_ANCHOR
		echo GLOSSARY_TERM:   $GLOSSARY_TERM
	fi
	if [ "_${GLOSSARY_TERM}_" == "_public code_" ]; then
		GLOSSARY_TERM='Public code\|public code'
		GREP="grep -lr"
	else
		GLOSSARY_TERM="$GLOSSARY_TERM"
		#case insensitive
		GREP="grep -ilr"
	fi
	for FILE in $( $GREP "$GLOSSARY_TERM" criteria/ | grep -v index); do
		if glossary_pass_list "$GLOSSARY_ANCHOR" "$FILE"; then
			continue
		fi

		if grep -q "glossary.md\#$GLOSSARY_ANCHOR" $FILE; then
			if [ $VERBOSE -gt 0 ]; then
				echo Found link $GLOSSARY_ANCHOR $FILE
			fi
		else
			MISSING=$(( $MISSING + 1 ))
			echo to-do: $GLOSSARY_ANCHOR $FILE
		fi
	done
done

if [ $MISSING -gt 0 ]; then
	echo Missing $MISSING links
	exit 1
fi
