# Standards

{% for page in site.pages %}{% if page.dir == "/standards/" %}{% if page.name != "index.md" %}{% if page.title %}
* [{{page.title}}]({{page.path}}){% endif%}    {% endif%}  {% endif%}{% endfor %}
