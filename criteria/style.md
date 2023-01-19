---
order: 15
---
# Use a coherent style

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

## Requirements

* The [codebase](../glossary.md#codebase) MUST use a coding or writing style guide, either the codebase community's own or an existing one referred to in the codebase.
* Contributions SHOULD pass automated tests on style.
* The style guide SHOULD include expectations on inline comments and documentation for non-trivial sections.
* Including expectations on [understandable English](understandable-english-first.md) in the style guide is OPTIONAL.

## Why this is important

* Enables contributors in different environments to work together on a unified product.
* Unifying vocabularies reduces friction in communication between contributors.

## What this does not do

* Help contributors write well or effectively explain what they do.

## How to test

* Confirm that contributions are in line with the style guides specified in the documentation.
* Check for the presence of automated tests on style.

## Policy makers: what you need to do

* Create, follow and continually improve on a style guide for [policy](../glossary.md#policy) and documentation as well as document this in the codebase, for example in the `CONTRIBUTING` or `README`.

## Managers: what you need to do

* Include written language, source, test and policy standards in your organizational definition of quality.

## Developers and designers: what you need to do

If the codebase does not already have engineering guidelines or other contributor guidance, start by adding documentation to the [repository](../glossary.md#repository) describing whatever is being done now, for example in the `CONTRIBUTING` or `README`.
An important purpose of the file is to communicate design preferences, naming conventions, and other aspects machines can't easily check.
Guidance should include what would be expected from [code](../glossary.md#code) contributions in order for them to be merged by the maintainers, including source, tests and documentation.
Continually improve upon and expand this documentation with the aim of evolving this documentation into engineering guidelines.

Additionally:

* Use a linter.
* Add linter configurations to the codebase.

## Further reading

* [List of linters](https://github.com/caramelomartins/awesome-linters) by Hugo Martins.
* [Programming style](https://en.wikipedia.org/wiki/Programming_style) on Wikipedia.
