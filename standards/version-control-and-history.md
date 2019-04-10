---
order: 5
---

# Maintain version control

## Measure

* You MUST have a way to maintain version control for your code
* All files in a codebase MUST be version controlled
* All decisions MUST be documented in commit messages
* Every commit message MUST link to discussions and issues wherever possible
* You SHOULD group relevant changes in commits
* You SHOULD prefer file formats that can easily be version controlled

## What this does

Version control means keeping track of changes to your code over time. This allows you to create structured documentation of the history of the codebase. This is essential for collaboration at scale.

Version control enables you to:

* revert to an earlier version of the codebase whenever you want to
* record your changes and the reasons why you made them, to help future developers understand the process
* compare two different versions
* work on changes in parallel as a team before merging them together

## What this doesn’t do
* Substitute for advertising maturity.
* Guarantee your code executes correctly.
* Guarantee collaborators.

## How to test

* The codebase is kept in version control using software such as Git.

* All commit messages explain:
  * why the change was made
  * what the discussion about the change was or where to find it (with a URL)

## Policy makers: what you need to do
* If a new version of the codebase is created because of a policy change, make sure it's clear in the documentation:
 * what the policy change is
 * how it's changed the codebase

For example, adding a new category of applicant to a codebase that manages granting permits would be considered a policy change.

## Management: what you need to do
* Support policy makers, developers and designers to be clear about what improvements they're making to the codebase - making improvements isn't a public relations risk.

## Developers and designers: what you need to do
* Write clear commit messages so that versions can be usefully compared. 
* Work with policy makers to describe how the source code was updated after a policy change. 

## Further reading

* [Producing OSS: Version Control Vocabulary](https://producingoss.com/en/vc.html#vc-vocabulary)
* [UK Government Service Manual on storing source code](https://www.gov.uk/service-manual/technology/maintaining-version-control-in-coding)
