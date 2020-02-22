---
layout: archive
permalink: /thoughts/
title: "Open Thoughts"
author_profile: true
redirect_from:
  - /wordpress/blog-posts/
---

<p>This page is to bookkeep some research ideas.
They may be half-baked and not very carefully scrutinized.
</p>

{% include base_path %}
{% capture written_year %}'None'{% endcapture %}
{% for post in site.posts %}
  {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
  {% if year != written_year %}
    {% capture written_year %}{{ year }}{% endcapture %}
  {% endif %}
  {% include archive-single.html %}
{% endfor %}
