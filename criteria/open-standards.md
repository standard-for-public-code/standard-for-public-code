---
order: 11
---

# Use open standards

## Requirements

* For features of a codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr).
* Any non-open standards used MUST be recorded clearly as such in the documentation.
* Any standard chosen for use within the codebase MUST be listed in the documentation with a link to where it is available.
* If no existing open standard is available, effort SHOULD be put into developing one.
* Standards that are machine testable SHOULD be preferred over those that are not.
* Functionality using features from a standard that is not an open standard MAY be provided if necessary, but only in addition to compliant features.

## Why this is important

* Creates interoperability between systems.
* Reduces possible vendor lock-in.
* Guarantees access to the knowledge required to reuse and contribute to the codebase.

## What this does not do

* Make it understandable how to use the software.

## How to test

* The documentation includes a list of the standards followed within the codebase, each with a working link, or a statement that no standards were chosen.
* The standards used for all features that offer interoperability with other components and systems are freely and publicly available on the internet.

## Policy makers: what you need to do

* Mandate use of open standards everywhere possible.
* Prohibit procurement of technology that does not use open standards.

## Management: what you need to do

* Consider including open standard compliance assessment in code reviews.

## Developers and designers: what you need to do

* Add continuous integration tests for compliance with the standards.
* Review the commits and other repository resources for references to standards and cross-check those with the standards listed.

## Further reading

* [Open Standards principles](https://www.gov.uk/government/publications/open-standards-principles/open-standards-principles), policy paper of the UK Cabinet Office.
