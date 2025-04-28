---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS
toc: false
---
# Guidance for government open source collaboration

The Standard for Public Code is a set of criteria that supports public organizations in developing and maintaining software and policy together.

The Standard for Public Code provides guidance to public organizations seeking to successfully collaborate on open source solutions with similar organizations in other places.
It includes advice for policy makers, government managers, developers and vendors.
The Standard for Public Code supports the collaborative creation of codebases that are usable, open, legible, accountable, accessible and sustainable.
It is meant to be applicable to codebases for all levels of government, from supranational to municipal.

The Standard for Public Code defines ‘[public code](glossary.md#public-code)’ as open source software developed by public organizations, together with the policy and guidance needed for collaboration and reuse.

The criteria of the Standard for Public Code are aligned with guidelines and best practices of open source software development.

{% for page in site.pages %}{% if page.name == "foreword.md" %}
Additional context and background can be found in the [foreword](foreword.md).
{% endif%}{% endfor %}

## Contents

* [Readers guide: how to interpret this standard](readers-guide.md)
* [Glossary](glossary.md)
* [Criteria](criteria/){% assign sorted = site.pages |  sort:"order" %}{% for page in sorted %}{% if page.dir == "/criteria/" %}{% if page.name != "index.md" %}{% if page.title %}
  * [{{page.title}}]({{page.url | relative_url}}){% endif%}{% endif%}{% endif%}{% endfor %}
* [Authors](AUTHORS.md)
* [Contributing guide](CONTRIBUTING.md)
* [Code of conduct](CODE_OF_CONDUCT.md)
* [Governance](GOVERNANCE.md)
* [Version history](RELEASE_NOTES.md)
* [License](license.html)

## Community calls

We usually have a community call on the last Thursday of the month at 15:00 (CET/CEST).
The agenda is coordinated on our [discussion board](https://github.com/standard-for-public-code/standard-for-public-code/discussions/categories/community-calls) roughly a week before the call.

## Other resources

* Unofficial [community translations of the Standard](https://translations.standardforpubliccode.org/) in other languages
* [Standard compliance self assessment](https://publiccodenet.github.io/assessment-eligibility/) for public sector open source codebases
* [Standard criteria review template](/docs/review-template.html) used by Foundation for Public Code stewards for codebase review
* [Compact requirements checklist](https://github.com/standard-for-public-code/standard-for-public-code/releases/download/0.8.1/standard-checklist-0.8.1.pdf) for printed use and in-person discussions
* [Community built companion](https://standard-for-public-code.github.io/community-implementation-guide-standard/) to the Standard for Public Code
