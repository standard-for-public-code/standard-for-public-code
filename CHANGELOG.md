# Version history

<!-- SPDX-License-Identifier: CC0-1.0 -->
<!-- SPDX-FileCopyrightText: 2019-2022 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS -->

{% assign sorted = site.pages | reverse %}
{% for page in sorted %}
{% if page.dir == "/changelog/" %}
{% include_relative changelog/{{page.name}} %}
{% endif%}
{% endfor %}
