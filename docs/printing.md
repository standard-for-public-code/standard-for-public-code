# Printing

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2021-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS -->

## Generating a PDF of the Standard for Public Code

In addition to Jekyll, generating PDFs relies upon [Weasyprint](https://weasyprint.org/).
Print versions depend upon [pdfjam](https://github.com/rrthomas/pdfjam).
[Pandoc](https://pandoc.org/) can be used to transform PDFs into `.epub`.

To generate these kinds of files, the dependencies should be installed, for example:

```bash
sudo apt-get install -y \
        pandoc \
        python3-pip \
        python3-venv \
        texlive-extra-utils \
        weasyprint
```

The file `standard-print.html` can be converted to a nice looking PDF, along with the other release files, using:

```bash
script/pdf.sh
```

## Printing the Standard for Public Code

The printed Standard for Public Code is printed by Reclameland.
This guide tries to provide the relevant information to print it there or somewhere else.

Details, mostly in order they are on the Reclameland page with the Dutch if necessary:

* Form: Softcover book ([Reclameland product page](https://www.reclameland.nl/drukken/softcover-boeken))
* Format: A4
* Portrait or landscape: Portrait (Staand)
* Printing inside: 4/4 dual sided full color
* Inside material: 90 grams biotop
* Cover: 350 grams cover
* Printing cover: 4/0 one sided full cover
* Cover treatment: one sided matt foliated (Enke)
* Pages: pages of the inside + 4 + x, where x is 0-3 so that the sum becomes a multiple of 4
* Individually sealed: no

When these details are chosen, the cover and insides are uploaded and the order is placed payment can happen (payment ahead) after which printing starts.
