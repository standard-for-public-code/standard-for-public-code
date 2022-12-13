#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

echo "printing enviornment:"
echo
env
echo
echo

set -x

if [ "_${RELEASE_NOTES_FILE}_" == "__" ] || [ ! -f "${RELEASE_NOTES_FILE}" ];
then
	if [ "_${GITHUB_REF}_" != "__" ]; then
		TAG=$( echo "${GITHUB_REF}" | sed -e's@refs/tags/@@' )
	else
		# we are running locally or not in a GITHUB environment
		GIT_HASH=$( git log -n1 --pretty='%h' )
		#TODO: not safe for multiple tags
		TAG=$( git describe --exact-match --tags ${GIT_HASH} )
	fi
	if [ "_${TAG}_" != "__" ]; then
		RELEASE_NOTES_FILE=changelog/changelog-${TAG}.md
	fi
fi

if [ "_${RELEASE_NOTES_FILE}_" == "__" ] || [ ! -f "${RELEASE_NOTES_FILE}" ];
then
	RELEASE_NOTES_FILE=changelog/$( ls -1 changelog | sort | tail -n1 )
fi

ln -svf "$RELEASE_NOTES_FILE" release.body
