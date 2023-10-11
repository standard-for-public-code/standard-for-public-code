# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2021-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# A detailed description of the rules is available at
# https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md

# Lint markdown using the Markdownlint gem with the default ruleset
all
# except for:

# MD007 Unordered list indentation: we allow sub-lists to also have bullets
exclude_rule 'MD007'

# MD013 Line length: we allow long lines
exclude_rule 'MD013'

# MD029 Ordered list item prefix: we allow lists to be sequentially numbered
exclude_rule 'MD029'

# Temporary hack to deal with weasyprint, see commit 831def8c3382
# MD033 Inline HTML: hack in criteria/code-in-the-open.md line 53
exclude_rule 'MD033'

# Hack to deal with no way to exclude liquid code block
# the pipe ("|") in the liquid code is incorrectly identified as a table
# MD055 Table row doesn't begin/end with pipes
# MD057 Table has missing or invalid header separation
exclude_rule 'MD055'
exclude_rule 'MD057'
