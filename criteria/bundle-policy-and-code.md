---
order: 2
---

# Bundle policy and source code

## Requirements

* A codebase MUST include the policy that the source code is based on
* A codebase MUST include all source code that the policy is based on
* All policy and source code that the codebase is based on MUST be documented, reusable and portable
* Policy SHOULD be provided in machine readable and unambiguous formats
* Continuous integration tests SHOULD validate that the source code and the policy are executed coherently

## Why this is important

This makes sure access is guaranteed to both the source code and the policy documents to facilitate effective reuse of a codebase.

## What this does not do

* Guarantee that a codebase will reflect the bundled policy
* Make sure packages comply with the local technical infrastructure or legal framework of a given public organization

## How to test

* Policy is provided in machine readable and unambiguous formats
* Continuous integration tests validate that the source code and policy are executed coherently

## Policy makers: what you need to do

* Collaborate with developers and designers to ensure there is no mismatch between policy code and source code
* Document policy in formats that are unambiguous and machine readable such as [Business Process Model and Notation](http://www.bpmn.org/), [Decision Model and Notation](https://www.omg.org/dmn/) and [Case Management Model Notation](https://www.omg.org/cmmn/)
* Track policy with the same version control and documentation used to track source code
* Try to periodically understand what the non-policy code in the codebase does

## Management: what you need to do

* Keep policy makers, developers and designers involved and connected throughout the whole development process
* Make sure policy makers, developers and designers are working to the same objectives

## Developers and designers: what you need to do

* Become familiar with and be able to use the process modelling notation that the policy makers in your organization use  
* Work together with policy makers to ensure there is no mismatch between policy code and source code

## Further reading

* [Free online tools for building BPMN, CMMN and DMN diagrams at bmpn.io](https://bpmn.io/) by Camunda
* [BPMN Quick Guide](https://www.bpmnquickguide.com/view-bpmn-quick-guide/) by Trisotech
