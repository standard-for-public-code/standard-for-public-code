---
order: 12
---
# Use continuous integration

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

## Requirements

* All functionality in the source [code](../glossary.md#code) MUST have automated tests.
* Contributions MUST pass all automated tests before they are admitted into the [codebase](../glossary.md#codebase).
* The codebase MUST have guidelines explaining how to structure contributions.
* The codebase MUST have active contributors.
* The codebase guidelines SHOULD state that each contribution should focus on a single issue.
* Source code test and documentation coverage SHOULD be monitored.
* Testing [policy](../glossary.md#policy) and documentation for consistency with the source and vice versa is OPTIONAL.
* Testing policy and documentation for style and broken links is OPTIONAL.
* Testing the code by using examples in the documentation is OPTIONAL.

## Why this is important

* Using [continuous integration](../glossary.md#continuous-integration):
  * allows you to quickly identify problems with the codebase,
  * enables risk taking and focusing on problem solving while minimizing stress for the contributors,
  * lowers barriers for new contributors by reducing the amount of understanding necessary to suggest changes,
  * leads to more maintainable code,
  * speeds up the development cycle.
* Smaller, more regular contributions are typically easier to evaluate and lower risk compared to large infrequent changes.
* Codebases in active development more reliably provide opportunities for collaboration and feedback.

## What this does not do

* Create a fault tolerant infrastructure that will work and scale perfectly.
* Create meaningful tests.
* Test for real life situations.
* Guarantee the code will deliver exactly the same policy result.

## How to test

* Confirm that there are tests present.
* Confirm that code coverage tools check that coverage is at 100% of the code.
* Confirm that contributions are only admitted into the codebase after all of the tests are passed.
* Confirm that contribution guidelines explain how to structure contributions.
* Confirm that there are contributions from within the last three months.
* Check if code coverage data is published.

## Policy makers: what you need to do

* Involve managers as well as developers and designers as early in the process as possible and keep them engaged throughout development of your policy.
* Make sure there are also automated tests set up for policy documentation.
* Fix policy documentation promptly if it fails a test.
* Make sure the code reflects any changes to the policy (see [Maintain version control](version-control-and-history.md)).

## Managers: what you need to do

* Make sure to test with real end users as quickly and often as possible.
* Plan the work to integrate small parts very often instead of large parts less frequently.
* Procure consultancy services that deliver incrementally aligned with the plan.
* After a large failure, encourage publication of incident reports and public discussion of what was learned.

## Developers and designers: what you need to do

* Help managers structure the work plan such that it can be integrated as small increments.
* Help contributors limit the scope of their contributions and feature requests to be as small as reasonable.
* Help managers and policy makers test their contributions, for example by testing their contributions for broken links or style.
* Structure code written to handle conditions which are difficult to create in a test environment in such a way that the conditions can be simulated during testing. Forms of resource exhaustion such as running out of storage space and memory allocation failure are typical examples of difficult to create conditions.
* Tune the test code coverage tools to avoid false alarms resulting from inlining or other optimizations.
* Deploy often.
* Integrate your work at least once a day.

## Further reading

* [What is continuous integration](https://www.martinfowler.com/articles/continuousIntegration.html) by Martin Fowler.
* [Use continuous delivery](https://gds-way.cloudapps.digital/standards/continuous-delivery.html) by the UK Government Digital Service.
* [Quality assurance: testing your service regularly](https://www.gov.uk/service-manual/technology/quality-assurance-testing-your-service-regularly) by the UK Government Digital Service.
