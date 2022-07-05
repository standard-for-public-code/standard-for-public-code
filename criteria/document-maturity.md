---
order: 15
redirect_from:
    - criteria/advertise-maturity
---
# Document codebase maturity

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- written in 2019 - 2022 by The Foundation for Public Code <info@publiccode.net> -->

## Requirements

* A codebase MUST be versioned.
* A codebase that is ready to use MUST only depend on other codebases that are also ready to use.
* A codebase that is not yet ready to use MUST have one of these labels:
  * prototype: to test the look and feel, and to internally prove the concept of the technical possibilities,
  * alpha: to do guided tests with a limited set of users,
  * beta: to open up testing to a larger section of the general public, for example to test if the codebase works at scale,
  * pre-release version: code that is ready to be released but hasn't received formal approval yet.
* A codebase SHOULD contain a log of changes from version to version, for example in the `CHANGELOG`.

## Why this is important

Clearly signalling a codebase's maturity helps others decide whether to reuse, invest in or contribute to it.

## What this does not do

* Guarantee that others will use the code.

## How to test

* The codebase has a strategy for versioning which is documented.
* It is clear where to get the newest version.
* The codebase doesn't depend on any codebases marked with a less mature status.

## Policy makers: what you need to do

* When developing policy, understand that any code developed needs to be tested and improved before it can be put into service.
* Consider versioning policy changes, especially when they trigger new versions of the source code.

## Management: what you need to do

* Make sure that services only rely on codebases of equal or greater maturity than the service. For example, don't use a beta codebase in a production service or a prototype codebase in a beta service.

## Developers and designers: what you need to do

* Add a prominent header to every interface that indicates the maturity level of the code.
* Version all releases.
* Especially in 'rolling release' scenarios, the version may be automatically derived from the version control system metadata (for example by using [git describe](https://git-scm.com/docs/git-describe)).

## Further reading

* [Service Design and Delivery Process](https://www.dta.gov.au/help-and-advice/build-and-improve-services/service-design-and-delivery-process) by the Australian Digital Transformation Agency.
* [Service Manual on Agile Delivery](https://www.gov.uk/service-manual/agile-delivery) by the UK Government Digital Service.
* [Semantic Versioning Specification](https://semver.org/) used by many codebases to label versions.
* [What are the Discovery, Alpha, Beta and Live stages in developing a service? [Video 0'0"59]](https://www.youtube.com/watch?v=_cyI7DMhgYc) by the UK Government Digital Service.
