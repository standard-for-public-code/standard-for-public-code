# Introduction

The Standard for Public Code is a method for developing civic and source code for public purposes.

We define ‘public code’ as open source software developed by public public organisations, together with the policy and guidance needed for reuse.

The [Foundation for Public Code](https://publiccode.net/) helps public organisations share and adopt open source software, build sustainable developer communities and create a thriving ecosystem for public code.

## The goals for the Standard for Public Code 

The Standard:

* guides organisations to the criteria they need to meet for their code to be included for Foundation stewardship
* provides reassurance that all code under Foundation stewardship is high quality and reusable

The Standard for Public Code does this by:

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

## Software code == legal code

Software is public infrastructure.

In the 21st century, software can be considered vital public infrastructure. It is increasingly not just the expression of existing policy but the originator of new policy - for example where algorithms decide which districts need extra social services or policing.

Software mechanics, algorithms and the data collected have become key elements in the execution of public policies. In other words, software code has increasingly started to equal legal code. Computer code now operates on policies that have been codified in legal code through democratic procedures. Both forms of code set conditions for society to function according to democratically set public values, the latter executed by humans, the former by machines.

Software should therefore be subject to the principles of democratic governance.

## Traditional public software procurement

But the current public software production method is suboptimal.

In the last decade, public organisations that purchased complete software solutions have sometimes been surprised to discover that they:
 * can’t change their software to reflect changing policy or take advantage of new technological opportunities
 * don’t have own or even have access to their data
 * are asked to pay ever increasing licence fees

## Technological sovereignty and democratic accountability

Public institutions, civil servants and residents deserve better.

We believe software can no longer be a black box, ordered from outside companies that keep the underlying logic hidden in proprietary code bases. Instead, governments need technological sovereignty - allowing them to set and control the functioning of public software, just like they are able to set and control policy that is legally formulated in laws. Citizens and civil society actors need this software to be transparent and accountable. The design of software as an essential civic infrastructure should honor digital citizens’ rights.

## Designing truly public software

Public code gives public institutions, civil servants and residents what they deserve.

Public software must be:

* transparent
* accountable
* understandable for its constituents

It must reflect the values of the society it serves, for example by being inclusive and non-discriminatory.

Most proprietary software systems currently used by cities do not meet these requirements. Public code - software built to operate with and as public infrastructure, and a set of arrangements that allow for its production - does.

### Values of public code

We consider public code to have these core values:

* Inclusive
* Usable
* Open
* Legible
* Accountable
* Accessible
* Sustainable

The Standard for Public Code will guide you to build code that embodies these values.

## How public code works

Public code is open source software shared by one public administration for others to use. Through use, other administrations contribute back to the software, so that its development and maintenance become truly collaborative.

Being open unlocks many other things.

By being locally implemented and maintained, open public code ensures local responsibility and democratic accountability. By being open and with a broader contributor base, the software is more secure - it benefits from many eyes spotting potential flaws. Many contributors share the maintenance work to keep it functional and modern, which reduces future technical debt. The shared workload is more sustainable now and in the future. Its openness makes the code and its data more easily adaptable in the future - it will be easier to retool, repurpose or retire. This all results in lower risk public infrastructure.

This pooling of resources lets public administrations give extra attention to how to customise the software so it works best in each local context - creating better user experiences for their end users (residents or citizens).

## Economics of public code

It’s also good business sense - this isn’t just a utopian fantasy.

Public code provides an alternative to traditional software procurement that increases local control and economic opportunity.

Designed from the start to be open, adaptable and with data portability, it can be developed by in-house staff or trusted vendors. Because the code is open, the public administration can change vendor without infringing on intellectual property. Open code increases opportunities for public learning and scrutiny, allowing the public administration to procure smaller contracts - thereby making it easier for local small and medium enterprises to bid. Public administrations can use their own software purchasing to stimulate innovation and competition in their local economy.

This can benefit them in the future, as more vendors will be necessary due to growing demand of digitalisation. [Alternatively: this can be seen as investment leading to future economic growth - more vendors will be necessary due to growing technology demand.]

## Procuring public code

Public code doesn’t require a change in technology suppliers or the procurement process. It can be used by permanent in-house development teams, contractors or outsourced suppliers. Vendors to public organisations can include public code in their bids for contracts.

To use existing public code, you need to specify in your budget and project design that your new solution will use that codebase. To encourage an innovative approach to adapting the public code to your context, you could describe the service or outcome in your contract.

You don't need to ask us to use the code, but of course, we would like to know!

To build new public code for contribution to Foundation for Public Code stewardship, you'll need to:

*  meet the Standard for Public Code as you plan and develop your code
*  have your code certified by the Foundation for Public Code

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
