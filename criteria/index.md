---
# SPDX-License-Identifier: CC0-1.0
# SPDX-FileCopyrightText: 2019-2024 The Foundation for Public Code <info@publiccode.net>, https://standard.publiccode.net/AUTHORS

# order: 0

layout: home
title: Criteria
nav_order: 3
has_children: true
---
# Criteria

{% assign sorted = site.pages | sort:"order" %}

{% for page in sorted %}{% if page.dir == "/criteria/" %}{% if page.name != "index.md" %}{% if page.title %}

1. [{{page.title}}]({{page.url}}){% endif%}    {% endif%}  {% endif%}{% endfor %}
