---
order: 10
---

# Use open standards

## Requirements

* For features of a codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)
* If no existing open standard is available, effort SHOULD be put into developing one
* Standards that are machine testable SHOULD be preferred over those that are not
* Codebases SHOULD include a [publiccode.yml](https://github.com/publiccodenet/publiccode.yml/) metadata description so that they're easily discoverable
* Functionality using features from a non-open standard (one that doesn't meet the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)) MAY be provided if necessary, but only in addition to compliant features.
* All non-compliant standards used MUST be documented clearly in the documentation
* The codebase MAY contain a list of all the standards used with links to where they are available

## Why this is important

* Creates interoperability between systems
* Reduces possible vendor-lock in
* Guarantees access to the knowledge required to reuse and contribute to the codebase

## What this does not do

* Make it understandable how to use the software

## How to test

* Are the standards that are used for all features that offer interoperability with other components and systems freely and publicly available on the internet. Make a list of the standards and add these to the documentation.

## Policy makers: what you need to do

* Prohibit procurement of technology that does not comply with the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)

## Management: what you need to do

* Consider including open standard compliance assessment in code reviews.

## Developers and designers: what you need to do

* Add continuous integration tests for compliance to the standards

## Further reading

* [Open Standard Requirements](https://opensource.org/osr) by the Open Source Initiative 
