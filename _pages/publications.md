---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% include base_path %}

{% if site.author.googlescholar %}
<div class="wordwrap">You can also find my articles on my <a href="{{ site.author.googlescholar }}">Google Scholar profile</a>.</div>
{% endif %}

{% assign cats = "preprints,international,domestic" | split: "," %}
{% assign labels = "Preprints,International conferences (refereed),Domestic conferences (Japanese)" | split: "," %}
{% for c in cats %}
<h2>{{ labels[forloop.index0] }}</h2>
{% for post in site.publications reversed %}
{% if post.category == c %}
{% include archive-single.html %}
{% endif %}
{% endfor %}
{% endfor %}
