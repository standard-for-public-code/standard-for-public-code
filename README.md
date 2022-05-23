# Standard for Public Code

![version 0.2.3](https://img.shields.io/badge/version-0.2.3-red.svg)
![Test](https://github.com/publiccodenet/standard/workflows/Test/badge.svg)
![Scheduled link check](https://github.com/publiccodenet/standard/workflows/Scheduled%20link%20check/badge.svg)

## Request for contributions

We believe public policy and software should be inclusive, usable, open, legible, accountable, accessible and sustainable. This means we need a new way of designing, developing and procuring both the source code and policy documentation.

This standard sets a quality level for codebases that meets the needs of public organizations, institutions and administrations as well as other critical infrastructural services.

The standard lives at [standard.publiccode.net](https://standard.publiccode.net/). See [`index.md`](index.md) for an overview of all content.

[![Thumbnail for the video on the Standard for Public Code: a printed version lying on a table between two hands](https://img.youtube.com/vi/QWt6vB-cipE/mqdefault.jpg)](https://www.youtube.com/watch?v=QWt6vB-cipE)

[A video introduction to Standard for Public Code](https://www.youtube.com/watch?v=QWt6vB-cipE) from Creative Commons Global Summit 2020 (4:12) on YouTube.

## Help improve this standard

We are looking for people like you to [contribute](CONTRIBUTING.md) to this project by suggesting improvements and helping develop it. 😊 Get started by reading our [contributors guide](CONTRIBUTING.md). Since it is such a core document we will accept contributions when they add significant value. We've described how we govern the standard in the [governance statement](GOVERNANCE.md).

Please note that this project is released with a [contributor code of conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms. Please be lovely to all other community members.

## Preview, build and deploy

The repository builds to a static site deployed at [standard.publiccode.net](https://standard.publiccode.net/). It is built with [GitHub pages](https://pages.github.com) and [Jekyll](https://jekyllrb.com/).

See the scripts in the `script` folder.

## Generating a PDF of the Standard for Public Code

Using [Weasyprint](https://weasyprint.org/) the file `print.html` can be converted to a nice looking PDF.

```bash
weasyprint http://localhost:4000/print.html standard.pdf
```

## License

© [The authors and contributors](AUTHORS.md)

The standard is [licensed](LICENSE.md) under CC 0, which also applies to all illustrations and the documentation. This means anyone can do anything with it. If you contribute you also grant these rights to others. You can read more about how to help in the [contributing guide](CONTRIBUTING.md).
