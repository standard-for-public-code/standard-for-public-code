# The Standard for Public Code's compliance to the criteria and requirements of the Standard for Public Code version 0.4.0

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- generated 2022 by The Foundation for Public Code <info@publiccode.net> -->

The Standard for Public Code is not a codebase created in the context of a policy mandate, thus some criteria do not apply directly.

Link to commitment to meet the Standard for Public Code: [CONTRIBUTING.md](../CONTRIBUTING.md#1-make-your-changes)

## [Code in the open](https://standard.publiccode.net/criteria/code-in-the-open.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All source code for any policy in use (unless used for fraud detection) MUST be published and publicly accessible. | N/A | [GitHub repository](https://github.com/publiccodenet/standard/), no official policy at this time
All source code for any software in use (unless used for fraud detection) MUST be published and publicly accessible. | N/A | [GitHub repository](https://github.com/publiccodenet/standard/), not software
Contributors MUST NOT upload sensitive information regarding users, their organization or third parties to the repository. | Ok |
Any source code not currently in use (such as new versions, proposals or older versions) SHOULD be published. | Ok | [GitHub releases](https://github.com/publiccodenet/standard/releases)
Documenting which source code or policy underpins any specific interaction the general public may have with an organization is OPTIONAL. | N/A |

## [Bundle policy and source code](https://standard.publiccode.net/criteria/bundle-policy-and-code.html)

- [ ] criterion met.

Requirement | meets | links and notes
-----|-----|-----
A codebase MUST include the policy that the source code is based on. | N/A |
A codebase MUST include all source code that the policy is based on, unless used for fraud detection. | N/A |
Policy SHOULD be provided in machine readable and unambiguous formats. | N/A |
Continuous integration tests SHOULD validate that the source code and the policy are executed coherently. | N/A |

## [Create reusable and portable code](https://standard.publiccode.net/criteria/reusable-and-portable-codebases.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST be developed to be reusable in different contexts. | Ok |
The codebase MUST be independent from any secret, undisclosed, proprietary or non-open licensed code or services for execution and understanding. | Ok |
The codebase SHOULD be in use by multiple parties. | Ok | [Signalen](https://github.com/Amsterdam/signals/blob/master/docs/CONTRIBUTING.md#under-foundation-for-public-code-incubating-codebase-stewardship), [OpenZaak](https://github.com/open-zaak/open-zaak/blob/main/CONTRIBUTING.md#under-foundation-for-public-code-incubating-codebase-stewardship), [Algoritmeregister](https://github.com/Algoritmeregister/standard#standard-for-public-code-compliance), [Standard for Public Code](https://github.com/publiccodenet/standard/blob/develop/CONTRIBUTING.md#1-make-your-changes)
The roadmap SHOULD be influenced by the needs of multiple parties. | Ok | Community calls influenced initial roadmap
Configuration SHOULD be used to make code adapt to context specific needs. | N/A |
The codebase SHOULD be localizable. | Ok |
Code and its documentation SHOULD NOT contain situation-specific information. | Ok |
Codebase modules SHOULD be documented in such a way as to enable reuse in codebases in other contexts. | N/A |

## [Welcome contributors](https://standard.publiccode.net/criteria/open-to-contributions.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST allow anyone to submit suggestions for changes to the codebase. | Ok |
The codebase MUST include contribution guidelines explaining what kinds of contributions are welcome and how contributors can get involved, for example in a `CONTRIBUTING` file. | Ok | [CONTRIBUTING](https://github.com/publiccodenet/standard/blob/develop/CONTRIBUTING.md)
The codebase MUST document the governance of the codebase, contributions and its community, for example in a `GOVERNANCE` file. | Ok | [GOVERNANCE](https://github.com/publiccodenet/standard/blob/develop/GOVERNANCE.md)
The codebase SHOULD advertise the committed engagement of involved organizations in the development and maintenance. | Ok |
The codebase SHOULD have a publicly available roadmap. | Ok | [Roadmap](https://github.com/publiccodenet/standard/blob/develop/docs/roadmap.md)
The codebase SHOULD publish codebase activity statistics. | Ok | [GitHub Pulse](https://github.com/publiccodenet/standard/pulse)
Including a code of conduct for contributors in the codebase is OPTIONAL. | Ok | [CODE OF CONDUCT](https://github.com/publiccodenet/standard/blob/develop/CODE_OF_CONDUCT.md)

## [Make contributing easy](https://standard.publiccode.net/criteria/make-contributing-easy.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST have a public issue tracker that accepts suggestions from anyone. | Ok | [GitHub Issues](https://github.com/publiccodenet/standard/issues)
The codebase MUST include instructions for how to privately report security issues for responsible disclosure. | N/A |
The documentation MUST link to both the public issue tracker and submitted codebase changes, for example in a `README` file. | Ok | Via GitHub
The codebase MUST have communication channels for users and developers, for example email lists. | Ok | [Mailing list](https://lists.publiccode.net/mailman/postorius/lists/standard.lists.publiccode.net/)
The documentation SHOULD include instructions for how to report potentially security sensitive issues on a closed channel. | N/A |

## [Maintain version control](https://standard.publiccode.net/criteria/version-control-and-history.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The community MUST have a way to maintain version control for the code. | Ok | git
All files in a codebase MUST be version controlled. | Ok |
All decisions MUST be documented in commit messages. | Ok |
Every commit message MUST link to discussions and issues wherever possible. | Ok |
The codebase SHOULD be maintained in a distributed version control system. | Ok | git
Contributors SHOULD group relevant changes in commits. | Ok |
Maintainers SHOULD mark released versions of the codebase, for example using revision tags or textual labels. | Ok | GitHub releases
Contributors SHOULD prefer file formats where the changes within the files can be easily viewed and understood in the version control system. | Ok | (bpmn is an exception)
It is OPTIONAL for contributors to sign their commits and provide an email address, so that future contributors are able to contact past contributors with questions about their work. | Ok |

## [Require review of contributions](https://standard.publiccode.net/criteria/require-review.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All contributions that are accepted or committed to release versions of the codebase MUST be reviewed by another contributor. | Ok |
Reviews MUST include source, policy, tests and documentation. | Ok | policy does not apply
Reviewers MUST provide feedback on all decisions to not accept a contribution. | Ok |
Contributions SHOULD conform to the standards, architecture and decisions set out in the codebase in order to pass review. | Ok |
Reviews SHOULD include running both the code and the tests of the codebase. | Ok | [GitHub Actions](https://github.com/publiccodenet/standard/actions)
Contributions SHOULD be reviewed by someone in a different context than the contributor. | Ok | Usually in the same context, rarely get reviews from other contexts, currently no other contexts regularly available
Version control systems SHOULD NOT accept non-reviewed contributions in release versions. | Ok | the `main` branch is "protected"
Reviews SHOULD happen within two business days. | Ok | very few exceptions
Performing reviews by multiple reviewers is OPTIONAL. | Ok | for larger contributions

## [Document codebase objectives](https://standard.publiccode.net/criteria/document-objectives.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST contain documentation of its objectives, like a mission and goal statement, that is understandable by developers and designers so that they can use or contribute to the codebase. | Ok |
Codebase documentation SHOULD clearly describe the connections between policy objectives and codebase objectives. | N/A |
Documenting the objectives of the codebase for the general public is OPTIONAL. | Ok |

## [Document the code](https://standard.publiccode.net/criteria/documenting.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All of the functionality of the codebase, policy as well as source, MUST be described in language clearly understandable for those that understand the purpose of the code. | Ok |
The documentation of the codebase MUST contain a description of how to install and run the source code. | N/A |
The documentation of the codebase MUST contain examples demonstrating the key functionality. | N/A |
The documentation of the codebase SHOULD contain a high level description that is clearly understandable for a wide audience of stakeholders, like the general public and journalists. | Ok |
The documentation of the codebase SHOULD contain a section describing how to install and run a standalone version of the source code, including, if necessary, a test dataset. | N/A |
The documentation of the codebase SHOULD contain examples for all functionality. | N/A |
The documentation SHOULD describe the key components or modules of the codebase and their relationships, for example as a high level architectural diagram. | N/A |
There SHOULD be continuous integration tests for the quality of the documentation. | Ok | [GitHub Actions](https://github.com/publiccodenet/standard/actions)
Including examples that make users want to immediately start using the codebase in the documentation of the codebase is OPTIONAL. |  | We're not linking to examples
Testing the code by using examples in the documentation is OPTIONAL. | N/A |

## [Use plain English](https://standard.publiccode.net/criteria/understandable-english-first.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All codebase documentation MUST be in English. | Ok |
All code MUST be in English, except where policy is machine interpreted as code. | Ok |
All bundled policy not available in English MUST have an accompanying summary in English. | N/A |
Any translation MUST be up to date with the English version and vice versa. | N/A | Community translations lag
There SHOULD be no acronyms, abbreviations, puns or legal/non-English/domain specific terms in the codebase without an explanation preceding it or a link to an explanation. | Ok |
The name of the codebase SHOULD be descriptive and free from acronyms, abbreviations, puns or organizational branding. | Ok |
Documentation SHOULD aim for a lower secondary education reading level, as recommended by the [Web Content Accessibility Guidelines 2](https://www.w3.org/WAI/WCAG21/quickref/?showtechniques=315#readable). | Ok | [CONTRIBUTING](https://github.com/publiccodenet/standard/blob/develop/CONTRIBUTING.md#style)
Providing a translation of any code, documentation or tests is OPTIONAL. | We have [Community translations](https://publiccodenet.github.io/community-translations-standard/)

## [Use open standards](https://standard.publiccode.net/criteria/open-standards.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
For features of a codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr). | N/A |
Any non-open standards used MUST be recorded clearly as such in the documentation. | N/A |
Any standard chosen for use within the codebase MUST be listed in the documentation with a link to where it is available. | Ok | [CONTRIBUTING](../CONTRIBUTING.md#standards-to-follow)
Any non-open standards chosen for use within the codebase MUST NOT hinder collaboration and reuse. | N/A |
If no existing open standard is available, effort SHOULD be put into developing one. | N/A |
Standards that are machine testable SHOULD be preferred over those that are not. | N/A |

## [Use continuous integration](https://standard.publiccode.net/criteria/continuous-integration.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All functionality in the source code MUST have automated tests. | Ok |
Contributions MUST pass all automated tests before they are admitted into the codebase. | Ok |
The codebase MUST have guidelines explaining how to structure contributions. | Ok |
The codebase MUST have active contributors. | Ok |
The codebase guidelines SHOULD state that each contribution should focus on a single issue. | Ok |
Source code test and documentation coverage SHOULD be monitored. | N/A |
Testing policy and documentation for consistency with the source and vice versa is OPTIONAL. | N/A |
Testing policy and documentation for style and broken links is OPTIONAL. | Ok |

## [Publish with an open license](https://standard.publiccode.net/criteria/open-licenses.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
All code and documentation MUST be licensed such that it may be freely reusable, changeable and redistributable. | Ok | [CC 0](https://github.com/publiccodenet/standard/blob/develop/LICENSE)
Software source code MUST be licensed under an [OSI-approved or FSF Free/Libre license](https://spdx.org/licenses/). | Ok | CC 0
All code MUST be published with a license file. | Ok | CC 0
Contributors MUST NOT be required to transfer copyright of their contributions to the codebase. | Ok |
All source code files in the codebase SHOULD include a copyright notice and a license header that are machine-readable. | Ok |
Having multiple licenses for different types of code and documentation is OPTIONAL. | Ok | CC0

## [Make the codebase findable](https://standard.publiccode.net/criteria/findability.html)

- [ ] criterion met.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST be findable using a search engine by describing the problem it solves in natural language. |  |
The codebase MUST be findable using a search engine by codebase name. | Ok |
Maintainers SHOULD submit the codebase to relevant software catalogs. | Ok | In the [DPG registry](https://digitalpublicgoods.net/registry/standard-for-public-code.html)
The codebase SHOULD have a website which describes the problem the codebase solves using the preferred jargon of different potential users of the codebase (including technologists, policy experts and managers). | Ok |
The codebase SHOULD have a unique and persistent identifier where the entry mentions the major contributors, repository location and website. | Ok | [Q68006929](https://www.wikidata.org/wiki/Q68006929) on Wikidata
The codebase SHOULD include a machine-readable metadata description, for example in a [publiccode.yml](https://github.com/publiccodeyml/publiccode.yml) file. |  |
A dedicated domain name for the codebase is OPTIONAL. | Ok |
Regular presentations at conferences by the community are OPTIONAL. | Ok |

## [Use a coherent style](https://standard.publiccode.net/criteria/style.html)

- [x] criterion met.

Requirement | meets | links and notes
-----|-----|-----
Contributions MUST adhere to either a coding or writing style guide, either the codebase community's own or an existing one that is advertised in or part of the codebase. | Ok |
Contributions SHOULD pass automated tests on style. | Ok |
The codebase SHOULD include inline comments and documentation for non-trivial sections. | N/A | maybe some of the Jekyll could apply
Including sections on [understandable English](https://standard.publiccode.net/criteria/understandable-english-first.html) in the style guide is OPTIONAL. | Ok |

## [Document codebase maturity](https://standard.publiccode.net/criteria/document-maturity.html)

- [ ] criterion met.

Requirement | meets | links and notes
-----|-----|-----
A codebase MUST be versioned. | Ok |
A codebase that is ready to use MUST only depend on other codebases that are also ready to use. | Ok |
A codebase that is not yet ready to use MUST have one of the labels: prototype, alpha, beta or pre-release version. |  | labled as "draft", consider adding "beta" label?
A codebase SHOULD contain a log of changes from version to version, for example in the `CHANGELOG`. | Ok | [CHANGELOG](https://github.com/publiccodenet/standard/blob/develop/CHANGELOG.md)
