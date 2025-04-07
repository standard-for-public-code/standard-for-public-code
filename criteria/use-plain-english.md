---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS
order: 10
redirect_from:
  - criteria/understandable-english-first
---
# Use plain English

English is the <i>de facto</i> language of collaboration in software development.
However, some contexts require languages other than English.
Therefore, a codebase can have a set of authoritative languages, including English.

Public sector information needs to be accessible to all its constituents.
Plain and simple language makes the [code](../glossary.md#code) and what it does easier to understand for a wider variety of people.

Translations further increase the possible reach of a [codebase](../glossary.md#codebase).
Language that is easy to understand lowers the cost of creating and maintaining translations.

## Requirements

* The set of authoritative languages for codebase documentation MUST be documented.
* English MUST be one of the authoritative languages.
* All codebase documentation MUST be up to date in all authoritative languages.
* All [source code](../glossary.md#source-code) MUST be in English, except where [policy](../glossary.md#policy) is machine interpreted as code.
* All bundled policy MUST be available, or have a summary, in all authoritative languages.
* There SHOULD be no acronyms, abbreviations, puns or legal/language/domain specific terms in the codebase without an explanation preceding it or a link to an explanation.
* Documentation SHOULD aim for a lower secondary education reading level, as recommended by the [Web Content Accessibility Guidelines 2](https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=315#reading-level).
* Providing additional courtesy translations of any code, documentation or tests is OPTIONAL.

## How to test

* Confirm that codebase documents which languages are authoritative.
* Confirm that codebase documentation is available in English.
* Confirm that translations in authoritative languages have the same content.
* Confirm that source code is in English, or confirm any non-English source code is policy or terms with preceding explanations.
* Confirm all policy is fully translated or has a summary in all authoritative languages.
* Check that no unexplained acronyms, abbreviations, puns or legal/language/domain specific terms are in the documentation.
* Check the spelling, grammar and readability of the documentation.

## Public policy makers: what you need to do

* Frequently test with other managers, developers and designers in the process if they understand what you are delivering and how you document it.

## Managers: what you need to do

* Establish which languages are authoritative for codebase documentation, citing relevant policy if applicable.
* Ensure there is staffing or budget to provide translation for authoritative languages.
* Try to limit the use of acronyms, abbreviations, puns or legal/language/domain specific terms in internal communications in and between teams and stakeholders. Add any such terms to a glossary and link to it from the places they are being used.
* Be critical of documentation and descriptions in proposals and changes. If you don't understand something, others will probably also struggle with it.

## Developers and designers: what you need to do

* Frequently test with policy makers and managers if they understand what you are delivering and how you document it.
* Ask someone outside of your context if they understand the content (for example, a developer working on a different codebase).
* If there are both required authoritative translations and "best effort" courtesy translations, then ensure that it is clearly documented which category each translation belongs to.

## Further reading

* Meeting the [Web Content Accessibility Guidelines 2.2, Guideline 3.1.5 Reading Level](https://www.w3.org/WAI/WCAG22/quickref/?showtechniques=315#reading-level) by W3C makes text content readable and understandable.
* The [European Union accessibility directive](https://ec.europa.eu/digital-single-market/en/web-accessibility) by the European Commission, is an example of regulation requiring high accessibility.
* [Definition of plain language](https://www.plainlanguage.gov/about/definitions/) by United States General Services Administration.
