---
layout: page
title: 標籤索引
permalink: /tags/
---

所有文章的標籤雲，數字是該標籤有幾篇。點標籤可跳到該區。

共 {{ site.tags.size }} 個標籤、{{ site.posts.size }} 篇文章。

## 標籤雲

<p>
{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
  {% assign tag_name = tag[0] %}
  {% assign tag_posts = tag[1] %}
  <a href="#tag-{{ tag_name | url_encode }}" style="margin-right: 10px; white-space: nowrap;">{{ tag_name }}（{{ tag_posts.size }}）</a>
{% endfor %}
</p>

---

{% assign sorted_tags = site.tags | sort %}
{% for tag in sorted_tags %}
  {% assign tag_name = tag[0] %}
  {% assign tag_posts = tag[1] %}
## <span id="tag-{{ tag_name | url_encode }}">{{ tag_name }}</span>（{{ tag_posts.size }} 篇）

<ul>
{% assign sorted_posts = tag_posts | sort: "date" | reverse %}
{% for post in sorted_posts %}
  <li>{{ post.date | date: "%Y-%m-%d" }} — <a href="{{ post.url | relative_url }}">{{ post.title }}</a>【{{ post.categories | join: "、" }}】</li>
{% endfor %}
</ul>

{% endfor %}

## 相關索引

- [站內搜尋]({{ "/search/" | relative_url }})
- [文章總覽]({{ "/articles/" | relative_url }})
- [分類索引]({{ "/categories/" | relative_url }})
- [下載區]({{ "/downloads/" | relative_url }})
