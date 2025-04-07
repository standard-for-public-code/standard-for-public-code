#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2022-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS

# halt on error
set -e

# On Ubuntu (and Debian-like systems), fc-cache is in the fontconfig package
# sudo apt-get install -y fontconfig

FONT_NAME=Mulish
FONT_URL="https://fonts.google.com/download?family=$FONT_NAME"
FONT_DIR="${HOME}/.local/share/fonts"
FONT_ZIP="/tmp/${FONT_NAME}.zip"

if grep "$FONT_NAME" <<< "$(fc-match $FONT_NAME)"; then
	echo "$FONT_NAME is installed"
	exit 0;
fi
echo "installing $FONT_NAME from $FONT_URL"

rm -fv "$FONT_ZIP"
curl --output "$FONT_ZIP" "$FONT_URL"
mkdir -pv "$FONT_DIR"
cd "$FONT_DIR"
unzip -o -d . "$FONT_ZIP"
rm -fv "$FONT_ZIP"
fc-cache -fv
fc-match "$FONT_NAME"
