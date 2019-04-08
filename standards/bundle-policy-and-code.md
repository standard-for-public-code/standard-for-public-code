---
order: 2
---

# Bundle policy and source code

## Measure

* A Codebase MUST include all the policy that source code is based upon
* A Codebase MUST include all source code that the policy is based upon
* All policy and source code that the codebase is based upon MUST be documented, reusable and portable
* Policy SHOULD be provided in machine readable and unambiguous formats
* Continuous Integration tests SHOULD validate the source code and the policy are executed coherently

## What this does

* Make sure that when a Public Organisation re-uses codebases that they are able to do this effectively since they have access to both the source as well as the civic code necessary

## What this doesn’t do

* This process does not guarantee that a codebase will reflect the bundled policy.  
* Packages will not necessarily comply with local technical infrastructure and/or legal framework of a given public organization.

## How to test

* Policy SHOULD be provided in machine readable and unambiguous formats
* Continuous Integration tests SHOULD validate the source code and the policy are executed coherently

## Policy makers: what you need to do

* Develop Policy in formats that are unambiguous and machine readable such as Business Process Model Notation, Decision Model Notion and Case Management Model Notation
* Collaborate with developers and designers to ensure there is no mismatch between policy code and source code  
* Develop policy with the same version control and documentation mechanisms that are used to develop source code
* Try to periodically understand what the non-policy code in the codebase does

## Management: what you need to do

* Involve policy makers and developers and designers and keep them connected all throughout the development process
* Make sure policy makers and developers and designers they are working on the same objectives

## Developers and designers: what you need to do

* Developers and designers SHOULD become familiar with and be able to use the process modeling notation that the policy makers in your organization use.  
* Developers and designers SHOULD work together with policy makers to ensure there is no mismatch between policy code and source code. 

## Further reading

[Wikipedia: Business Process Model and Notation](https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation)
[BPMN.org](http://www.bpmn.org/)
