#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>

# help set | grep '\-e'
# -e  Exit immediately if a command exits with a non-zero status
set -e

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

# This is GNU sed specific syntax to only update the first match
# "GNU sed also supports some special 2-address forms"
# https://www.man7.org/linux/man-pages/man1/sed.1.html
DATE_PATTERN='[JFMASOND][a-z]\+ [0-9]\+[tsnr][htd] 20[0-9][0-9]'
sed -i -e"0,/$DATE_PATTERN/{s/$DATE_PATTERN:/$TODAYS_DATE:/}" CHANGELOG.md
