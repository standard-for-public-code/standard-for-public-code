---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS
order: 3
redirect_from:
  - criteria/reusable-and-portable-codebases
  - criteria/create-reusable-and-portable-code
---
# Make the codebase reusable and portable

Creating reusable and portable [code](../glossary.md#code) enables policy makers, developers and designers to reuse what has been developed, test it, improve it and contribute those improvements back, leading to better quality, cheaper maintenance and higher reliability.

Thoughtfully and purposefully designing a [codebase](../glossary.md#codebase) for reusability allows for the mission, vision and scope of the codebase to be shared by multiple parties.
Codebases developed and used by multiple parties are more likely to benefit from a self-sustaining community.

Organizing a codebase such that it is composed of well documented modules improves reusability and maintainability.
A module is easier to reuse in [another context](../glossary.md#different-contexts) if its purpose is clearly documented.

Source code which does not rely on the situation-specific infrastructure of any contributor, vendor or deployment can be tested by any other contributor.

## Requirements

* The codebase MUST be developed to be reusable in different contexts.
* The codebase MUST be independent from any secret, undisclosed, proprietary or non-open licensed software or services for execution and understanding.
* The codebase SHOULD be in use by multiple parties.
* The roadmap SHOULD be influenced by the needs of multiple parties.
* The development of the codebase SHOULD be a collaboration between multiple parties.
* Configuration SHOULD be used to make [source code](../glossary.md#source-code) adapt to context specific needs.
* The codebase SHOULD be localizable.
* Source code and its documentation SHOULD NOT contain situation-specific information.
* Codebase modules SHOULD be documented in such a way as to enable reuse in codebases in other contexts.
* The software SHOULD NOT require services or platforms available from only a single vendor.

## How to test

* Confirm with someone in a similar role at another organization if they can use the codebase and what that would entail.
* Confirm that the codebase can run without using any proprietary or non open-licensed software or services.
* If the codebase is in early development before a production-ready release, then check for evidence of ambition to obtain collaborators.
   * Or if the codebase is very mature and stable with very infrequent fixes, patches, or contributions:
     * Check that the codebase is in use by multiple parties or in multiple contexts.
     * Check for documented and budgeted commitments of collaboration.
   * Otherwise:
     * Check that the codebase is in use by multiple parties or in multiple contexts.
     * Check that the codebase contributors are from multiple parties.
* Check that the codebase files and commit history do not include situation-specific data.
* Check that the software can be deployed and run without services or platforms available from a single vendor.

## Public policy makers: what you need to do

* Document your [policy](../glossary.md#policy) with enough clarity and detail that it can be understood outside of its original context.
* Make sure your organization is listed as a known user by the codebase.
* Identify other organizations for your teams to collaborate with.

## Managers: what you need to do

* Make sure that stakeholders and business owners understand that reusability is an explicit codebase goal, as this improves long-term maintainability and provides sustainability for the codebase.
* Make sure that your teams are collaborating with other teams.

## Developers and designers: what you need to do

Source should be designed:

* for reuse by other users and organizations regardless of locale,
* to solve a general problem instead of a specific one,
* in logically meaningful and isolated modules,
* so that someone in a similar organization facing a similar problem would be able to use (parts of) the solution.

Make sure that the codebase documentation describes the build-time and runtime dependencies.
If your context requires deploying to proprietary platforms or using proprietary components, make sure that collaborators can develop, use, test, and deploy without them.

For each commit, reviewers verify that content does not include situation-specific data such as hostnames, personal and organizational data, or tokens and passwords.

## Further reading

* [Making source code open and reusable](https://www.gov.uk/service-manual/technology/making-source-code-open-and-reusable) by the UK Government Digital Service.
* [Localization vs. Internationalization](https://www.w3.org/International/questions/qa-i18n) by the World Wide Web Consortium.
