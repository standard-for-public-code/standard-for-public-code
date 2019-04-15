# Introduction

The Standard for Public Code is a method for developing civic and source code for public purposes.

We define ‘public code’ as open source software developed by public public organisations, together with the policy and guidance needed for reuse.

The [Foundation for Public Code](https://publiccode.net/) helps public organisations share and adopt open source software, build sustainable developer communities and create a thriving ecosystem for public code.

## The goals for the Standard

The Standard:

* guides organisations to the criteria they need to meet for their code to be included for Foundation stewardship
* provides reassurance that all code under Foundation stewardship is high quality and reusable

* The Standard for Public Code does this by:
  * setting out a common terminology for public code development
  * establishing measures to help develop high quality public code
  * providing guidance on how to implement the standards

## Who this is for

The Standard for Public Code is for the people who create and reuse public code:

* policy makers
* business and project management
* developers and designers

These people work at:

* public organisations: institutions and administrations
* vendors of policy and information technology to public organisations

It is not aimed at public organisations' end users (residents or citizens), journalists or academics.

## Background (why use public code!)

In the public context in the 21st century, software can be considered vital infrastructure. It mediates/governs the expression of policy - and where it learns to make its own decisions (for example machine learning algorithms), it is potentially writing new policy.

We hold that software and policy are both code. The former executed by machines and the latter by humans.

This leads to a number of new concerns.

### Sovereignty

* Preferable economic model
  * More vendors necessary due to growing demand of digitalisation

### The difference between private and public technologies

* Procurement and its effects
* Why have control
  * De-risking infrastructure
  * Sustainability
* Commodity versus specialistic code
  * Reducing technical debt
* Core values
  * Inclusive, usable, open, legible, accountable, accessible and sustainable

### Collaboration between (public) organisations and the pooling of resources

* What is important to take into account when writing public policy for the digital age
* What is important to take into account when writing software for a public goal

## Procuring public code

You don't need to change your technology suppliers or procurement process to use public code. It can be used by your permanent in-house development team, contractors or outsourced suppliers. Vendors to public organisations can include public code in their bids for contracts.

To use existing public code, you need to specify in your budget and project design that your new solution will use that codebase. To encourage an innovative approach to adapting the public code to your context, you could describe the service or outcome in your contract.

You don't need to ask us to use the code, but of course, we would like to know!

To build new public code for contribution to Foundation for Public Code stewardship, you'll need to:

* meet the Standard for Public Code as you plan and develop your code
* have your code certified by the Foundation for Public Code

## Certification of public code

The Foundation for Public Code guards that codebases that are under its stewardship (and not in incubation or the attic) are compliant with the Standard for Public Code. This makes clear to potential users and contributors that the codebase is of high quality and so will its updates be.

The audit performed the Foundation for Public Code is meant to complement machine testing, as machines are great at testing the things like syntax and whether outcomes align with expectations. Things meant for humans such as testing whether documentation is actually understandable and attached, the commit messages make sense and community-oriented guidelines are being followed are impossible for machines to test against.

The audit tests the entire codebase, including source code, policy, documentation and conversation for compliance with both the standards set out by the Foundation For Public Code and the standards set out in the codebase itself.

### How the process works

Every time a contribution is suggested to a codebase – through for instance a merge request – the [codebase stewards](https://about.publiccode.net/roles/) of the Foundation for Public Code will audit the contribution for compliance with the Standard for Public Code. New contributions can only be adopted into the codebase after they have been approved as compliant with the Standard for Public Code, as well as being reviewed by another contributor.

The audit is presented as a review of the contribution. The codebase steward gives line for line feedback and compliance, helping the contributor to improve their contribution. The merge request cannot be fulfilled until the codebase stewards have approved the contribution.

![Pull Request Acceptance process](images/audit-flow.svg)

### Certifying an entire codebase versus a contribution

If the audit process is added to a codebase farther along in its development new merge requests can be certified, however, the existing code cannot be certified. By auditing every new merge request the codebase can move towards being completely certified. For the codebase to be completely certified every meaningful line of code, and the commits behind the code, need to be up to the standards.

If codebases have been completely audited from the first merge request they can be completely be certified as compliant with the Standard for Public Code immediately.