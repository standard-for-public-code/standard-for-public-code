---
order: 11
---

# Use open standards

## Requirements

* For features of a codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr).
* If no existing open standard is available, effort SHOULD be put into developing one.
* Standards that are machine testable SHOULD be preferred over those that are not.
* Functionality using features from a standard that is not an open standard MAY be provided if necessary, but only in addition to compliant features.
* All non-compliant standards used MUST be recorded clearly in the documentation.
* The codebase SHOULD contain a list of all the standards used with links to where they are available.

## Why this is important

* Creates interoperability between systems.
* Reduces possible vendor lock-in.
* Guarantees access to the knowledge required to reuse and contribute to the codebase.

## What this does not do

* Make it understandable how to use the software.

## How to test

* The documentation includes a list of the standards.
* The standards used for all features that offer interoperability with other components and systems are freely and publicly available on the internet.

## Policy makers: what you need to do

* Prohibit procurement of technology that does not use open standards.

## Management: what you need to do

* Consider including open standard compliance assessment in code reviews.

## Developers and designers: what you need to do

* Add continuous integration tests for compliance with the standards.
