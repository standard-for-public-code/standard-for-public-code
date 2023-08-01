#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script will report the first repository tag, or commit hash if none.
# This script is used by other scripts which require a document version.

GIT_HASH=$( git log -n1 --pretty='%h' )
GIT_TAG=$( git describe --exact-match --tags "${GIT_HASH}" \
	2>/dev/null \
	| head -n1 )
if [ "_${GIT_TAG}_" != "__" ]; then
	echo "$GIT_TAG"
else
	echo "$GIT_HASH"
fi
