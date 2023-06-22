---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 11
redirect_from:
  - criteria/open-standards
---
# Use open standards

[Open standards](../glossary.md#open-standard) guarantee access to the knowledge required to use and contribute to the [codebase](../glossary.md#codebase).
They enable interoperability between systems and reduce the risk of vendor lock-in.
Open standards which are unambiguous allow for independent development of either side of data exchange.

## Requirements

* For features of the codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr).
* Any non-open standards used MUST be recorded clearly as such in the documentation.
* Any standard chosen for use within the codebase MUST be listed in the documentation with a link to where it is available.
* Any non-open standards chosen for use within the codebase MUST NOT hinder collaboration and reuse.
* If no existing open standard is available, effort SHOULD be put into developing one.
* Open standards that are machine testable SHOULD be preferred over open standards that are not.
* Non-open standards that are machine testable SHOULD be preferred over non-open standards that are not.

## How to test

* Confirm that data exchange follows an OSI approved open standard.
* Confirm that any non-open standards used are clearly documented as such.
* Confirm that documentation includes a list of the standards followed within the codebase, each with a working link, or a statement that no standards were chosen.

## Public policy makers: what you need to do

* Mandate use of open standards everywhere possible.
* Prohibit procurement of technology that does not use open standards.

## Managers: what you need to do

* Consider including open standard compliance assessment in [source code](../glossary.md#source-code) reviews.

## Developers and designers: what you need to do

* Add [continuous integration](../glossary.md#continuous-integration) tests for compliance with the standards.
* Review the commits and other [repository](../glossary.md#repository) resources for references to standards and cross-check those with the standards listed.

## Further reading

* [Open Standards principles](https://www.gov.uk/government/publications/open-standards-principles/open-standards-principles), [policy](../glossary.md#policy) paper of the UK Cabinet Office.
