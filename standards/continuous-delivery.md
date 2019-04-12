---
order: 11
---

# Use continuous delivery

## Measure

* All functionality in the source code MUST have automated tests
* Contributions MUST pass all automated tests before they are admitted into the codebase
* Contributions MUST be small
* Source code test and documentation coverage SHOULD be monitored
* Policy and documentation MAY have testing for consistency with the source and vice-versa
* Policy and documentation MAY have testing for style, broken links

## What this does

* Quickly identify problems with your codebase
* Enable taking risks and focussing on problem solving whilst minimising stress on the contributors
* Lower the barrier for new contributors by reducing the amount of understanding necessary to suggest changes
* Lead to more maintainable code
* Speed up the development cycle

## What this doesn’t do

* Create a fault tolerant infrastructure that will work and scale perfectly
* Create meaningful tests
* Test for real life situations
* Guarantee the code will deliver exactly the same policy result

## How to test

* There are tests present
* Code coverage tools check whether coverage is at 100% of the code
* Contributions are only admitted into the codebase after all of the tests are passed
* Everyone working on the codebase integrates their work at least once a day

## Policy makers: what you need to do

* Involve management as well as developers and designers as early in the process as possible and keep them engaged throughout development of your policy
* Make sure there are also automated tests set up for policy documentation
* Fix policy documentation promptly if it fails a test
* Make sure the code reflects any changes to the policy (see Maintain version control)

## Management: what you need to do

* Make sure to test with real end-users as quickly and often as possible
* Procure consultancy services that deliver small parts very often in stead of large parts at once
* After a large failure, encourage publication of incident reports and public discussion of what was learned

## Developers and designers: what you need to do

* Help management and policy makers test their contributions, by for example testing their contributions for broken links or style
* Deploy often

## Further reading

* [What is continuous delivery](https://www.continuousdelivery.com/)
* [UK Government Digital Service handbook: Use continuous delivery](https://gds-way.cloudapps.digital/standards/continuous-delivery.html)
* [Quality assurance: testing your service regularly](https://www.gov.uk/service-manual/technology/quality-assurance-testing-your-service-regularly) by the Government Digital Service (United Kingdom)
