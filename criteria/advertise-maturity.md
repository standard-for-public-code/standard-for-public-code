---
order: 14
---
# Pay attention to codebase maturity

## Requirements

* A codebase MUST be versioned
* A codebase that is ready to use MUST only depend on other codebases that are also ready to use
* A codebase that is not yet ready to be used MUST have one of these labels:
    * prototype - to test the look and feel as well as to prove the concept of the technical possibilities internally
    * alpha - to do guided tests with a limited set of users
    * beta - to open up testing to a larger section of the general public, for example  to test if the codebase works at scale
    * pre-release version - code that is ready to be released but hasn't received formal approval yet
* A codebase SHOULD contain a log of changes from version to version

## What this does

Clearly signalling the maturity of a codebase helps others to decide whether to reuse the project, invest or contribute to it.

## What this does not do

* Guarantee that others will use your code.

## How to test

* The codebase has a strategy for versioning which is documented
* It is clear where to get the newest version
* The codebase doesn't depend on any codebases marked with a less mature status

## Policy makers: what you need to do

* When developing policy understand the code that will be developed needs to be tested and improved before being able to be put in to service
* Consider versioning policy changes, especially when they trigger new versions of the source code

## Management: what you need to do

* Make sure code that is marked with a different status is never used to provide a service that is not in that state, e.g. using a beta codebase in a production service or using a prototype codebase in a beta service.

## Developers and designers: what you need to do

* Add a prominent header to every interface that indicates the maturity level of the code
* Version all releases

## Further reading

* [Service Design and Delivery Process](https://guides.service.gov.au/topics/service-design-delivery-process/) by the Australian Digital Transformation Agency
* [Service Manual on Agile Delivery](https://www.gov.uk/service-manual/agile-delivery) by the UK Government Digital Service
* [What are the Discovery, Alpha, Beta and Live stages in developing a service? [Video 0'0"59]](https://www.youtube.com/watch?v=_cyI7DMhgYc) by the UK Government Digital Service
