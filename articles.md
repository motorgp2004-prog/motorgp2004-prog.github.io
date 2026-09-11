---
layout: page
title: 文章總覽
permalink: /articles/
---

本站共 {{ site.posts.size }} 篇文章、{{ site.categories.size }} 個分類、{{ site.tags.size }} 個標籤。新的會自動出現在最上面，不用手動加。

## 快速導航

- [分類索引]({{ "/categories/" | relative_url }})：依主題找文
- [標籤索引]({{ "/tags/" | relative_url }})：依關鍵字找文
- [下載區]({{ "/downloads/" | relative_url }})

## 依分類看

<ul>
{% assign sorted_cats = site.categories | sort %}
{% for category in sorted_cats %}
  <li><a href="{{ "/categories/" | relative_url }}#cat-{{ category[0] | url_encode }}">{{ category[0] }}</a>（{{ category[1].size }} 篇）</li>
{% endfor %}
</ul>

## 依年份看

{% assign posts_by_year = site.posts | group_by_exp: "post", "post.date | date: '%Y'" %}
{% for year in posts_by_year %}
### {{ year.name }} 年（{{ year.items.size }} 篇）

<ul>
{% for post in year.items %}
  <li>{{ post.date | date: "%m-%d" }} — <a href="{{ post.url | relative_url }}">{{ post.title }}</a>【{{ post.categories | join: "、" }}】</li>
{% endfor %}
</ul>
{% endfor %}

## 全部文章（含標籤）

<ul>
{% for post in site.posts %}
  <li>{{ post.date | date: "%Y-%m-%d" }} — <a href="{{ post.url | relative_url }}">{{ post.title }}</a>【{{ post.categories | join: "、" }}】{% if post.tags.size > 0 %}（{{ post.tags | join: "、" }}）{% endif %}</li>
{% endfor %}
</ul>
