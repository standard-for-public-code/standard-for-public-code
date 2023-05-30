# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2023 The Foundation for Public Code <info@publiccode.net>

# help set
#       -e  Exit immediately if a command exits with a non-zero status.
#       -x  Print commands and their arguments as they are executed.
if [ "_${VERBOSE}_" != "__" ] && [ "${VERBOSE}" -gt 0 ]; then
	set -x
fi
set -e


function git_list_files() {
		# -r Recurse into sub-trees.
	git ls-tree \
		--full-tree \
		-r \
		--name-only \
		HEAD
}

IGNORE_PATTERN='\.css$\|\.svg$\|\.json$\|CNAME$\|Gemfile$\|LICENSE$\|\.sh$\|\.gitignore$\|.github.*\|jargon.txt$'

ERRORS=0
for FILE in $(git_list_files | grep --invert-match $IGNORE_PATTERN); do
	name=$(basename -- "$FILE")
	extension="${name##*.}"

	if [ "$extension" == "html" ]; then
		MODE=--mode=html
	elif [ "$extension" == "md" ]; then
		MODE=--mode=markdown
	fi
	WORDS=$( aspell $MODE --master=en \
		--home-dir=.  --personal=jargon.txt \
		list < $FILE )
	if [ $(echo "$WORDS" | wc -w) -gt 0 ]; then
		echo "FAIL: $FILE spell check: $WORDS"
		ERRORS=$(( $ERRORS + 1 ))
	fi
done
if [ $ERRORS -gt 0 ]; then
	exit 1
fi
