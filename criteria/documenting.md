---
order: 9
---
# Document the code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- written in 2019 - 2022 by The Foundation for Public Code <info@publiccode.net> -->

## Requirements

* All of the functionality of the [codebase](../glossary.md#codebase), policy as well as source, MUST be described in language clearly understandable for those that understand the purpose of the [code](../glossary.md#code).
* The documentation of the codebase MUST contain a description of how to install and run the source code.
* The documentation of the codebase MUST contain examples demonstrating the key functionality.
* The documentation of the codebase SHOULD contain a high level description that is clearly understandable for a wide audience of stakeholders, like the [general public](../glossary.md#general-public) and journalists.
* The documentation of the codebase SHOULD contain a section describing how to install and run a standalone version of the source code, including, if necessary, a test dataset.
* The documentation of the codebase SHOULD contain examples for all functionality.
* The documentation SHOULD describe the key components or modules of the codebase and their relationships, for example as a high level architectural diagram.
* There SHOULD be [continuous integration](../glossary.md#continuous-integration) tests for the quality of the documentation.
* Including examples that make users want to immediately start using the codebase in the documentation of the codebase is OPTIONAL.
* Testing the code by using examples in the documentation is OPTIONAL.

## Why this is important

* Users can start using and contributing more quickly.
* You help people discover the codebase, especially people asking 'is there already code that does something like this'.
* This provides transparency into your organization and processes.

## What this does not do

* Contribute directly to more reusable, portable code (see [Create reusable and portable code](./reusable-and-portable-codebases.md)).

## How to test

* Confirm that other stakeholders, professionals from other public organizations and the general public find the documentation clear and understandable.
* Confirm that the documentation describes how to install and run the source code.
* Confirm that the documentation includes examples of the key functionality.
* Check with members of the general public and journalists if they can understand the high level description.
* Check that the instructions for how to install and run a standalone version of the source code result in a running system.
* Check that all functionality documented contains an example.
* Check that the documentation includes a high level architectural diagram or similar.
* Check that the documentation quality is part of integration testing, for example documentation is generated from code, and links and images are tested.

## Policy makers: what you need to do

* Check in regularly to understand how the non-policy code in the codebase has changed.
* Give feedback on how to make non-policy documentation more clear.

## Management: what you need to do

* Try to use the codebase.
* Make sure you understand both the policy and source code as well as the documentation.

## Developers and designers: what you need to do

* Check in regularly to understand how the non-source code in the codebase has changed.
* Give feedback on how to make non-source documentation more clear.

## Further reading

* [Documentation guide](https://www.writethedocs.org/guide/) by Write the Docs.
