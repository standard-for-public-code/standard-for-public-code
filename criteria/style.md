---
order: 15
---
# Use a coherent style

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- written in 2019 - 2022 by The Foundation for Public Code <info@publiccode.net> -->

## Requirements

* Contributions MUST adhere to either a coding or writing style guide, either the codebase community's own or an existing one that is advertised in or part of the codebase.
* Contributions SHOULD pass automated tests on style.
* The codebase SHOULD include inline comments and documentation for non-trivial sections.
* The style guide MAY include sections on [understandable English](understandable-english-first.md).

## Why this is important

* Enables contributors in different environments to work together on a unified product.
* Unifying vocabularies reduces friction in communication between contributors.

## What this does not do

* Help contributors write well or effectively explain what they do.

## How to test

* Inspect whether contributions are in line with the style guides specified in the documentation.

## Policy makers: what you need to do

* Create, follow and continually improve on a style guide for policy and documentation as well as document this in the codebase, for example in the `CONTRIBUTING` or `README`.

## Management: what you need to do

* Include written language, source, test and policy standards in your organizational definition of quality.

## Developers and designers: what you need to do

If the codebase does not already have engineering guidelines or other contributor guidance, start by adding documentation to the repository describing whatever is being done now, for example in the `CONTRIBUTING` or `README`.
An important purpose of the file is to communicate design preferences, naming conventions, and other aspects machines can't easily check.
Guidance should include what would be expected from code contributions in order for them to be merged by the maintainers, including source, tests and documentation.
Continually improve upon and expand this documentation as you go with the aim of evolving this documentation into engineering guidelines.

Additionally:

* Use a linter.
* Add linter configurations to the codebase.

## Further reading

* [List of linters](https://github.com/caramelomartins/awesome-linters) by Hugo Martins.
* [Programming style](https://en.wikipedia.org/wiki/Programming_style) on Wikipedia.
