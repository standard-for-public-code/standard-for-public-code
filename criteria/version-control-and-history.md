---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 6
---
# Maintain version control

Version control means keeping track of changes to the code over time.
This allows you to maintain structured documentation of the history of the codebase.
This is essential for collaboration at scale, as it enables developers to work on changes in parallel and helps future developers to understand the reasons for changes.

## Requirements

* The community MUST have a way to maintain [version control](../glossary.md#version-control) for the [code](../glossary.md#code).
* All files in the [codebase](../glossary.md#codebase) MUST be version controlled.
* All decisions MUST be documented in commit messages.
* Every commit message MUST link to discussions and issues wherever possible.
* The codebase SHOULD be maintained in a distributed version control system.
* Contributors SHOULD group relevant changes in commits.
* Maintainers SHOULD mark released versions of the codebase, for example using revision tags or textual labels.
* Contributors SHOULD prefer file formats where the changes within the files can be easily viewed and understood in the version control system.
* It is OPTIONAL for contributors to sign their commits and provide an email address, so that future contributors are able to contact past contributors with questions about their work.

## What this does not do

* Substitute for [advertising maturity](document-maturity.md).
* Guarantee the code executes correctly.
* Guarantee collaborators.

## How to test

* Confirm that the codebase is kept in version control using software such as Git.
* Review the commit history, confirming that all commit messages explain why the change was made.
* Review the commit history, confirming that where possible all commit messages include the discussion about the change was or where to find it (with a URL).
* Check if the version control system is distributed.
* Review the commit history, check if grouping of relevant changes in accordance with the contributing guidelines.
* Check that it is possible to access a specific version of the codebase, for example through a revision tag or a textual label.
* Check that the file formats used in the codebase are text formats where possible.

## Policy makers: what you need to do

* If a new version of the codebase is created because of a [policy](../glossary.md#policy) change, make sure it's clear in the documentation:
  * what the policy change is,
  * how it's changed the codebase.

For example, adding a new category of applicant to a codebase that manages granting permits would be considered a policy change.

## Managers: what you need to do

* Support policy makers, developers and designers to be clear about what improvements they're making to the codebase. Making improvements isn't a public relations risk.

## Developers and designers: what you need to do

* Write clear commit messages so that it is easy to understand why the commit was made.
* Mark different versions so that it is easy to access a specific version, for example using revision tags or textual labels.
* Write clear commit messages so that versions can be usefully compared.
* Work with policy makers to describe how the source code was updated after a policy change.

## Further reading

* [Producing OSS: Version Control Vocabulary](https://producingoss.com/en/vc.html#vc-vocabulary) by Karl Fogel.
* [Maintaining version control in coding](https://www.gov.uk/service-manual/technology/maintaining-version-control-in-coding) by the UK Government Digital Service.
* [GitHub Skills](https://skills.github.com/) by GitHub for learning how to use GitHub or refresh your skills.
* [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf) by GitHub, a list with the most common used git commands.
