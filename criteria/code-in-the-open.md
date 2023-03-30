---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 1
---
# Code in the open

Coding in the open improves transparency, increases [code](../glossary.md#code) quality, makes the code easier to audit, and enables collaboration.
Together, this creates more opportunities for citizens to understand how software and [policy](../glossary.md#policy) impact their interactions with a public organization.

## Requirements

* All source code for any policy in use (unless used for fraud detection) MUST be published and publicly accessible.
* All source code for any software in use (unless used for fraud detection) MUST be published and publicly accessible.
* The codebase MUST NOT contain sensitive information regarding users, their organization or third parties.
* Any source code not currently in use (such as new versions, proposals or older versions) SHOULD be published.
* Documenting which source code or policy underpins any specific interaction the [general public](../glossary.md#general-public) may have with an organization is OPTIONAL.

## How to test

* Confirm that the source for each version currently in use is published on the internet where it can be seen from outside the original contributing organization and without the need for any form of authentication or authorization.
* Confirm that the [codebase](../glossary.md#codebase) files and commit history do not include sensitive information.
* Check for the publication of source code not currently in use.

## Public policy makers: what you need to do

* Develop policies in the open.
* Prioritize open and transparent policies.

## Managers: what you need to do

* Develop a culture that embraces openness, learning and feedback.
* Collaborate with external vendors and freelancers by working in the open.

## Developers and designers: what you need to do

* As a reviewer, for each commit, verify that content does not include sensitive information such as configurations, usernames or passwords, public keys or other real credentials used in production systems.
* Clearly split data and code, in order to meet the requirement about sensitive information above.

<p style="page-break-after: always;" ></p>
## Further reading

* [Coding in the open](https://gds.blog.gov.uk/2012/10/12/coding-in-the-open/) by the UK Government Digital Service.
* [When code should be open or closed](https://www.gov.uk/government/publications/open-source-guidance/when-code-should-be-open-or-closed) by the UK Government Digital Service.
* [Security considerations when coding in the open](https://www.gov.uk/government/publications/open-source-guidance/security-considerations-when-coding-in-the-open) by the UK Government Digital Service.
* [Deploying software regularly](https://www.gov.uk/service-manual/technology/deploying-software-regularly) by the UK Government Digital Service.
* [How GDS uses GitHub](https://gdstechnology.blog.gov.uk/2014/01/27/how-we-use-github/) by the UK Government Digital Service.
