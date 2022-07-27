---
order: 2
---
# Bundle policy and source code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- written in 2019 - 2022 by The Foundation for Public Code <info@publiccode.net> -->

## Requirements

* A codebase MUST include the policy that the source code is based on.
* A codebase MUST include all source code that the policy is based on.
* All policy and source code that the codebase is based on MUST be documented, reusable and portable.
* Policy SHOULD be provided in machine readable and unambiguous formats.
* Continuous integration tests SHOULD validate that the source code and the policy are executed coherently.

## Why this is important

This makes sure access is guaranteed to both the source code and the policy documents to facilitate effective understanding and reuse of, as well as collaboration in, a codebase.
Understanding the context and the policies in that context is paramount for the understanding of what problems a codebase is trying to solve and the way it sets out to solve them.
To be able to evaluate whether to adopt a codebase into a new context, an organization will need to understand what process changes it must choose to make or how to contribute additional configurability to the existing solution in order to adapt it to the new context.

## What this does not do

* Guarantee that a codebase will reflect the bundled policy.
* Make sure packages comply with the local technical infrastructure or legal framework of a given public organization.

## How to test

* Confirm with a civil servant that all policy that the source code is based on is included.
* Confirm with a civil servant that all source code that the policy is based on is included.
* Check if policy can be interpreted by a machine.
* Check the continuous integration tests for coherent execution of source code and policy pass.

## Policy makers: what you need to do

* Collaborate with developers and designers to ensure there is no mismatch between policy code and source code.
* Provide the relevant [policy](https://standard.publiccode.net/glossary.html#policy) texts for inclusion in the repository; if the text is not available in English, also provide an English summary. Be sure to include standards that your organization has chosen to adhere to and any organizational processes which impact the development or the deployment context of the codebase for your organization.
* Provide references and links to texts which support the policies.
* Document policy in formats that are unambiguous and machine-readable such as [Business Process Model and Notation](https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation), [Decision Model and Notation](https://www.omg.org/dmn/) and [Case Management Model Notation](https://www.omg.org/cmmn/).
* Track policy with [the same version control](version-control-and-history.md) and documentation used to track source code.
* Check in regularly to understand how the non-policy code in the codebase has changed and whether it still matches the [intentions of the policy](document-objectives.md).

## Management: what you need to do

* Keep policy makers, developers and designers involved and connected throughout the whole development process.
* Make sure policy makers, developers and designers are working to the same objectives.

## Developers and designers: what you need to do

* Become familiar with and be able to use the process modelling notation that the policy makers in your organization use.
* Work together with policy makers to ensure there is no mismatch between policy code and source code.
* Give feedback on how to make policy documentation more clear.

## Further reading

* [Free online tools for building BPMN, CMMN and DMN diagrams at bmpn.io](https://bpmn.io/) by Camunda.
* [BPMN Quick Guide](https://www.bpmnquickguide.com/view-bpmn-quick-guide/) by Trisotech.
