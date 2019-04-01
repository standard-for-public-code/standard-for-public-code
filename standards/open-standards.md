---
order: 10
---

# Adhere to Open Standards

## Measure

* For features of a codebase that facilitate the exchange of data the codebase MUST use a Open Standard that passes the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)
* If no existing Open Standard is available, effort SHOULD be put into developing one
* Standards that are machine testable SHOULD be preferred over those that are not
* Functionality using [Open Source Initiative Open Standard Requirements](https://opensource.org/osr) non-compliant standard based features MAY be provided when necessary only in addition to compliant features
* All non-compliant standards that are used MUST be documented clearly in the documentation
* The codebase MAY contain a list with all the standards used with links to where they are available

## What this does

* Create interoperability between systems
* Reduces possible vendor-lock in
* Guarantees access to the knowledge required to reuse and contribute to the codebase

## What this doesn’t do

* make it understandable how to use the software

## How to test

* Are the standards that are used for all features that offer interoperability with other components and systems freely and publicly available on the internet. Make a list of the standards and add these to the documentation.

## Policy makers: what you need to do

* Prohibit procurement of technology that does not comply with the [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)

## Management: what you need to do

* ???

## Developers and designers: what you need to do

* Add Continuous Integration tests for compliance to the standards

## Further reading

* [Open Source Initiative Open Standard Requirements](https://opensource.org/osr)
