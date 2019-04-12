---
order: 2
---

# Bundle policy and source code

## Measure

* A codebase MUST include all the policy that source code is based upon
* A codebase MUST include all source code that the policy is based upon
* All policy and source code that the codebase is based upon MUST be documented, reusable and portable
* Policy SHOULD be provided in machine readable and unambiguous formats
* Continuous integration tests SHOULD validate the source code and the policy are executed coherently

## What this does

* Make sure anyone has access to both the source and civic code necessary to effectively reuse a codebase


## What this doesn’t do

* This process does not guarantee that a codebase will reflect the bundled policy
* Packages will not necessarily comply with local technical infrastructure or legal framework of a given public organization

## How to test

* Policy should be provided in machine readable and unambiguous formats
* Continuous integration tests should validate the source code and the policy are executed coherently

## Policy makers: what you need to do

* Collaborate with developers and designers to ensure there is no mismatch between policy code and source code
* Document policy in formats that are unambiguous and machine readable such as [Business Process Model and Notation](http://www.bpmn.org/), [Decision Model and Notation](https://www.omg.org/dmn/) and [Case Management Model Notation](https://www.omg.org/cmmn/)
* Track policy with the same version control and documentation used to track source code
* Try to periodically understand what the non-policy code in the codebase does

## Management: what you need to do

* Involve policy makers, developers and designers and keep them connected throughout the whole development process
* Make sure policy makers, developers and designers they are working on the same objectives

## Developers and designers: what you need to do

* Developers and designers should become familiar with and be able to use the process modeling notation that the policy makers in your organization use.  
* Developers and designers should work together with policy makers to ensure there is no mismatch between policy code and source code.

## Further reading

* [Free online tools for building BPMN, CMMN and DMN diagrams at bmpn.io](https://bpmn.io/)
* [BPMN Quick Guide](https://www.bpmnquickguide.com/view-bpmn-quick-guide/)

