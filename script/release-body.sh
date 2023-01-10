#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022-2023 The Foundation for Public Code <info@publiccode.net>

# Create a 'release.body' file for the text describing a release

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
	set -x
fi

# Set the VERSION variable from git, unless set by the caller
if [ "_${VERSION}_" == "__" ]; then
	GIT_HASH=$( git log -n1 --pretty='%h' )
	GIT_TAG=$( git describe --exact-match --tags "${GIT_HASH}" \
		2>/dev/null \
		| head -n1 )
	if [ "_${GIT_TAG}_" != "__" ]; then
		VERSION="$GIT_TAG"
	else
		VERSION="$GIT_HASH"
	fi
fi

echo "# Standard for Public Code version $VERSION" > release.body

# strip the trailing version info if exists, e.g: '1.2.3-rc2' becomes '1.2.3'
BASE_VERSION=$( echo "$VERSION" | sed 's/^\([0-9]*\.[0-9]*\.[0-9]*\).*/\1/' )

# pull out the top of the CHANGELOG
START=$( grep "##" CHANGELOG.md | head -n1 )

# if the first CHANGELOG entry (START) does not match the BASE_VERSION,
# then print error and exit
if ! grep -q "$BASE_VERSION" <<< "$START"; then
	echo "Start of CHANGELOG.md does not match $BASE_VERSION"
	exit 1
fi

#  add BASE_VERSION notes to release.body
NEXT=$( grep '##' CHANGELOG.md | head -n2 | tail -n1 )
sed -n "/$START/,/$NEXT/p" CHANGELOG.md \
	| grep -v '^##' \
	>> release.body
