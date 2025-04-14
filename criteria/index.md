---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2025 Standard for Public Code Authors, https://www.standardforpubliccode.org/AUTHORS; 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://www.standardforpubliccode.org/AUTHORS
order: 0
---
# Criteria

{% assign sorted = site.pages | sort:"order" %}

{% for page in sorted %}{% if page.dir == "/criteria/" %}{% if page.name != "index.md" %}{% if page.title %}

1. [{{page.title}}]({{page.url | relative_url}}){% endif%}    {% endif%}  {% endif%}{% endfor %}
