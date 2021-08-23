# Introduction

The Standard for Public Code is a set of criteria that supports public organizations in developing and maintaining software and policy together.

Anyone developing software or policy for a public purpose can use this standard to work towards higher quality public services that are more cost effective, with less risk and more control.

This introduction introduces the term public code, explains the goals of this standard, and introduces the process through which software and policy code can become certified public code.

## Definition of public code

Public code is both computer source code (such as software and algorithms) and public policy executed in a public context, by humans or machines. Public code is explicitly distinct from regular software because it operates under fundamentally different circumstances and expectations.

For more definitions of concepts used in the Standard for Public Code, see the [glossary](glossary.md).

## The goals for the Standard for Public Code

This Standard supports developers, designers, business management and policy makers to:

* develop high quality software and policy for better public service delivery
* develop codebases that can be reused across contexts and collaboratively maintained
* reduce technical debt and project failure rate
* have more granular control over, and ability to make decisions about, their IT systems
* improve vendor relationships with a better economic model

[The Foundation for Public Code](https://publiccode.net/) helps public organizations share and adopt open source software, build sustainable developer communities and create a thriving ecosystem for public code. It does this through codebase stewardship. For this process the codebase stewards use the Standard for Public Code to make sure the code it stewards is high quality as well as collaboratively maintainable.

Potential users of codebases tested against the Standard for Public Code can expect them to be highly reusable, easily maintainable and of high quality.

The Standard for Public Code does this by:

* setting out a common terminology for public code development
* establishing measures to help develop high quality public code
* providing guidance on how to fulfill its criteria and operationalize compliance

The Standard for Public Code is meant to be time and technology independent.

### Who this is for

The Standard for Public Code is for the people who create and reuse public code:

* policy makers
* business and project management
* developers and designers

These people work at:

* public organizations: institutions and administrations
* consultancies and vendors of information technology and policy services to public organizations

It is not aimed at public organizations' end users (residents or citizens), journalists or academics.

## Standard compliance or certification process

The Foundation for Public Code ensures that codebases under its stewardship (and not in incubation or the attic) are compliant with the Standard for Public Code. This makes clear to potential users and contributors that the codebase is of high quality, and updates will be too.

The audit performed by the Foundation for Public Code is meant to complement machine testing, as machines are great at testing things like syntax and whether outcomes align with expectations. Things meant for humans, such as testing whether documentation is actually understandable and accessible in context, the commit messages make sense, and whether community guidelines are being followed are impossible for machines to test.

The audit tests the entire codebase, including source code, policy, documentation and conversation for compliance with both the standards set out by the Foundation for Public Code and the standards set out in the codebase itself.

### How the process works

Every time a contribution is suggested to a codebase – through for instance a merge request – the [codebase stewards](https://about.publiccode.net/roles/) of the Foundation for Public Code will audit the contribution for compliance with the Standard for Public Code. New contributions can only be adopted into the codebase after they have been approved as compliant with the Standard for Public Code, and have been reviewed by another contributor.

The audit is presented as a review of the contribution. The codebase steward gives line by line feedback and compliance, helping the contributor to improve their contribution. The merge request cannot be fulfilled until the codebase stewards have approved the contribution.

![Pull Request Acceptance process](images/audit-flow.svg)

### Certifying an entire codebase versus a contribution

For the codebase to be completely certified every meaningful line of code, and the commits behind the code, need to meet the Standard.

If codebases have been completely audited from the first merge request they can be immediately certified as compliant with the Standard for Public Code.

If the audit process is added to an existing codebase, the new merge requests can be certified, but the existing code cannot be certified. By auditing every new merge request the codebase can move incrementally towards being completely certified.

## Get involved

This standard is a living document. [Read our contributor guide](/CONTRIBUTING.md) to learn how you can make it better.
