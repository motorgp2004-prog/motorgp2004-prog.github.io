---
layout: page
title: 站內搜尋
permalink: /search/
---

找文章最快的方式：輸入關鍵字（標題、分類、標籤都會找）。

<input type="text" id="search-input" placeholder="例如：台新藥、妹妹、Hermes、教學…" style="width:100%; padding:12px; font-size:16px; border-radius:10px; border:1px solid #ccc;">

<ul id="results-container" style="margin-top:16px; line-height:2;"></ul>

<script src="https://unpkg.com/simple-jekyll-search@latest/dest/simple-jekyll-search.min.js"></script>
<script>
(function() {
  SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '{{ "/search.json" | relative_url }}',
    searchResultTemplate: '<li><a href="{url}">{title}</a>（{date}｜{categories}）</li>',
    noResultsText: '找不到，換個關鍵字試試，或去 <a href="{{ "/categories/" | relative_url }}">分類索引</a> / <a href="{{ "/tags/" | relative_url }}">標籤索引</a> 逛逛。',
    limit: 30,
    fuzzy: false
  });
})();
</script>

## 不想打字？

- [文章總覽]({{ "/articles/" | relative_url }})：全部列表＋年份
- [分類索引]({{ "/categories/" | relative_url }})：依主題找
- [標籤索引]({{ "/tags/" | relative_url }})：依關鍵字找
- 熱門：台新藥、妹妹、Hermes、測試、教學
