---
layout: page
title: 分類索引
permalink: /categories/
---

所有文章依分類整理，點分類可跳到該區。每篇文章底下的標籤可再連到標籤索引。

共 {{ site.categories.size }} 個分類、{{ site.posts.size }} 篇文章。

## 分類一覽

<ul>
{% assign sorted_cats = site.categories | sort %}
{% for category in sorted_cats %}
  {% assign cat_name = category[0] %}
  {% assign cat_posts = category[1] %}
  <li><a href="#cat-{{ cat_name | url_encode }}">{{ cat_name }}</a>（{{ cat_posts.size }} 篇）</li>
{% endfor %}
</ul>

---

{% assign sorted_cats = site.categories | sort %}
{% for category in sorted_cats %}
  {% assign cat_name = category[0] %}
  {% assign cat_posts = category[1] %}
## <span id="cat-{{ cat_name | url_encode }}">{{ cat_name }}</span>（{{ cat_posts.size }} 篇）

<ul>
{% assign sorted_posts = cat_posts | sort: "date" | reverse %}
{% for post in sorted_posts %}
  <li>{{ post.date | date: "%Y-%m-%d" }} — <a href="{{ post.url | relative_url }}">{{ post.title }}</a>{% if post.tags.size > 0 %}（{% for t in post.tags %}<a href="{{ "/tags/" | relative_url }}#tag-{{ t | url_encode }}">{{ t }}</a>{% unless forloop.last %}、{% endunless %}{% endfor %}）{% endif %}</li>
{% endfor %}
</ul>

{% endfor %}

## 相關索引

- [站內搜尋]({{ "/search/" | relative_url }})
- [文章總覽]({{ "/articles/" | relative_url }})
- [標籤索引]({{ "/tags/" | relative_url }})
- [下載區]({{ "/downloads/" | relative_url }})
