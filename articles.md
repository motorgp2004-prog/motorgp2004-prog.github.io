---
layout: page
title: 文章索引
permalink: /articles/
---

所有文章都在這裡，新的會自動出現在最上面，不用手動加。

<ul>
{% for post in site.posts %}
  <li>{{ post.date | date: "%Y-%m-%d" }} — <a href="{{ post.url | relative_url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>

## 下載區

需要下載檔案請去 [下載區]({{ "/downloads/" | relative_url }})。
