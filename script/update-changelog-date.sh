#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>

# help set | grep '\-e\|\-o'
# -e  Exit immediately if a command exits with a non-zero status
# -o option-name
# help set | grep -A2 pipefail
#              pipefail     the return value of a pipeline is the status of
#                           the last command to exit with a non-zero status,
#                           or zero if no command exited with a non-zero status
set -e
set -o pipefail

function num_suffix() {
	case "$1" in
		# teens or numbers ending something other than 1,2,3
		*1[0-9]|*[04-9])
			echo "$1"th
		;;
		# non-teen numbers ending in 1
		*1)
			echo "$1"st
		;;
		# non-teen numbers ending in 2
		*2)
			echo "$1"nd
		;;
		# non-teen numbers ending in 3
		*3)
			echo "$1"rd
		;;
	esac
}

# The date(1) command uses the locale,
# so we set it to C which is always installed
# and is the same as US English in this particular case.
# The formats %e %B %Y are documented in the man page:
# https://www.man7.org/linux/man-pages/man1/date.1.html

TODAYS_DOM=$(LC_ALL=C date +'%e')
TODAYS_DOM_WITH_SUFFIX=$(num_suffix $TODAYS_DOM)
TODAYS_DATE=$(LC_ALL=C date +"%B $TODAYS_DOM_WITH_SUFFIX %Y")

sed -i -e"s/DATE-OF-RELEASE:/${TODAYS_DATE}:/" CHANGELOG.md
