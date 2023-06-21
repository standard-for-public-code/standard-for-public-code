---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2022-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS
order: 14
redirect_from:
  - criteria/findability
---

# Make the codebase findable

The more findable a [codebase](../glossary.md#codebase) is, the more potential new collaborators will find it.
Just publishing a codebase and hoping it is found does not work, instead proactiveness is needed.

A metadata description file increases discoverability.
Well-written metadata containing a unique and persistent identifier, such as a Wikidata item or FSF software directory listing (thus being part of the semantic web), makes the codebase easier for people to refer, cite, disambiguate and discover through third party tools.

## Requirements

* The name of the codebase SHOULD be descriptive and free from acronyms, abbreviations, puns or organizational branding.
* The codebase SHOULD have a short description that helps someone understand what the codebase is for or what it does.
* Maintainers SHOULD submit the codebase to relevant software catalogs.
* The codebase SHOULD have a website which describes the problem the codebase solves using the preferred jargon of different potential users of the codebase (including technologists, policy experts and managers).
* The codebase SHOULD be findable using a search engine by codebase name.
* The codebase SHOULD be findable using a search engine by describing the problem it solves in natural language.
* The codebase SHOULD have a unique and persistent identifier where the entry mentions the major contributors, [repository](../glossary.md#repository) location and website.
* The codebase SHOULD include a machine-readable metadata description, for example in a [publiccode.yml](https://github.com/publiccodeyml/publiccode.yml) file.
* A dedicated domain name for the codebase is OPTIONAL.
* Regular presentations at conferences by the community are OPTIONAL.

## How to test

* Check that the codebase name is descriptive and free of puns.
* Check that the codebase name is free of acronyms and abbreviations or that the acronyms or abbreviations in the name are more universally known than the longer forms.
* Check that the codebase name is free of organizational branding, unless that organization is of the codebase community itself.
* Check that the codebase repository has a short description of the codebase.
* Check for the codebase listing in relevant software catalogs.
* Check for a codebase website which describes the problem the codebase solves.
* Check that the codebase appears in the results on more than one major search engine when searching by the codebase name.
* Check that the codebase appears in the results on more than one major search engine when searching by using natural language, for instance, using the short description.
* Check unique and persistent identifier entries for mention of the major contributors.
* Check unique and persistent identifier entries for the repository location.
* Check unique and persistent identifier entries for the codebase website.
* Check for a machine-readable metadata description file.

## Public policy makers: what you need to do

* Contribute a description of the policy area or problem this codebase acts on or operates.
* Test your problem description with peers outside of your context who aren't familiar with the codebase.
* Present on how the codebase implements the [policy](../glossary.md#policy) at relevant conferences.

## Managers: what you need to do

* Search trademark databases to avoid confusion or infringement before deciding the name.
* Use the short description wherever the codebase is referenced, for instance, as social media account descriptions.
* Budget for content design and Search Engine Optimization skills in the team.
* Make sure people involved in the project present at relevant conferences.

## Developers and designers: what you need to do

* Search engine optimization, for instance adding a [sitemap](https://www.sitemaps.org/protocol.html).
* Use the short description wherever the codebase is referenced, for instance, as the repository description.
* Test your problem description with peers outside of your context who aren't familiar with the codebase.
* Suggest conferences to present at and present at them.

## Further reading

* [Introduction to Wikidata](https://www.wikidata.org/wiki/Wikidata:Introduction) by the Wikidata community.
* [FSF software directory listing](https://directory.fsf.org/wiki/Main_Page) by the Free Software Foundation.
* The [FAIR Guiding Principles for scientific data management and stewardship](https://www.go-fair.org/fair-principles/) by the GO FAIR International Support and Coordination Office provide a nice list of attributes that make (meta)data more machine actionable (and hence more findable). Some of these apply directly to codebases, while others may provoke exploration into what the codebase equivalent would be.
