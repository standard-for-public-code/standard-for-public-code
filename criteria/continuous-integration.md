---
order: 11
---

# Use continuous integration

## Requirements

* All functionality in the source code MUST have automated tests.
* Contributions MUST pass all automated tests before they are admitted into the codebase.
* Contributions MUST be small.
* The codebase MUST have active contributors.
* Source code test and documentation coverage SHOULD be monitored.
* Policy and documentation MAY have testing for consistency with the source and vice versa.
* Policy and documentation MAY have testing for style and broken links.

## Why this is important

* Using continuous integration:
  * allows you to quickly identify problems with the codebase,
  * enable risk taking and focusing on problem solving while minimising stress on the contributors,
  * lowers barriers for new contributors by reducing the amount of understanding necessary to suggest changes,
  * leads to more maintainable code,
  * speeds up the development cycle.
* Smaller more regular contributions are typically easier to evaluate and lower risk compared to large infrequent changes.
* Projects in active development more reliably provide opportunities for collaboration and feedback.

## What this does not do

* Create a fault tolerant infrastructure that will work and scale perfectly.
* Create meaningful tests.
* Test for real life situations.
* Guarantee the code will deliver exactly the same policy result.

## How to test

* There are tests present.
* Code coverage tools check whether coverage is at 100% of the code.
* Contributions are only admitted into the codebase after all of the tests are passed.
* Everyone working on the codebase integrates their work at least once a day.
* There are contributions from within the last three months.

## Policy makers: what you need to do

* Involve management as well as developers and designers as early in the process as possible and keep them engaged throughout development of your policy.
* Make sure there are also automated tests set up for policy documentation.
* Fix policy documentation promptly if it fails a test.
* Make sure the code reflects any changes to the policy (see [Maintain version control](version-control-and-history.md)).

## Management: what you need to do

* Make sure to test with real end-users as quickly and often as possible.
* Procure consultancy services that deliver small parts very often instead of large parts less frequently.
* After a large failure, encourage publication of incident reports and public discussion of what was learned.

## Developers and designers: what you need to do

* Help management and policy makers test their contributions, by for example testing their contributions for broken links or style.
* Structure code written to handle conditions which are difficult to create in a test environment in such a way that the conditions can be simulated during testing. Forms of resource exhaustion such as running out of storage space and memory allocation failure are typical examples of difficult to create conditions.
* Tune the test code coverage tools to avoid false alarms resulting from inlining or other optimizations.
* Deploy often.

## Further reading

* [What is continuous integration](https://www.martinfowler.com/articles/continuousIntegration.html) by Martin Fowler.
* [What is continuous delivery](https://www.continuousdelivery.com/) by Jez Humble.
* [Use continuous delivery](https://gds-way.cloudapps.digital/standards/continuous-delivery.html) by the UK Government Digital Service.
* [Quality assurance: testing your service regularly](https://www.gov.uk/service-manual/technology/quality-assurance-testing-your-service-regularly) by the Government Digital Service (United Kingdom).
