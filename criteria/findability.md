---
order: 14
---

# Make the codebase findable

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- written in 2022 by The Foundation for Public Code <info@publiccode.net> -->

## Requirements

* The codebase MUST be findable using a search engine by describing the problem it solves in natural language.
* The codebase MUST be findable using a search engine by codebase name.
* Maintainers SHOULD submit the codebase to relevant software catalogs.
* The codebase SHOULD have a website which describes the problem the codebase solves using the preferred jargon of different potential users of the codebase (including technologists, policy experts and managers).
* The codebase SHOULD have a unique and persistent identifier where the entry mentions the major contributors, repository location and website.
* The codebase SHOULD include a machine-readable metadata description, for example in a [publiccode.yml](https://github.com/publiccodeyml/publiccode.yml) file.
* A dedicated domain name for the codebase is OPTIONAL.
* Regular presentations at conferences by the community are OPTIONAL.

## Why this is important

* Proactiveness is needed; just publishing a codebase and hoping it's found doesn't work.
* A metadata description file increases discoverability.
* The more findable a codebase is, the more potential new collaborators will find it.
* By having well-written metadata containing a unique and persistent identifer, such as a Wikidata item or FSF software directory listing, and thus being part of the semantic web, it will be easier for other people to refer, cite, disambiguate and discover the codebase through third party tools.

## What this does not do

* Ensure new collaborators or replicators

## How to test

Check that the codebase appears in the first set of results on more than one major search engine when you search for:

* plain problem description
* technical problem description
* codebase name

## Policy makers: what you need to do

* Contribute a description of the policy area or problem this codebase acts on or operates.
* Test your problem description with peers outside of your context who aren't familiar with the codebase.
* Present on how the codebase implements the policy at relevent conferences.

## Management: what you need to do

* Budget for content design and Search Engine Optimization skills in the team.
* Ensure people involved in the project present at relevant conferences.
* Search trademark databases to avoid confusion or infringement before deciding the name.

## Developers and designers: what you need to do

* Search engine optimization.
* Test your problem description with peers outside of your context who aren't familiar with the codebase.
* Suggest conferences to present at and present at them.

## Further reading

* [Introduction to Wikidata](https://www.wikidata.org/wiki/Wikidata:Introduction) by the Wikidata community.
* [FSF software directory listing](https://directory.fsf.org/wiki/Main_Page) by the Free Softare Foundation.
* The [FAIR Guiding Principles for scientific data management and stewardship](https://www.go-fair.org/fair-principles/) by the GO FAIR International Support and Coordination Office provide a nice list of attributes that make (meta)data more machine actionable (and hence more findable). Some of these apply directly to codebases, while others may provoke exploration into what the codebase equivalent would be.
