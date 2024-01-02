---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 13
redirect_from:
  - criteria/open-licenses
---
# Publish with an open license

An open and well known license makes it possible for anyone to see the [source code](../glossary.md#source-code) in order to understand how it works, to use it freely and to contribute to the [codebase](../glossary.md#codebase).
This enables a vendor ecosystem to emerge around the codebase.

Clearly indicating the license for each file within a codebase facilitates correct reuse and attribution of parts of a codebase.

## Requirements

* All source code and documentation MUST be licensed such that it may be freely reusable, changeable and redistributable.
* Software source code MUST be licensed under an [OSI-approved or FSF Free/Libre license](https://spdx.org/licenses/).
* All source code MUST be published with a license file.
* Contributors MUST NOT be required to transfer copyright of their contributions to the codebase.
* All source code files in the codebase SHOULD include a copyright notice and a license header that are machine-readable.
* Having multiple licenses for different types of source code and documentation is OPTIONAL.

## How to test

* Confirm that the codebase is clearly licensed.
* Confirm that the license for the source code is on the [OSI-approved or FSF Free/Libre license list](https://spdx.org/licenses/) and the license for documentation [conforms to the Open Definition](https://opendefinition.org/licenses/).
* Confirm that the licenses used in the codebase are included as files.
* Confirm that contribution guidelines and [repository](../glossary.md#repository) configuration do not require transfer of copyright.
* Check for machine-readable license checking in the codebase [continuous integration](../glossary.md#continuous-integration) tests.

## Public policy makers: what you need to do

* Develop [policy](../glossary.md#policy) that requires source code to be [open source](../glossary.md#open-source).
* Develop policy that disincentivizes non-open source code and technology in procurement.

## Managers: what you need to do

* Only work with open source vendors that deliver their source code by publishing it under an open source license.
* Beware that even though [Creative Commons licenses](https://creativecommons.org/licenses/) are great for documentation, licenses that stipulate Non-Commercial or No Derivatives are NOT freely reusable, changeable and redistributable and don't fulfill these requirements.

## Developers and designers: what you need to do

* Add a new `license` file to every new codebase created.
* Add a copyright notice and a license header to every new source code file created.
* When source code is being reused by the codebase, make sure that it has a license that is compatible with the license or licenses of the codebase.

<p style="page-break-after: always;"></p>
## Further reading

* [Open source definition](https://opensource.org/osd) by the Open Source Initiative, all open source licenses meet this definition.
* [Animated video introduction to Creative Commons](https://creativecommons.org/about/videos/creative-commons-kiwi) by Creative Commons Aotearoa New Zealand.
* [REUSE Initiative specification](https://reuse.software/spec/) by Free Software Foundation Europe for unambiguous, human-readable and machine-readable copyright and licensing information.
* [SPDX License List](https://spdx.org/licenses/) by the Linux Foundation with standardized, machine-readable abbreviations for most licenses.
