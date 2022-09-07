# The Standard for Public Code's compliance to the criteria and requirements of the Standard for Public Code version 0.3.0

The Standard for Public Code is not a codebase created in the context of a policy mandate, thus some criteria do not apply directly.

Link to commitment to meet the Standard for Public Code: [CONTRIBUTING.md](../CONTRIBUTING.md#1-make-your-changes)

## [Code in the Open](https://standard.publiccode.net/criteria/code-in-the-open.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All source code for any policy and software in use (unless used for fraud detection) MUST be published and publicly accessible. | Ok | [GitHub repository](https://github.com/publiccodenet/standard/) , no official policy at this time
Contributors MUST NOT upload sensitive information | Ok |
Any source code not currently in use (such as new versions, proposals or older versions) SHOULD be published. | Ok | [GitHub releases](https://github.com/publiccodenet/standard/releases)
The source code MAY provide the general public with insight into which source code or policy underpins any specific interaction they have with an organization. | N/A |

## [Bundle policy and source code](https://standard.publiccode.net/criteria/bundle-policy-and-code.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
A codebase MUST include the policy that the source code is based on. | N/A |
A codebase MUST include all source code that the policy is based on. | N/A |
All policy and source code that the codebase is based on MUST be documented, reusable and portable. | N/A |
Policy SHOULD be provided in machine readable and unambiguous formats. | N/A |
Continuous integration tests SHOULD validate that the source code and the policy are executed coherently. | N/A |

## [Create reusable and portable code](https://standard.publiccode.net/criteria/reusable-and-portable-codebases.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST be developed to be reusable in different contexts. | Ok |
The codebase MUST be independent from any secret, undisclosed, proprietary or non-open licensed code or services for execution and understanding. | Ok |
The codebase SHOULD be in use by multiple parties. | maybe? | Codebases are exploring, but we can not point to committed engagement; contributors are not yet using the Standard in their own orgs
The roadmap SHOULD be influenced by the needs of multiple parties. | Ok | Community calls influenced initial roadmap
Configuration SHOULD be used to make code adapt to context specific needs. | N/A |
The codebase SHOULD be localizable. |  | Images not yet easily localizable
The codebase SHOULD include a machine-readable metadata description, for example in a [publiccode.yml](https://github.com/publiccodeyml/publiccode.yml) file. |  |
Code and its documentation SHOULD NOT contain situation-specific information. | Ok |

## [Welcome contributors](https://standard.publiccode.net/criteria/open-to-contributions.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST allow anyone to submit suggestions for changes to the codebase. | Ok |
The codebase MUST include contribution guidelines explaining what kinds of contributions are welcome and how contributors can get involved, for example in a CONTRIBUTING file. | Ok | [CONTRIBUTING](https://github.com/publiccodenet/standard/blob/develop/CONTRIBUTING.md)
The codebase MUST document the governance of the codebase, contributions and its community, for example in a GOVERNANCE file. | Ok | [GOVERNANCE](https://github.com/publiccodenet/standard/blob/develop/GOVERNANCE.md)
The codebase SHOULD advertise the committed engagement of involved organizations in the development and maintenance. | maybe? | Are we clear enough in expressing that the Foundation is the only committed, engaged organization?
The codebase SHOULD have a publicly available roadmap. | Ok | [Roadmap](https://github.com/publiccodenet/standard/blob/develop/docs/roadmap.md)
The codebase MAY include a code of conduct for contributors. | Ok | [CODE OF CONDUCT](https://github.com/publiccodenet/standard/blob/develop/CODE_OF_CONDUCT.md)

## [Make contributing easy](https://standard.publiccode.net/criteria/make-contributing-easy.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST have a public issue tracker that accepts suggestions from anyone. | Ok | [GitHub Issues](https://github.com/publiccodenet/standard/issues)
The codebase MUST include instructions for how to privately report security issues for responsible disclosure. |  |
The documentation MUST link to both the public issue tracker and submitted codebase changes, for example in a README file. | Ok | Via GitHub
The project MUST have communication channels for users and developers, for example email lists. | Ok | [Mailing list](https://lists.publiccode.net/mailman/postorius/lists/standard.lists.publiccode.net/)
The documentation SHOULD include instructions for how to report potentially security sensitive issues on a closed channel. |  |

## [Maintain version control](https://standard.publiccode.net/criteria/version-control-and-history.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
The community MUST have a way to maintain version control for the code. | Ok | git
All files in a codebase MUST be version controlled. | Ok |
All decisions MUST be documented in commit messages. | Ok | could be a bit better, but mostly commits descibe changes or link to issues
Every commit message MUST link to discussions and issues wherever possible. | Ok |
The codebase SHOULD be maintained in a distributed version control system. | Ok | git
Contributors SHOULD group relevant changes in commits. |  | could use an extra sentence in CONTRIBUTING.md, historically mostly good
Maintainers SHOULD mark released versions of the codebase, for example using revision tags or textual labels. | Ok | GitHub releases
Contributors SHOULD prefer file formats where the changes within the files can be easily viewed and understood in the version control system. | Ok | (bpmn is an exception)
Contributors MAY sign their commits and provide an email address, so that future contributors are able to contact past contributors with questions about their work. | Ok |

## [Require review of contributions](https://standard.publiccode.net/criteria/require-review.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All contributions that are accepted or committed to release versions of the codebase MUST be reviewed by another contributor. | Ok |
Reviews MUST include source, policy, tests and documentation. | Ok | policy does not apply
Reviewers MUST provide feedback on all decisions to not accept a contribution. | Ok |
Contributions SHOULD conform to the standards, architecture and decisions set out in the codebase in order to pass review. | Ok |
Reviews SHOULD include running both the code and the tests of the codebase. | Ok | [GitHub Actions](https://github.com/publiccodenet/standard/actions)
Contributions SHOULD be reviewed by someone in a different context than the contributor. |  Ok | Usually in the same context, rarely get reviews from other contexts, currently no other contexts regularly available
Version control systems SHOULD NOT accept non-reviewed contributions in release versions. | Ok | the `main` branch is "protected"
Reviews SHOULD happen within two business days. | Ok | very few exceptions
Reviews MAY be performed by multiple reviewers. | Ok | for larger contributions

## [Document codebase objectives](https://standard.publiccode.net/criteria/document-objectives.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
The codebase MUST contain documentation of its objectives, like a mission and goal statement, that is understandable by developers and designers so that they can use or contribute to the codebase. | Ok |
Codebase documentation SHOULD clearly describe the connections between policy objectives and codebase objectives. | N/A |
The codebase MAY contain documentation of its objectives for the general public. | Ok |

## [Document the code](https://standard.publiccode.net/criteria/documenting.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All of the functionality of the codebase, policy as well as source, MUST be described in language clearly understandable for those that understand the purpose of the code. | Ok |
The documentation of the codebase MUST contain: a description of how to install and run the source code, examples demonstrating the key functionality. | N/A |
The documentation of the codebase SHOULD contain: a high level description that is clearly understandable for a wide audience of stakeholders, like the general public and journalists, a section describing how to install and run a standalone version of the source code, including, if necessary, a test dataset, examples for all functionality. | Ok |
There SHOULD be continuous integration tests for the quality of the documentation. | Ok |
The documentation of the codebase MAY contain examples that make users want to immediately start using the codebase. |  | We're not linking to examples
The code MAY be tested by using examples in the documentation. | N/A |

## [Use plain English](https://standard.publiccode.net/criteria/understandable-english-first.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All codebase documentation MUST be in English. | Ok |
All code MUST be in English, except where policy is machine interpreted as code. | Ok |
All bundled policy not available in English MUST have an accompanying summary in English. | N/A |
Any translation MUST be up to date with the English version and vice versa. | N/A | Community translations lag
There SHOULD be no acronyms, abbreviations, puns or legal/non-English/domain specific terms in the codebase without an explanation preceding it or a link to an explanation. | Ok |
The name of the codebase SHOULD be descriptive and free from acronyms, abbreviations, puns or organizational branding. | Ok |
Documentation SHOULD aim for a lower secondary education reading level, as recommended by the [Web Content Accessibility Guidelines 2](https://www.w3.org/WAI/WCAG21/quickref/?showtechniques=315#readable). | Ok |
Any code, documentation or tests MAY have a translation. |  | We have [Community translations](https://publiccodenet.github.io/community-translations-standard/)

## [Use open standards](https://standard.publiccode.net/criteria/open-standards.html)

- [x] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
For features of a codebase that facilitate the exchange of data the codebase MUST use an open standard that meets the Open Source Initiative Open Standard Requirements. | N/A |
If no existing open standard is available, effort SHOULD be put into developing one. | N/A |
Standards that are machine testable SHOULD be preferred over those that are not. | N/A |
Functionality using features from a non-open standard (one that doesn’t meet the Open Source  Initiative Open Standard Requirements) MAY be provided if necessary, but only in addition to compliant features. | N/A |
All non-compliant standards used MUST be recorded clearly in the documentation. | N/A |
The codebase SHOULD contain a list of all the standards used with links to where they are available. | Ok | RFC2119 is referenced in the reader's guide, would be good to add that to CONTRIBUTING

## [Use continuous integration](https://standard.publiccode.net/criteria/continuous-integration.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All functionality in the source code MUST have automated tests. | Ok |
Contributions MUST pass all automated tests before they are admitted into the codebase. | Ok |
The codebase MUST have guidelines explaining how to structure contributions. |  | room to improve
The codebase MUST have active contributors. | Ok |
The codebase guidelines SHOULD state that each contribution should focus on a single issue. |  | Should add to CONTRIBUTING
Source code test and documentation coverage SHOULD be monitored. | N/A |
Policy and documentation MAY have testing for consistency with the source and vice versa. | N/A |
Policy and documentation MAY have testing for style and broken links. | Ok |

## [Publish with an open license](https://standard.publiccode.net/criteria/open-licenses.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
All code and documentation MUST be licensed such that it may be freely reusable, changeable and redistributable. | Ok | [CC 0](https://github.com/publiccodenet/standard/blob/develop/LICENSE.md)
Software source code MUST be licensed under an [OSI-approved open source license](https://opensource.org/licenses/category). |  | CC 0
All code MUST be published with a license file. | Ok | [License](https://github.com/publiccodenet/standard/blob/develop/LICENSE.md)
Contributors MUST NOT be required to transfer copyright of their contributions to the codebase. | Ok |
All source code files in the codebase SHOULD include a copyright notice and a license header that are machine-readable. |  | merged to develop, not yet merged to main and released
Codebases MAY have multiple licenses for different types of code and documentation. | Ok | CC0, current Code of Conduct is CC BY-SA (but is proposed to change to a CC 0 one)

## [Use a coherent style](https://standard.publiccode.net/criteria/style.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
Contributions MUST adhere to either a coding or writing style guide, either the codebase community’s own or an existing one that is advertised in or part of the codebase. |  | Some guidance, could be made clearer in the CONTRIBUTING
Contributions SHOULD pass automated tests on style. | Ok |
The codebase SHOULD include inline comments and documentation for non-trivial sections. | N/A | maybe some of the jekyll could apply
The style guide MAY include sections on understandable English. | Ok |

## [Document codebase maturity](https://standard.publiccode.net/criteria/document-maturity.html)

- [ ] compliant with this criterion.

Requirement | meets | links and notes
-----|-----|-----
A codebase MUST be versioned. | Ok |
A codebase that is ready to use MUST only depend on other codebases that are also ready to use. | Ok |
A codebase that is not yet ready to use MUST have one of these labels: prototype: to test the look and feel, and to internally prove the concept of the technical possibilities, alpha: to do guided tests with a limited set of users, beta: to open up testing to a larger section of the general public, for example to test if the codebase works at scale, pre-release version: code that is ready to be released but hasn’t received formal approval yet. |  | labled as "draft", consider adding "beta" label?
A codebase SHOULD contain a log of changes from version to version, for example in the CHANGELOG. | Ok | [CHANGELOG](https://github.com/publiccodenet/standard/blob/develop/CHANGELOG.md)
