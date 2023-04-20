---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 2
redirect_from: 
  - criteria/bundle-policy-and-code
---
# Bundle policy and source code

Access to both source [code](../glossary.md#code) and [policy](../glossary.md#policy) documentation provides building blocks for anyone to implement the codebase in their local context or contribute to the further development of the [codebase](../glossary.md#codebase).

Understanding the domain and policies within that domain is fundamental to understanding what problems a codebase is trying to solve and how it sets out to solve them.

To be able to evaluate whether to implement a codebase in a new context, an organization needs to understand what process changes it must choose to make or how to contribute additional configurability to the existing solution in order to adapt it to the new context.

## Requirements

* The codebase MUST include the policy that the source code is based on.
* If a policy is based on source code, that source code MUST be included in the codebase, unless used for fraud detection.
* Policy SHOULD be provided in machine readable and unambiguous formats.
* [Continuous integration](../glossary.md#continuous-integration) tests SHOULD validate that the source code and the policy are executed coherently.

## How to test

* Confirm with a civil servant that all policy that the source code is based on is included.
* Confirm with a civil servant that all source code that the policy is based on is included.
* Check if policy can be interpreted by a machine.
* Check the continuous integration tests for coherent execution of source code and policy pass.

## Public policy makers: what you need to do

* Collaborate with developers and designers to make sure there is no mismatch between policy code and source code.
* Provide the relevant policy texts for inclusion in the [repository](../glossary.md#repository); if the text is not available in English, also provide an English summary. Be sure to include standards that your organization has chosen to adhere to and any organizational processes which impact the development or the deployment context of the codebase for your organization.
* Provide references and links to texts which support the policies.
* Document policy in formats that are unambiguous and machine-readable such as [Business Process Model and Notation](https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation), [Decision Model and Notation](https://en.wikipedia.org/wiki/Decision_Model_and_Notation) and [Case Management Model Notation](https://en.wikipedia.org/wiki/CMMN).
* Track policy with [the same version control](maintain-version-control.md) and documentation used to track source code.
* Check in regularly to understand how the non-policy code in the codebase has changed and whether it still matches the [intentions of the policy](document-codebase-objectives.md).
* Include relevant policies which impact the community, codebase, and development, including legal obligations like the [General Data Protection Regulation](https://eur-lex.europa.eu/eli/reg/2016/679/oj) or the [EU Web Accessibility Directive](https://ec.europa.eu/digital-single-market/en/web-accessibility), or human rights policies, like a public organization's commitment to equal opportunity.

## Managers: what you need to do

* Keep policy makers, developers and designers involved and connected throughout the whole development process.
* Make sure policy makers, developers and designers are working to the same objectives.

## Developers and designers: what you need to do

* Become familiar with and be able to use the process modelling notation that the policy makers in your organization use.
* Work together with policy makers to make sure there is no mismatch between policy code and source code.
* Give feedback on how to make policy documentation more clear.

## Further reading

* [BPMN Quick Guide](https://www.bpmnquickguide.com/view-bpmn-quick-guide/) by Trisotech.
