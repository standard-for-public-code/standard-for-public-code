---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
toc: false
---
# Guidance for government open source collaboration

The Standard for Public Code is a set of criteria that supports public organizations in developing and maintaining software and policy together.

The Standard for Public Code provides guidance to public organizations building their own open source solutions to enable successful future collaboration and reuse by similar organizations in the public sector in other places.
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
* [Criteria](criteria/){% assign sorted = site.pages | sort:"order" %}{% for page in sorted %}{% if page.dir == "/criteria/" %}{% if page.name != "index.md" %}{% if page.title %}
  * [{{page.title}}]({{page.url}}){% endif%}{% endif%}{% endif%}{% endfor %}
* [Authors](AUTHORS.md)
* [Contributing guide](CONTRIBUTING.md)
* [Code of conduct](CODE_OF_CONDUCT.md)
* [Governance](GOVERNANCE.md)
* [Version history](CHANGELOG.md)
* [License](license.html)

## Community calls

We usually have a community call on the first Thursday of the month at 15:00 (CET/CEST).
[The agenda](https://write.publiccode.net/pads/Community-Call-Standard-for-Public-Code) is updated roughly a week before the call.
It is possible to [sign up](https://odoo.publiccode.net/survey/start/594b9243-c7e5-4bc1-8714-35137c971842) to get a call invitation emailed to you.

## Other resources

* Unofficial [community translations of the Standard](https://publiccodenet.github.io/community-translations-standard/) in other languages
* [Standard compliance self assessment](https://publiccodenet.github.io/assessment-eligibility/) for public sector open source codebases
* [Standard criteria checklist](/docs/review-template.html) used by Foundation for Public Code stewards for codebase review
