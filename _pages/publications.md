---
layout: archive
title: "Selected Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

{% assign cats = "preprints,international,domestic" | split: "," %}
{% assign labels = "Preprints,International Conferences (Refereed),Domestic Conferences (Japanese)" | split: "," %}
{% for c in cats %}
<h2>{{ labels[forloop.index0] }}</h2>
{% for post in site.publications reversed %}
{% if post.category == c %}
{% include archive-single.html %}
{% endif %}
{% endfor %}
{% endfor %}
