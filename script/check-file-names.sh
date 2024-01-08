#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2024 The Foundation for Public Code <info@publiccode.net>

CURRENT_BRANCH=$( git branch --show-current )
ALL_FILE_NAMES=$( git ls-tree -r --name-only $CURRENT_BRANCH )

# We use grep to identify characters NOT IN Portable Filename Character Set.
# Our regex also allows for the slash as a path separator.
BAD_NAMES=$(echo "$ALL_FILE_NAMES" | grep '[^-A-Za-z0-9._/]')

if [ "_${BAD_NAMES}_" != "__" ]; then
	if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
		cat <<EOF
Files found with names containing characters outside of the
Portable Filename Character Set:

A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
a b c d e f g h i j k l m n o p q r s t u v w x y z
0 1 2 3 4 5 6 7 8 9 . _ -

See POSIX:
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_282

BAD_NAMES:
EOF
	fi
	echo $BAD_NAMES
	exit 1
fi
