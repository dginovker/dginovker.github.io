---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: true
redirect_from:
  - /projects
---

{% include base_path %}


{% for post in site.project %}
  {% include archive-single.html %}
{% endfor %}

