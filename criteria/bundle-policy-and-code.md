---
order: 2
---
# Bundle policy and source code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

## Requirements

* The [codebase](../glossary.md#codebase) MUST include the [policy](../glossary.md#policy) that the source [code](../glossary.md#code) is based on.
* The codebase MUST include all source code that the policy is based on, unless used for fraud detection.
* Policy SHOULD be provided in machine readable and unambiguous formats.
* [Continuous integration](../glossary.md#continuous-integration) tests SHOULD validate that the source code and the policy are executed coherently.

## Why this is important

Access to both the source code and the policy documents is necessary for understanding and reuse of, as well as collaboration in, a codebase.
Understanding the context and the policies in that context is fundamental to understanding what problems a codebase is trying to solve and how it sets out to solve them.
To be able to evaluate whether to adopt a codebase in a new context, an organization will need to understand what process changes it must choose to make or how to contribute additional configurability to the existing solution in order to adapt it to the new context.

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
* Provide the relevant policy texts for inclusion in the [repository](../glossary.md#repository); if the text is not available in English, also provide an English summary. Be sure to include standards that your organization has chosen to adhere to and any organizational processes which impact the development or the deployment context of the codebase for your organization.
* Provide references and links to texts which support the policies.
* Document policy in formats that are unambiguous and machine-readable such as [Business Process Model and Notation](https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation), [Decision Model and Notation](https://en.wikipedia.org/wiki/Decision_Model_and_Notation) and [Case Management Model Notation](https://en.wikipedia.org/wiki/CMMN).
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
