---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2022-2024 The Foundation for Public Code <info@publiccode.net>
type: Index
---

# Assessment Update

The commands `git diff` and `patch` can be used to to reduce the effort required to update an existing assessment of a codebase to a newer version of the Standard for Public Code.

## Create the initial patch

From a clone of the [Standard repository](https://github.com/standard-for-public-code/standard-for-public-code/), prepare the patch:

```bash
git diff 0.8.0 0.8.1 docs/review-template.html > review-template-0.8.0-0.8.1.patch
```

## Prepare the patch

The patch lines at the top of the path reflect the template file path:

```diff
--- a/docs/review-template.html
+++ b/docs/review-template.html
```

Edit those lines to match the path to the assessment in the repository you wish to update, for example:

```diff
--- a/path/to/standard-for-public-code-assessment.html
+++ b/path/to/standard-for-public-code-assessment.html
```

## Apply the patch

From a clone of the assessed repository, apply the modified patch:

```bash
patch --forward --strip=1 --input=/path/to/modified-review-template.patch
```

This command should result in exactly one `Hunk #1 FAILED` message for the line containing the name of the repository, and several `Hunk succeeded` messages, one for each line which changed in the criteria text.

If there is more than one `Hunk FAILED` message, the corresponding `.rej` file can be inspected to see what did not apply.

The `git diff` command will show the result of the applied patch.
