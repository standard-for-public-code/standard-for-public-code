---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 7
redirect_from:
  - criteria/require-review
---
# Require review of contributions

Peer-review of contributions is essential for [source code](../glossary.md#source-code) quality, reducing security risks and operational risks.

Requiring thorough review of contributions encourages a culture of making sure every contribution is of high quality, completeness and value.
Source code review increases the chance of discovering and fixing potential bugs or mistakes before they are added to the [codebase](../glossary.md#codebase).
Knowing that all source code was reviewed discourages a culture of blaming individuals, and encourages a culture of focusing on solutions.

A [policy](../glossary.md#policy) of prompt reviews assures contributors of a guaranteed time for feedback or collaborative improvement, which increases both rate of delivery and contributor engagement.

## Requirements

* All contributions that are accepted or committed to release versions of the codebase MUST be reviewed by another contributor.
* Reviews MUST include source, policy, tests and documentation.
* Reviewers MUST provide feedback on all decisions to not accept a contribution.
* The review process SHOULD confirm that a contribution conforms to the standards, architecture and decisions set out in the codebase in order to pass review.
* Reviews SHOULD include running both the software and the tests of the codebase.
* Contributions SHOULD be reviewed by someone in a different context than the contributor.
* Version control systems SHOULD NOT accept non-reviewed contributions in release versions.
* Reviews SHOULD happen within two business days.
* Performing reviews by multiple reviewers is OPTIONAL.

## How to test

* Confirm that every commit in the history has been reviewed by a different contributor.
* Confirm that reviews include source, policy, tests and documentation.
* Confirm that rejected contributions were appropriately explained.
* Check if guidelines for reviewers include instructions to review for conformance to standards, architecture and codebase guidelines.
* Check with reviewers if they run the software and tests during review.
* Check with reviewers if commits have been reviewed by a different contributor in a different context.
* Check for use of branch protection in the [version control](../glossary.md#version-control) system.
* Check the times between contribution submission and review.

## Public policy makers: what you need to do

* Institute a 'four eyes' policy where everything, not just source code, is reviewed.
* Use a version control system or methodology that enables review and feedback.

## Managers: what you need to do

* Make delivering great software a shared objective.
* Make sure writing and reviewing contributions to source, policy, documentation and tests are considered equally valuable.
* Create a culture where all contributions are welcome and everyone is empowered to review them.
* Make sure no contributor is ever alone in contributing to a codebase.

## Developers and designers: what you need to do

* Ask other contributors on the codebase to review your work, in your organization or outside of it.
* Try to respond to others' requests for review promptly, initially providing feedback about the concept of the change.

## Further reading

* [How to review code the GDS way](https://gds-way.cloudapps.digital/manuals/code-review-guidelines.html#content) by the UK Government Digital Service.
* Branch protection on [GitHub](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) and [GitLab](https://about.gitlab.com/blog/2014/11/26/keeping-your-code-protected/).
* [The Gentle Art of Patch Review](https://sage.thesharps.us/2014/09/01/the-gentle-art-of-patch-review/) by Sage Sharp.
* [Measuring Engagement](https://docs.google.com/presentation/d/1hsJLv1ieSqtXBzd5YZusY-mB8e1VJzaeOmh8Q4VeMio/edit#slide=id.g43d857af8_0177) by Mozilla.
