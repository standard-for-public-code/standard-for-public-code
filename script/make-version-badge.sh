#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>

# $ help set | grep "\-e"
#      -e  Exit immediately if a command exits with a non-zero status.
set -e

if [ "_${VERBOSE}_" == "__" ]; then VERBOSE=0; fi
if [ $VERBOSE -gt 0 ]; then
# $ help set | grep "\-x"
#      -x  Print commands and their arguments as they are executed.
	set -x
fi

VERSION=${1}
if [ "_${VERSION}_" == "__" ]; then
	VERSION=$( script/git-repo-version.sh )
fi

BADGE_LABEL="version"
BADGE_TEXT="$VERSION"
BADGE_COLOR_NAME="yellow"
BADGE_COLOR_CODE=":yellow"
# BADGE_PATH=assets/${BADGE_LABEL}-${BADGE_TEXT}-${BADGE_COLOR_NAME}.svg
BADGE_PATH=assets/version-badge.svg


if ! [ -e ./node_modules/.bin/badge ]; then
	npm install
fi
ls -l ./node_modules/.bin/badge

rm -f $BADGE_PATH
cat > ${BADGE_PATH}.head.svg <<EOF
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net> -->
<!-- version-badge.svg ${VERSION} ${BADGE_COLOR_NAME} -->
EOF

# create the body
./node_modules/.bin/badge \
	"${BADGE_LABEL}" \
	"${BADGE_TEXT}" \
	"${BADGE_COLOR_CODE}" \
	flat \
	> ${BADGE_PATH}.body.svg

# combine the unformatted contents
cat	${BADGE_PATH}.head.svg \
	${BADGE_PATH}.body.svg \
	> ${BADGE_PATH}.tmp.svg

# format for final output
xmllint --format ${BADGE_PATH}.tmp.svg \
	--output ${BADGE_PATH}

rm ${BADGE_PATH}.{tmp,head,body}.svg
ls -l ${BADGE_PATH}
