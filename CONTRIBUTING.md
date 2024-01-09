# Contributing to this standard

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

🙇‍♀️ Thank you for contributing!

We understand that a standard like this can only be set in collaboration with as many public technologists, policy makers and interested folk as possible.
Thus we appreciate your input, enjoy feedback and welcome improvements to this project and are very open to collaboration.

We love issues and pull requests from everyone.
If you're not comfortable with GitHub, you can email use your feedback at <info@publiccode.net>.

## Problems, suggestions and questions in issues

A high-level overview of the development that we already have sketched out can be seen in the [roadmap](/docs/roadmap.md).
Please help development by reporting problems, suggesting changes and asking questions.
To do this, you can [create a GitHub issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue) for this project in the [GitHub Issues for the Standard for Public Code](https://github.com/publiccodenet/standard/issues).

Or, sign up to the [mailing list](https://lists.publiccode.net/mailman/postorius/lists/standard.lists.publiccode.net/) and send an email to
[standard@lists.publiccode.net](mailto:standard@lists.publiccode.net).

You don't need to change any of our code or documentation to be a contributor!

## Documentation and code in pull requests

If you want to add to the documentation or code of one of our projects you should make a pull request.

If you never used GitHub, get up to speed with [Understanding the GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) or follow one of the great free interactive courses in [GitHub Skills](https://skills.github.com/) on working with GitHub and working with MarkDown, the syntax this project's documentation is in.

This project is licensed Creative Commons Zero v1.0 Universal, which essentially means that the project, along with your contributions is in the public domain in whatever jurisdiction possible, and everyone can do whatever they want with it.

### 1. Make your changes

Contributions should [follow](docs/standard-for-public-code.html) the requirements set out in the criteria of the Standard for Public code itself.
Reviewers will also be ensuring that contributions are aligned with the [values of public code](foreword.md#values-of-public-code).
Furthermore, they will review that the contribution conforms to the [standards](#standards-to-follow) and remains coherent with the overall work.

This project uses the [GitFlow branching model and workflow](https://nvie.com/posts/a-successful-git-branching-model/).
When you've forked this repository, please make sure to create a feature branch following the GitFlow model.

Add your changes in commits [with a message that explains them](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message).
If more than one type of change is needed, group logically related changes into separate commits.
For example, white-space fixes could be a separate commit from text content changes.
When adding new files, select file formats that are easily viewed in a `diff`, for instance, `.svg` is preferable to a binary image.
Document choices or decisions you make in the commit message, this will enable everyone to be informed of your choices in the future.

If you are adding code, make sure you've added and updated the relevant documentation and tests before you submit your pull request.
Make sure to write tests that show the behavior of the newly added or changed code.

#### Applicable policy

Currently, the Standard for Public Code is not implementing any specific public policy.

#### Style

The Standard for Public Code aims to [use plain English](criteria/use-plain-english.md) and we have chosen American English for spelling.
Text content should typically follow one line per sentence, with no line-wrap, in order to make `diff` output easier to view.
However, we want to emphasize that it is more important that you make your contribution than worry about spelling and typography.
We will help you get it right in our review process and we also have a separate quality check before [making a new release](docs/releasing.md).

#### Standards to follow

These are the standards that the Standard for Public Code uses.
Please make sure that your contributions are aligned with them so that they can be merged more easily.

* [IETF RFC 2119](https://tools.ietf.org/html/rfc2119) - for requirement level keywords
* [Web Content Accessibility Guidelines 2.1](https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=315#reading-level) - for readability

### 2. Pull request

When submitting the pull request, please accompany it with a description of the problem you are trying to solve and the issue number that this pull request fixes.
It is preferred for each pull request to address a single issue where possible.
In some cases a single set of changes may address multiple issues, in which case be sure to list all issue numbers fixed.

### 3. Improve

All contributions have to be reviewed by someone.
The Foundation for Public Code has committed to make sure that maintainers are available to review contributions with an aim to provide feedback within two business days.

It could be that your contribution can be merged immediately by a maintainer.
However, usually, a new pull request needs some improvements before it can be merged.
Other contributors (or helper robots) might have feedback.
If this is the case the reviewing maintainer will help you improve your documentation and code.

If your documentation and code have passed human review, it is merged.

### 4. Celebrate

Your ideas, documentation and code have become an integral part of this project.
You are the open source hero we need!

In fact, feel free to open a pull request to add your name to the [`AUTHORS`](AUTHORS.md) file and get eternal attribution.

## Languages and translations

The authoritative language of the Standard for Public Code is English.

Versions in other languages are provided by the community as best-effort.
These courtesy translations may not be up to date with the English version, as missing translations do not block releases.
We invite you to help maintain existing and add new [community translations of the Standard](https://github.com/publiccodenet/community-translations-standard).

## Releases

We have dedicated documentation for creating [new releases](/docs/releasing.md) and [ordering printed standards](/docs/printing.md).

For more information on how to use and contribute to this project, please read the [`README`](README.md).
