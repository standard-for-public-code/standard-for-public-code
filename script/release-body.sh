#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2022-2024 The Foundation for Public Code <info@publiccode.net>

# Create a 'release.body' file for the text describing a release

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
	set -x
fi

CODEBASE_NAME="Standard for Public Code"
VERSION=$1
if [ "_${VERSION}_" == "__" ]; then
	VERSION=$( script/git-repo-version.sh )
fi
echo "# $CODEBASE_NAME version $VERSION" > release.body

# strip the trailing version info if exists, e.g: '1.2.3-rc2' becomes '1.2.3'
BASE_VERSION=$( echo "$VERSION" | sed 's/^\([0-9]*\.[0-9]*\.[0-9]*\).*/\1/' )

# pull out the top of the RELEASE_NOTES
START=$( grep "##" RELEASE_NOTES.md | head -n1 )

# if the first RELEASE_NOTES entry (START) does not match the BASE_VERSION,
# then print error and exit
if ! grep -q "$BASE_VERSION" <<< "$START"; then
	echo "Start of RELEASE_NOTES.md does not match $BASE_VERSION"
	exit 1
fi

#  add BASE_VERSION notes to release.body
NEXT=$( grep '##' RELEASE_NOTES.md | head -n2 | tail -n1 )
sed -n "/$START/,/$NEXT/p" RELEASE_NOTES.md \
	| grep -v '^##' \
	>> release.body
