---
order: 13
---

# Publish with an open license

## Requirements

* All code and documentation MUST be licensed such that it may be freely reusable, changeable and redistributable.
* Software source code MUST be licensed under an [OSI-approved open source license](https://opensource.org/licenses/category).
* All code MUST be published with a license file.
* Contributors MUST NOT be required to transfer copyright of their contributions to the codebase.
* All source code files in the codebase SHOULD include a copyright notice and a license header that are machine-readable.
* Codebases MAY have multiple licenses for different types of code and documentation.

## Why this is important

* Makes it possible for anyone to see the code and know that they can and how they can reuse it.

## What this does not do

* Prevent use of the code by any specific actors.

## How to test

* There is at least 1 license file present in the codebase, usually called `license`.
* The license for the source code is on the [OSI-approved Open Source license list](https://opensource.org/licenses/category) and the license for documentation is [conformant to the Open Definition](https://opendefinition.org/licenses/).
* Add machine-readable license checking to the codebase continuous integration tests.

## Policy makers: what you need to do

* Develop policy that requires code to be open source.
* Develop policy that disincentivizes non-open source code and technology in procurement.

## Management: what you need to do

* Only work with open source vendors that deliver their code by publishing it under an open source license.
* Beware that even though [Creative Commons licenses](https://creativecommons.org/licenses/) are great for documentation, licenses that stipulate Non-Commercial or No Derivatives are NOT freely reusable, changeable and redistributable and don't fulfill these requirements.

## Developers and designers: what you need to do

* Add a new `license` file to every new codebase created.
* Add a copyright notice and a license header to every new source code file created.

## Further reading

* [Open source definition](https://opensource.org/osd) by the Open Source Initiative, all open source licenses meet this definition.
* [Animated video introduction to Creative Commons](https://creativecommons.org/about/videos/creative-commons-kiwi) by Creative Commons Aotearoa New Zealand.
* [REUSE Initiative specification](https://reuse.software/spec/) by Free Software Foundation Europe for unambiguous, human-readable and machine-readable copyright and licensing information.
* [SPDX License List](https://spdx.org/licenses/) by the Linux foundation with standardized, machine-readable abbreviations for most licenses.
