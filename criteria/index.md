# Criteria

{% assign sorted = site.pages | sort:"order" %}

{% for page in sorted %}{% if page.dir == "/criteria/" %}{% if page.name != "index.md" %}{% if page.title %}
1. [{{page.title}}]({{page.url}}){% endif%}    {% endif%}  {% endif%}{% endfor %}
