---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 16
redirect_from:
    - criteria/advertise-maturity
    - criteria/document-maturity
---
# Document codebase maturity

Clearly signalling a [codebase](../glossary.md#codebase)'s maturity helps others decide whether to use and contribute to it.
A codebase version's maturity includes the maturity of its dependencies.
Understanding how a codebase has evolved is key to understanding the codebase and how to contribute to it.

## Requirements

* The codebase MUST be versioned.
* The codebase MUST prominently document whether or not there are versions of the codebase that are ready to use.
* Codebase versions that are ready to use MUST only depend on versions of other codebases that are also ready to use.
* The codebase SHOULD contain a summary of changes from version to version, for example in the `RELEASE_NOTES`.
* The method for assigning version identifiers SHOULD be documented.
* It is OPTIONAL to use semantic versioning.

## How to test

* Confirm that the codebase has a strategy for versioning which is documented.
* Confirm that it is obvious to policy makers, managers, developers and designers whether the codebase has versions that are ready to use.
* Confirm that ready to use versions of the codebase do not depend on any versions of other codebases that are not ready to use.
* Check that the versioning scheme of the codebase is documented and followed.
* Check that there is a summary of changes.

## Public policy makers: what you need to do

* When developing [policy](../glossary.md#policy), understand that any [source code](../glossary.md#source-code) developed needs to be tested and improved before it can be put into service.
* Consider versioning policy changes, especially when they trigger new versions of the source code.

## Managers: what you need to do

* Make sure that services only rely on versions of codebases of equal or greater maturity than the service. For example, don't use a beta version of a codebase in a production service.

## Developers and designers: what you need to do

* Make sure that the codebase versioning approach is followed for all releases.

## Further reading

* [Semantic Versioning Specification](https://semver.org/) used by many codebases to label versions.
* [Software release life cycle](https://en.wikipedia.org/wiki/Software_release_life_cycle)
* [The Development Status key](https://yml.publiccode.tools/schema.core.html#key-developmentstatus) in the publiccode.yml standard.
* [Service Design and Delivery Process](https://www.dta.gov.au/help-and-advice/build-and-improve-services/service-design-and-delivery-process) by the Australian Digital Transformation Agency.
* [Service Manual on Agile Delivery](https://www.gov.uk/service-manual/agile-delivery) by the UK Government Digital Service.
