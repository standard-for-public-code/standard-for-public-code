---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022-2024 The Foundation for Public Code <info@publiccode.net>
type: Index
---

# Assessment Update

## Create the initial patch

From a clone of the [Standard repository](https://github.com/publiccodenet/standard/), prepare the patch:

```
git diff 0.7.0 0.7.1 docs/review-template.html > review-template-0.7.0-0.7.1.patch
```

## Prepare the patch

The patch lines at the top of the path reflect the template file path:

```
--- a/docs/review-template.html
+++ b/docs/review-template.html
```

Edit those lines to match the path to the assessment in the repository you wish to update, for example:

```
--- a/path/to/standard-for-public-code-assessment.html
+++ b/path/to/standard-for-public-code-assessment.html
```

## Apply the patch

From a clone of the assessed repository, apply the modified patch:

```
patch -Np1 -i /path/to/modified-review-template.patch
```

This command should result in exactly one `Hunk #1 FAILED` message for the line containing the name of the repository, and several `Hunk succeeded` messages, one for each line which changed in the criteria text.

If there is more than one `Hunk FAILED` message, the corresponding `.rej` file can be inspected to see what did not apply.

The `git diff` command will show the result of the applied patch.
