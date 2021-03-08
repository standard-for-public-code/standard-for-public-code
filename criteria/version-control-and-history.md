---
order: 6
---

# Maintain version control

## Requirements

* You MUST have a way to maintain version control for the code.
* All files in a codebase MUST be version controlled.
* All decisions MUST be documented in commit messages.
* Every commit message MUST link to discussions and issues wherever possible.
* You SHOULD use a distributed version control system.
* You SHOULD group relevant changes in commits.
* You SHOULD mark different versions of the codebase, for example using revision tags or textual labels.
* You SHOULD prefer file formats where the changes within the files can be easily viewed and understood in the version control system.

## Why this is important

Version control means keeping track of changes to the code over time. This allows you to create structured documentation of the history of the codebase. This is essential for collaboration at scale.

Distributed version control enables you to:

* have a full copy of the code and its history
* revert to an earlier version of the codebase whenever you want to
* record your changes and the reasons why you made them, to help future developers understand the process
* compare two different versions
* work on changes in parallel as a team before merging them together
* continue to work when the network is unavailable, merging changes back with everyone else’s at a later date

## What this does not do

* Substitute for [advertising maturity](document-maturity.md).
* Guarantee the code executes correctly.
* Guarantee collaborators.

## How to test

* The codebase is kept in version control using software such as Git.

* All commit messages explain:
  * why the change was made,
  * what the discussion about the change was or where to find it (with a URL).
* It is possible to access a specific version of the codebase, for example through a revision tag or a textual label.

## Policy makers: what you need to do

* If a new version of the codebase is created because of a policy change, make sure it's clear in the documentation:
  * what the policy change is,
  * how it's changed the codebase.

For example, adding a new category of applicant to a codebase that manages granting permits would be considered a policy change.

## Management: what you need to do

* Support policy makers, developers and designers to be clear about what improvements they're making to the codebase - making improvements isn't a public relations risk.

## Developers and designers: what you need to do

* Write clear commit messages so that it is easy to understand why the commit was made.
* Mark different versions so that it is easy to access a specific version, for example using revision tags or textual labels.
* Write clear commit messages so that versions can be usefully compared.
* Work with policy makers to describe how the source code was updated after a policy change.

## Further reading

* [Producing OSS: Version Control Vocabulary](https://producingoss.com/en/vc.html#vc-vocabulary) by Karl Fogel.
* [Maintaining version control in coding](https://www.gov.uk/service-manual/technology/maintaining-version-control-in-coding) by the UK Government Digital Service.
* [Semantic Versioning Specification](https://semver.org/) used by many codebases to label versions.
* [GitHub Learning Lab](https://lab.github.com/) for learning how to use GitHub or refresh your skills.
* [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf) a list with the most common used git commands.
