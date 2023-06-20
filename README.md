# Standard for Public Code

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2023 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

The Standard for Public Code gives public organizations a model for preparing open source solutions to enable collaborations with similar public organizations in other places.
It includes guidance for policy makers, city administrators, developers and vendors.

![version 0.7.0](assets/version-badge.svg)
[![License: CC0-1.0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)

[![pages-build-deployment](https://github.com/publiccodenet/standard/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/publiccodenet/standard/actions/workflows/pages/pages-build-deployment)
[![Test](https://github.com/publiccodenet/standard/actions/workflows/test.yml/badge.svg)](https://github.com/publiccodenet/standard/actions/workflows/test.yml)
[![standard main badge](https://publiccodenet.github.io/publiccodenet-url-check/badges/standard.publiccode.net.svg)](https://publiccodenet.github.io/publiccodenet-url-check/standard.publiccode.net-url-check-look.json)
[![standard develop badge](https://publiccodenet.github.io/publiccodenet-url-check/badges/standard.publiccode.net-develop.svg)](https://publiccodenet.github.io/publiccodenet-url-check/standard.publiccode.net-develop-url-check-look.json)

The Standard for Public Code is in a draft format.
We are preparing it for a version 1.0 release.
Currently, we are testing it on a small number of codebases.

## Applying the Standard for Public Code to your codebase

If you want to apply the Standard for Public Code to your codebase, just go ahead, it's an open standard and free for anyone to use.
To see how ready your codebase is, you can do a quick [eligibility self assessment](https://publiccodenet.github.io/assessment-eligibility) that will give you a rough idea of how much work you may need to do to meet all criteria.

The standard *should* be mostly self-explanatory in how to apply it to your codebase.
If anything in the standard is unclear, we encourage you to open an issue here so that we can help you and anyone else who feels the same as you.
For inspiration, look at the [community built implementation guide](https://publiccodenet.github.io/community-implementation-guide-standard/) which contains examples and other tips.

If there are any breaking changes in a new version of the Standard for Public Code, the codebase stewards at the Foundation for Public Code will help any implementers of the standard understand how the gaps can be closed.

If you want to commit your codebase to become fully compliant to the standard for future certification, please contact us at <info@publiccode.net> to initiate a formal [assessment](https://about.publiccode.net/activities/codebase-stewardship/lifecycle-diagram.html#assessment).

## Request for contributions

We believe public policy and software should be inclusive, usable, open, legible, accountable, accessible and sustainable.
This means we need a new way of designing, developing and procuring both the source code and policy documentation.

This standard sets a quality level for codebases that meets the needs of public organizations, institutions and administrations as well as other critical infrastructural services.

The standard lives at [standard.publiccode.net](https://standard.publiccode.net/).
See [`index.md`](index.md) for an overview of all content.

[![Thumbnail for the video on the Standard for Public Code: a printed version lying on a table between two hands](https://img.youtube.com/vi/QWt6vB-cipE/mqdefault.jpg)](https://www.youtube.com/watch?v=QWt6vB-cipE)

[A video introduction to Standard for Public Code](https://www.youtube.com/watch?v=QWt6vB-cipE) from Creative Commons Global Summit 2020 (4:12) on YouTube.

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

The repository builds to a static site deployed at [standard.publiccode.net](https://standard.publiccode.net/).
It is built with [GitHub pages](https://pages.github.com) and [Jekyll](https://jekyllrb.com/).

The content is made to be built with [Jekyll](http://jekyllrb.com/), which means you will need ruby and ruby-bundler installed, for example:

```bash
sudo apt-get install -y \
        ruby \
        ruby-bundler
```

If `ruby` and `bundle` are installed, one can run `bundle install` after which the site can be rendered with the `script/serve.sh` script.

### Testing

A variety of test scripts are included.
The script `script/test-all.sh` wraps running of all local tests.

See the scripts in the [script](https://github.com/publiccodenet/standard/tree/main/script) folder.

### Generating a PDF of the Standard for Public Code

In addition to Jekyll, generating PDFs relies upon [Weasyprint](https://weasyprint.org/) and [QPDF](https://github.com/qpdf/qpdf).
[Pandoc](https://pandoc.org/) can be used to transform PDFs into `.epub`.

To generate these kinds of files, the dependencies should be installed, for example:

```bash
sudo apt-get install -y \
        pandoc \
        qpdf \
        weasyprint
```

The file `standard-print.html` can be converted to a nice looking PDF, along with the other release files, using:

```bash
script/pdf.sh
```

## License

© [The authors and contributors](AUTHORS.md)

The standard is [licensed](LICENSE) under CC 0, which also applies to all illustrations and the documentation.
This means anyone can do anything with it.
If you contribute you also grant these rights to others.
You can read more about how to help in the [contributing guide](CONTRIBUTING.md).
