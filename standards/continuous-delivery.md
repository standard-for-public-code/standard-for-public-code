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

## How to test

* There are tests present
* Use code coverage tools check whether coverage is at 100% of the code
* Contributions are only admitted into the codebase after all of the tests are passed

## Policy makers: what you need to do

* Involve management as well as developers and designers as early in the process as possible and keep them engaged throughout development of your policy

## Management: what you need to do

* Make sure to test with real end-users as quickly and often as possible
* Procure consultancy services that deliver small parts very often in stead of large parts at once

## Developers and designers: what you need to do

* Help management and policy makers test their contributions, by for example testing their contributions for broken links or style
* Deploy often

## Further reading

* [What is continuous delivery](https://www.continuousdelivery.com/)
* [UK Government Digital Service handbook: Use continuous delivery](https://gds-way.cloudapps.digital/standards/continuous-delivery.html)
