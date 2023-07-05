---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 15
redirect_from:
  - criteria/style
---
# Use a coherent style

Following a consistent and coherent style enables contributors in different environments to work together.
Unifying vocabularies reduces friction in communication between contributors.

## Requirements

* The [codebase](../glossary.md#codebase) MUST use a coding or writing style guide, either the codebase community's own or an existing one referred to in the codebase.
* Contributions SHOULD pass automated tests on style.
* The style guide SHOULD include expectations for inline comments and documentation for non-trivial sections.
* Including expectations for [understandable English](use-plain-english.md) in the style guide is OPTIONAL.

## How to test

* Confirm that contributions are in line with the style guides specified in the documentation.
* Check for the presence of automated tests on style.

## Public policy makers: what you need to do

* Create, follow and continually improve on a style guide for [policy](../glossary.md#policy) and documentation as well as document this in the codebase, for example in the `CONTRIBUTING` or `README`.

## Managers: what you need to do

* Include written language, source, test and policy standards in your organizational definition of quality.

## Developers and designers: what you need to do

If the codebase does not already have engineering guidelines or other contributor guidance, start by adding documentation to the [repository](../glossary.md#repository) describing whatever is being done now, for example in the `CONTRIBUTING` or `README`.
An important purpose of the file is to communicate design preferences, naming conventions, and other aspects machines can't easily check.
Guidance should include what would be expected from [source code](../glossary.md#source-code) contributions in order for them to be merged by the maintainers, including source, tests and documentation.
Continually improve upon and expand this documentation with the aim of evolving this documentation into engineering guidelines.

Additionally:

* Use a linter.
* Add linter configurations to the codebase.

## Further reading

* [Programming style](https://en.wikipedia.org/wiki/Programming_style) on Wikipedia.
