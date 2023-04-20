#!/usr/bin/env bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# This script is provided for local development,
# it is not used by continuous integration

# $ help set
#      -e  Exit immediately if a command exits with a non-zero status.
#      -x  Print commands and their arguments as they are executed.
set -x
set -e

./script/find-missing-spdx.sh
./script/test-markdown.sh
./script/spell-check.sh
./script/missing-glossary-links.sh
./script/check-new-links.sh
./script/test-without-link-check.sh
./script/test-with-link-check.sh
