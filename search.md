---
layout: page
title: 站內搜尋
permalink: /search/
---

找文章最快的方式：輸入關鍵字（標題、分類、標籤、摘要都會找，不分大小寫）。

<input type="text" id="search-input" placeholder="例如：台新藥、妹妹、Hermes、教學…" style="width:100%; padding:12px; font-size:16px; border-radius:10px; border:1px solid #ccc;" autocomplete="off">

<p id="search-count" style="color:#666; margin:12px 0 0;"></p>
<ul id="results-container" style="margin-top:8px; line-height:2;"></ul>

<script>
(function() {
  var input = document.getElementById('search-input');
  var results = document.getElementById('results-container');
  var count = document.getElementById('search-count');
  var posts = [];
  var catUrl = '{{ "/categories/" | relative_url }}';
  var tagUrl = '{{ "/tags/" | relative_url }}';

  function esc(s) {
    return String(s == null ? '' : s)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;');
  }

  function haystack(p) {
    var cats = (p.categories || []).join(' ');
    var tags = (p.tags || []).join(' ');
    return ((p.title || '') + ' ' + cats + ' ' + tags + ' ' + (p.excerpt || '')).toLowerCase();
  }

  function render(list, q) {
    if (!q) {
      count.textContent = '共 ' + posts.length + ' 篇，全部列出如下：';
    } else if (list.length === 0) {
      count.textContent = '';
      results.innerHTML = '找不到，換個關鍵字試試，或去 <a href="' + catUrl + '">分類索引</a> / <a href="' + tagUrl + '">標籤索引</a> 逛逛。';
      return;
    } else {
      count.textContent = '找到 ' + list.length + ' 篇：';
    }
    results.innerHTML = list.map(function(p) {
      var cats = (p.categories || []).join('、');
      var tags = (p.tags || []).join('、');
      return '<li><a href="' + esc(p.url) + '">' + esc(p.title) + '</a>（' + esc(p.date) + '｜' + esc(cats) + '）' + (tags ? '<br><small style="color:#666;">' + esc(tags) + '</small>' : '') + '</li>';
    }).join('');
  }

  function onInput() {
    var q = input.value.trim().toLowerCase();
    if (!q) { render(posts, ''); return; }
    var keys = q.split(/\s+/);
    var list = posts.filter(function(p) {
      var h = haystack(p);
      return keys.every(function(k) { return h.indexOf(k) !== -1; });
    });
    render(list.slice(0, 30), q);
  }

  fetch('{{ "/search.json" | relative_url }}', { cache: 'no-store' })
    .then(function(r) { if (!r.ok) throw new Error('HTTP ' + r.status); return r.json(); })
    .then(function(data) {
      posts = Array.isArray(data) ? data : [];
      render(posts, '');
    })
    .catch(function() {
      count.textContent = '';
      results.innerHTML = '搜尋資料載入失敗，請重整頁面（Ctrl+F5）再試。';
    });

  input.addEventListener('input', onInput);
})();
</script>

## 不想打字？

- [文章總覽]({{ "/articles/" | relative_url }})：全部列表＋年份
- [分類索引]({{ "/categories/" | relative_url }})：依主題找
- [標籤索引]({{ "/tags/" | relative_url }})：依關鍵字找
- 熱門：台新藥、妹妹、Hermes、測試、教學
