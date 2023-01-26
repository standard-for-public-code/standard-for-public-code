---
order: 7
---
# Require review of contributions

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

## Requirements

* All contributions that are accepted or committed to release versions of the [codebase](../glossary.md#codebase) MUST be reviewed by another contributor.
* Reviews MUST include source, [policy](../glossary.md#policy), tests and documentation.
* Reviewers MUST provide feedback on all decisions to not accept a contribution.
* Contributions SHOULD conform to the standards, architecture and decisions set out in the codebase in order to pass review.
* Reviews SHOULD include running both the [code](../glossary.md#code) and the tests of the codebase.
* Contributions SHOULD be reviewed by someone in a different context than the contributor.
* Version control systems SHOULD NOT accept non-reviewed contributions in release versions.
* Reviews SHOULD happen within two business days.
* Performing reviews by multiple reviewers is OPTIONAL.

## Why this is important

* Increases codebase quality.
* Reduces security risks as well as operational risks.
* Creates a culture of making every contribution great.
* Catches the most obvious mistakes that could happen.
* Gives contributors the security that their contributions are only accepted if they really add value.
* Assures contributors of a guaranteed time for feedback or collaborative improvement.
* Prompt reviews increase both rate of delivery and contributor engagement.

## What this does not do

* Guarantee the right solution to a problem.
* Mean that reviewers are liable.
* Absolve a contributor from writing documentation and tests.
* Provide you with the right reviewers.

## How to test

* Confirm that every commit in the history has been reviewed by a different contributor.
* Confirm that reviews include source, policy, tests and documentation.
* Confirm that rejected contributions were appropriately explained.
* Check if reviews cover conformance to standards, architecture and codebase guidelines.
* Check with reviewers if they run the code and tests during review.
* Check with reviewers if commits have been reviewed by a different contributor in a different context.
* Check for use of branch protection in the [version control](../glossary.md#version-control) system.
* Check the times between contribution submission and review.

## Policy makers: what you need to do

* Institute a 'four eyes' policy where everything, not just code, is reviewed.
* Use a version control system or methodology that enables review and feedback.

## Managers: what you need to do

* Make delivering great code a shared objective.
* Make sure writing and reviewing contributions to source, policy, documentation and tests are considered equally valuable.
* Create a culture where all contributions are welcome and everyone is empowered to review them.
* Make sure no contributor is ever alone in contributing to a codebase.

## Developers and designers: what you need to do

* Ask other contributors on the codebase to review your work, in your organization or outside of it.
* Try to respond to others' requests for code review promptly, initially providing feedback about the concept of the change.

## Further reading

* [How to review code the GDS way](https://gds-way.cloudapps.digital/manuals/code-review-guidelines.html#content) by the UK Government Digital Service.
* Branch protection on [GitHub](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/about-protected-branches) and [GitLab](https://about.gitlab.com/blog/2014/11/26/keeping-your-code-protected/).
* [The Gentle Art of Patch Review](https://sage.thesharps.us/2014/09/01/the-gentle-art-of-patch-review/) by Sage Sharp.
* [Measuring Engagement](https://docs.google.com/presentation/d/1hsJLv1ieSqtXBzd5YZusY-mB8e1VJzaeOmh8Q4VeMio/edit#slide=id.g43d857af8_0177) by Mozilla.
