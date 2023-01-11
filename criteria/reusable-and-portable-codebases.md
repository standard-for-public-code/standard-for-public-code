---
order: 3
---
# Create reusable and portable code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

Creating reusable and portable code enables policy makers, developers and designers to reuse what has been developed, to test it, to improve it and contribute those improvements back leading to better quality, cheaper maintenance and higher reliability.
Organizing a codebase such that it is composed of well documented modules improves reusability and maintainability.
Thoughtfully and purposefully designed for reusability, allows for the mission, vision and scope of the codebase to be shared by multiple parties.
Codebases used by multiple parties are more likely to benefit from a self-sustaining community.
A module is easier to reuse in another context if its purpose is clearly documented.
Code which does not rely on the situation-specific infrastructure of any contributor or deployment can be tested by any other contributor.

## Requirements

* The [codebase](../glossary.md#codebase) MUST be developed to be reusable in [different contexts](../glossary.md#different-contexts).
* The codebase MUST be independent from any secret, undisclosed, proprietary or non-open licensed [code](../glossary.md#code) or services for execution and understanding.
* The codebase SHOULD be in use by multiple parties.
* The roadmap SHOULD be influenced by the needs of multiple parties.
* Configuration SHOULD be used to make code adapt to context specific needs.
* The codebase SHOULD be localizable.
* Code and its documentation SHOULD NOT contain situation-specific information.
* Codebase modules SHOULD be documented in such a way as to enable reuse in codebases in other contexts.

## What this does not do

* Get others to use the codebase.
* Build a community.
* Shift responsibility for documentation, support, bug-fixing, etc. to another party.
* Guarantee that modules are generic enough to be reused in any context.

## How to test

* Confirm with someone in a similar role at another organization if they can use the codebase and what that would entail.
* Confirm that the codebase can run without using any proprietary or non open-licensed code or services.
* Check that the codebase is in use by multiple parties or in multiple contexts.
* Check that the codebase files and commit history do not include situation-specific data.

## Policy makers: what you need to do

* Document your [policy](../glossary.md#policy) with enough clarity and detail that it can be understood outside of its original context.
* Make sure your organization is listed as a known user by the codebase.

## Managers: what you need to do

* Make sure that stakeholders and business owners understand that reusability is an explicit codebase goal as this reduces technical debt and provides sustainability for the codebase.

## Developers and designers: what you need to do

Source should be designed:

* for reuse by other users and organizations regardless of locale,
* to solve a general problem instead of a specific one,
* in logically meaningful and isolated modules,
* so that someone in a similar organization facing a similar problem would be able to use (parts of) the solution.

Ensure that the codebase documentation describes the build-time and runtime dependencies.
If your context requires deploying to proprietary platforms or using proprietary components, ensure that collaborators can develop, use, test, and deploy without them.

For each commit, reviewers verify that content does not include situation-specific data such as hostnames, personal and organizational data, or tokens and passwords.

## Further reading

* [Making source code open and reusable](https://www.gov.uk/service-manual/technology/making-source-code-open-and-reusable) by the UK Government Digital Service.
* [Localization vs. Internationalization](https://www.w3.org/International/questions/qa-i18n) by the World Wide Web Consortium.
