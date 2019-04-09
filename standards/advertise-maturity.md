---
order: 14
---
# Developing, maturing and maintaining codebases

## Measure

* A codebase MUST be versioned
* A codebase that is ready to use MUST only depend on other codebases that are also ready to use
* A codebase that is not ready to be used MUST be labeled accordingly with whether it is a
    * Prototype: to test the look and feel as well as to proof the concept of the technical possibilities internally
    * Alpha: to do guided tests with a limited set of users
    * Beta: to open up testing to a larger section of the general public to test for instance if the codebase works at scale
    * Pre-release version: ready to be release but not formally having passed all the approval steps
* A codebase SHOULD contain a log of changes from version to version


## What this does

Clearly signifying the maturity of a codebase helps others to decide whether to reuse the project, invest or contribute to it.

## What this doesn’t do

## How to test

* The codebase has a strategy for versioning which is documented
* It is clear where to get the newest version
* The codebase doesn't depend on any codebased marked with a less mature status

## Policy makers: what you need to do

* When developing policy understand the code that will be developed needs to be tested and improved before being able to be put in to service

## Management: what you need to do

* Make sure code that is marked with a different status is never used to provide a service that is not in that state, e.g. using a Beta codebase in a production service or using a Prototype codebase in a Beta service.

## Developers and designers: what you need to do

* Add a prominent header to every interface that indicates the maturity level of the code
* Version all releases

## Further reading

* [Australian Digital Transformation Agency: Service Design and Delivery Process](https://guides.service.gov.au/topics/service-design-delivery-process/)
* [UK Government: Service Manual on Agile Delivery](https://www.gov.uk/service-manual/agile-delivery)
* [UK Government: What are the Discovery, Alpha, Beta and Live stages in developing a service? [Video 0'0"59]](https://www.youtube.com/watch?v=_cyI7DMhgYc)
