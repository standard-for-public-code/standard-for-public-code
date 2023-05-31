---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
---
# Version history

<!-- script/release-body.sh expects VERSION in the first second-level header -->

## Version 0.7.0

May 31st 2023: 📑 the fifteenth draft adds new requirements for documenting review funding and clarifies review process requirement.

* Add requirement to document who is expected to cover the cost of reviewing contributions.
* Add requirement to have a short description of the codebase.
* Change the focus of contributions adhering to standards to focus on the review of contributions.
* Relaxed MUST requirements to SHOULD in Make the codebase findable.
* Review template now in HTML format.
* Introduction converted to foreword.
* Improved contributing guidelines.
* Improved documentation of scripts.

## Version 0.6.0

April 20th 2023: 🔀 the fourteenth draft adds new requirements for portability and tests and an introduction to each criterion.

* New requirement in Create reusable and portable code about the development being a collaboration between multiple parties.
* New requirement in Create reusable and portable code about being dependent on a single vendor.
* New requirement in Use continuous integration about publishing results for automated tests.
* Differentiating the two requirements about security to clearly be about providing a method and having documentation about it.
* Rephrased requirements to focus on the codebase rather than contributor behavior.
* Removed the sections Why this is important and What this does not do and replaced with an introduction in each criterion.
* Added general What this does not do section in the introduction of the Standard.
* Added guidance for public policy makers about related policies and license compatibility.
* Added guidance for developers and designers about version controlling files.
* Clarified guidance for developers and designers about prompt responses and search engine optimization.
* Added Further reading about accessibility.
* Aligned criteria URLs with criteria names.
* Improved navigation in the web version.
* Moved tools in Further reading sections to the community implementation guide.
* Moved compliance or certification process to [publiccode.net](https://publiccode.net).
* Change format of the review template to make it easier to update after a new release.
* Improved the text on the landing page and added links to related resources.
* Added spell checker automated test.
* Made minor changes to text for clarity and consistency.
* Moved SPDX headers to yaml header.

## Version 0.5.0

January 25th 2023: 🎨 the thirteenth draft focuses on documenting style guidelines.

* Adjust the coding style requirement to focus on the codebase using a style guide rather than contributor behavior.
* Moved requirement for codebase names to Make the codebase findable from Use plain English.
* Moved requirement about testing the code by using examples to Use continuous integration from Document the code.
* Split requirement about machine testable standards to clarify that open is more important than testable.
* Adjust how to test findability requirements to be less reliant on search engine algorithms.
* Made minor changes to text for clarity and consistency.

## Version 0.4.1

December 5th 2022: 📝 the twelfth draft clarifies document maturity.

* Document maturity focuses on whether or not versions of the codebase are ready to use.
* Document maturity no longer requires specific labels for codebases that are not ready to use.
* Audit flow image now generated from an easier to translate format.
* Improved guidance on How to test.
* Add publiccode.yml file.
* Add review template.
* Consistently link glossary terms.
* Add practices and standards to follow in CONTRIBUTING.
* Add Matti Schneider to Authors.
* Add remaining SPDX headers to files.
* Made additional minor changes to text for clarity.
* Some hyperlinks updated.
* Moved examples to the [Community implementation guide](https://publiccodenet.github.io/community-implementation-guide-standard/).

## Version 0.4.0

September 7th 2022: 🔭 the eleventh draft adds a new findability criterion.

* Introduce new criterion: Make the codebase findable.
* Improve How to test section for most criteria.
* New requirement in Welcome contributors about publishing activity statistics.
* Removed redundant requirement about portable and reusable code.
* Expand open license definition to include both OSI and FSF approved licenses.
* Rephrase MAY requirements to use the keyword OPTIONAL for clarity.
* Expressed intent that the Standard for Public Code should meet its own requirements where applicable and added assessment.
* Add SPDX license identifiers to files.
* Introduced new Code of Conduct.
* Clarify distinction between source code and policy text.
* Restructuring of requirements with bullet point lists.
* Acknowledge the importance of codebase modularity for reuse.
* Move requirements related to Findability to the new criterion.
* Clarify the role of non-open standards when used in a codebase.
* Additional guidance about build-time and runtime dependencies.
* Added roadmap for the development of the Standard for Public Code.
* Update structure of Authors file.
* Add Audrey Tang to Authors.
* Added a list of criteria to the print edition.
* Clarify what the standard means with policymakers, managers, developers and designers.
* Made additional minor changes to text for clarity.
* Some hyperlinks updated.

## Version 0.3.0

May 23rd 2022: 🗎 the tenth draft strengthens documentation and localization.

* Requirement for localization made explicit in Create reusable and portable code.
* Documentation of governance changed from a SHOULD to a MUST.
* Replace the very subjective (and hard to test) "contributions MUST be small" with requirement to document expectation in contributing guidelines and focus on a single issue.
* Community translations now linked in the footer.
* Revert "Replace BPMN svg with Mermaid flowchart".
* Many minor clarifications to language and sentences made more simple.
* Some hyperlinks updated.

## Version 0.2.3

March 15th 2022: 📜 the ninth draft allows English summaries for policy lacking an official translation.

* Relax the criterion Use plain English by adding a new requirement allows bundled policy not available in English to have an accompanying summary in English instead of translating the full text.
* Similarly, allow for English summaries for policies not available in English in Bundle policy and code.
* Clarify that term 'policy' includes processes which impact development and deployment in Bundle policy and code.
* Emphasize reusability also on parts of the solutions in Create reusable and portable code.
* Expand guidance to Developers and designers in Create reusable and portable code about deploying to proprietary platforms.
* Add nuance to use of non-English terms in what management need to do in Use plain English.
* Change the pull request process diagram to use Mermaid instead of BPMN to make [community translations](https://github.com/publiccodenet/community-translations-standard) easier.
* Added Maurice Hendriks to AUTHORS.
* Added OpenApi Specification to further reading.
* Made the attributions in further reading sections clearer.
* Made additional minor changes to text for clarity.

## Version 0.2.2

November 29th 2021: 🏛 the eighth draft recognizes that policy which executes as code may not be in English.

* Document exception to "All code MUST be in English" where policy is interpreted as code.
* Add MAY requirement regarding committer email addresses in Maintain version control.
* Expand guidance to Policy Makers in Bundle policy and code.
* Expand guidance to Developers and designers in Use a coherent style.
* Add "Different contexts" to glossary.
* Add Mauko Quiroga and Charlotte Heikendorf to AUTHORS.
* Add Digital Public Goods approval badge.
* Added "next" and "previous" links to criteria pages of web version.
* Add Open Standards principles to further reading.
* Add Definition of plain language to further reading.
* Move the Semantic Versioning Specification further reading reference.
* Clarify that publiccode.yml is one example of a machine-readable metadata description.
* Changed "your codebase" and "your organization" to be less possessive.
* Made additional minor changes to text for clarity.
* Add instructions for creating a print version.

## Version 0.2.1

March 1st 2021: 🧽 the seventh draft has minor cleaning up after version 0.2.0.

* New SHOULD requirement on using a distributed version control system and why distributed is important.
* Feedback requirements for rejected contributions are more strict than accepted ones.
* Specify that copyright and license notices should also be machine-readable.
* Advice on how to test that notices be machine-readable.
* Clarify guidance for rolling releases.
* Clear up definition of version control in glossary.
* Add further reading encouraging contribution, SPDX, Git and reviewing contributions.
* Add links to videos about the concept of public code.
* Update BPMN link.
* Reduce link duplication.
* Add Alba Roza and Ngô Ngọc Đức Huy to authors.
* Made additional minor changes to text for clarity.

## Version 0.2.0

October 26th 2020: 🎊 the sixth draft splits a requirement and adds clarity.

* Split "Welcome contributions" criterion into "Make contributing easy" and "Welcome contributors".
* Rename criterion "Pay attention to codebase maturity" to "Document codebase maturity".
* Changed MUST to SHOULD for requirement of codebase in use by multiple parties.
* Add MUST NOT requirement regarding copyright assignment.
* Clarify role of configuration in reusable code requirement.
* Glossary additions: continuous integration, policy, repository, and version control.
* Replace references to 'cities' with 'public organizations'.
* Clarify aspects of sensitive code by separating contributor and reviewer requirements into separate items.
* Expand further reading, and guidance to policy makers, developers and designers.
* Add Felix Faassen and Arnout Engelen to authors.
* Made additional minor changes to text for clarity.

## Version 0.1.4

November 27th 2019: 🧹 the fifth draft consists mostly of additional minor fixes.

* Linked License.md file.
* Add Sky Bristol, Marcus Klaas de Vries, and Jan Ainali to authors.
* Made punctuation more consistent, especially for bullet lists.
* Made some minor changes to text for clarity.

## Version 0.1.3

October 8th 2019: 🍂 the fourth draft only patches and fixes minor things for the autumn cleaning

* Renamed continuous delivery to continuous integration.
* Referencing accessibility guidelines in the language standard.
* A bunch of style and consistency fixes.

## Version 0.1.2

August 22th 2019: 🌠 the third draft focuses on better text and takes community input

* With some great new contributors comes a fresh author list.
* All links are now HTTPS.
* General proofreading, wording clarifications, and smashed typos.
* Updated criteria:
  * Requirement for reuse in different contexts
  * Recommendation for explicit versioning
  * Recommendation for multi party development
  * Recommendation for license headers in files
  * Recommendation for vulnerability reporting
  * Recommendation for explicit documentation of governance

## Version 0.1.1

May 9th 2019: 🤔 the second draft fixes a few basic oversights and fixes a lot of typos

* Removed references to the Foundation for Public Code, we're going to have to change the name in becoming an association.
* Updated the introduction.
* Updated the glossary.
* Added the code of conduct.
* We've recommended using the publiccode.yml standard for easier reuse.

## Version 0.1.0

April 16th 2019: 🎉 the first draft is ready, it is all brand new and has snazzy new ideas in it

* 14 criteria with their requirements and how to operationalize them.
* An introduction with a high level background, what this standard is, and how the Foundation for Public Code will use it.

This first version was produced together with the Amsterdam University of Applied Sciences and the City of Amsterdam as a part of the [Smart Cities? Public Code! project](https://smartcities.publiccode.net/).
