# Standard for Public Code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS -->

The Standard for Public Code gives public organizations a model for preparing open source solutions to enable collaborations with similar public organizations in other places.
It includes guidance for policy makers, city administrators, developers and vendors.

![version 0.8.1-rc2](assets/version-badge.svg)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![Standard commitment](assets/standard-for-public-code-commitment.svg)](#help-improve-this-standard)

[![pages-build-deployment](https://github.com/standard-for-public-code/standard-for-public-code/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/standard-for-public-code/standard-for-public-code/actions/workflows/pages/pages-build-deployment)
[![Test](https://github.com/standard-for-public-code/standard-for-public-code/actions/workflows/test.yml/badge.svg)](https://github.com/standard-for-public-code/standard-for-public-code/actions/workflows/test.yml)

The Standard for Public Code is in a draft format.
We are preparing it for a version 1.0 release.
Currently, we are testing it on a small number of codebases.

## Applying the Standard for Public Code to your codebase

If you want to apply the Standard for Public Code to your codebase, just go ahead, it's an open standard and free for anyone to use.
If you wish to advertise the codebase community's aspiration to meet the criteria of the Standard for Public Code, link the documentation of this commitment from the [standard-for-public-code-commitment badge](assets/standard-for-public-code-commitment.svg).
To see how ready your codebase is, you can do a quick [eligibility self assessment](https://publiccodenet.github.io/assessment-eligibility) that will give you a rough idea of how much work you may need to do to meet all criteria.

The standard *should* be mostly self-explanatory in how to apply it to your codebase.
If anything in the standard is unclear, we encourage you to open an issue here so that we can help you and anyone else who feels the same as you.
For inspiration, look at the [community built implementation guide](https://standard-for-public-code.github.io/community-implementation-guide-standard/) which contains examples and other tips.

If there are any breaking changes in a new version of the Standard for Public Code, the codebase stewards at the Foundation for Public Code will help any implementers of the standard understand how the gaps can be closed.

If you want to commit your codebase to become fully compliant to the standard for future certification, please contact us at <info@publiccode.net> to initiate a formal [assessment](https://about.publiccode.net/activities/codebase-stewardship/lifecycle-diagram.html#assessment).

## Request for contributions

We believe public policy and software should be inclusive, usable, open, legible, accountable, accessible and sustainable.
This means we need a new way of designing, developing and procuring both the source code and policy documentation.

This standard sets a quality level for codebases that meets the needs of public organizations, institutions and administrations as well as other critical infrastructural services.

The standard lives at [standard-for-public-code.github.io/standard-for-public-code/](https://standard-for-public-code.github.io/standard-for-public-code/).
See [`index.md`](index.md) for an overview of all content.

## Help improve this standard

The Foundation for Public Code is committed to maintaining and developing the Standard for Public Code at a level of quality that meets the standard itself.

We are looking for people like you to [contribute](CONTRIBUTING.md) to this project by suggesting improvements and helping develop it. 😊
Get started by reading our [contributors guide](CONTRIBUTING.md).
Since it is such a core document we will accept contributions when they add significant value.
We've described how we govern the standard in the [governance statement](GOVERNANCE.md).

Please note that this project is released with a [code of conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.
Please be lovely to all other community members.

## Preview, build and deploy

The repository builds to a static site deployed at [standard-for-public-code.github.io/standard-for-public-code/](https://standard-for-public-code.github.io/standard-for-public-code/).
It is built with [GitHub pages](https://pages.github.com) and [Jekyll](https://jekyllrb.com/).

The content is made to be built with [Jekyll](http://jekyllrb.com/), which means you will need ruby and ruby-bundler installed, for example:

```bash
sudo apt-get install -y ruby ruby-bundler ruby-dev
```

If `ruby` and `bundle` are installed, one can install the ruby dependencies:

```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

After which the site can be rendered locally:

```bash
script/serve.sh
```

### Testing

A variety of test scripts are included.
The script `script/test-all.sh` wraps running of all local tests.

See the scripts in the [script](https://github.com/standard-for-public-code/standard-for-public-code/tree/main/script) folder.

### Printing the Standard for Public Code

See [printing.md](docs/printing.md).

## License

© [The authors and contributors](AUTHORS.md)

The standard is [licensed](LICENSE) under CC 0, which also applies to all illustrations and the documentation.
This means anyone can do anything with it.
If you contribute you also grant these rights to others.
You can read more about how to help in the [contributing guide](CONTRIBUTING.md).
