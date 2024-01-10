#!/bin/bash
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2024 The Foundation for Public Code <info@publiccode.net>

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 1 ]; then
	set -x
fi

CURRENT_BRANCH=$( git branch --show-current )

BAD_NAMES=()
while read FILE_NAME ; do
	# We use grep to identify characters NOT IN
	# the Portable Filename Character Set.
	# Our regex also allows for the slash as a path separator.
	if grep -q '[^-A-Za-z0-9._/]' <( echo "$FILE_NAME" ); then
		BAD_NAMES+=( "$FILE_NAME" )
	fi
# we avoid using a pipe-to-while in order to avoid collecting bad names
# in a subshell (which is not visible to the original shell), and thus
# use this redirection instead:
done < <( git ls-tree -r --name-only $CURRENT_BRANCH )

if [ ${#BAD_NAMES[@]} -eq 0 ]; then
	exit 0
fi

if [ "_${VERBOSE}_" != "__" ] && [ "$VERBOSE" -gt 0 ]; then
	cat <<EOF

Files found with names containing characters outside of the
Portable Filename Character Set:

A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
a b c d e f g h i j k l m n o p q r s t u v w x y z
0 1 2 3 4 5 6 7 8 9 . _ -

See POSIX:
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_282

BAD NAMES:
EOF
fi

for (( i=0; i < ${#BAD_NAMES[@]}; ++i )); do
	echo ${BAD_NAMES[$i]}
done

exit 1
