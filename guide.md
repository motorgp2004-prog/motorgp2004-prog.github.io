---
layout: page
title: 站長手冊（不要分享給別人）
permalink: /guide/
sitemap: false
robots: noindex
---

這一頁是給站長自己看的維護教學，沒有放進導覽列，知道網址的人才進得來。請不要把這個網址貼給別人。

## 發新文章

1. 去倉庫的 `_posts` 資料夾：https://github.com/motorgp2004-prog/motorgp2004-prog.github.io/tree/main/_posts
2. 按 `Add file` > `Create new file`
3. 檔名死規矩：`年-月-日-英文標題.md`，例如 `2026-09-12-taipei-food.md`
   - 不要空格、不要中文、結尾一定要 `.md`
4. 第一行一定要是 `---`，開頭貼這段再往下寫：

```markdown
---
layout: post
title: "這裡寫標題"
date: 2026-09-12 09:00:00 +0800
categories: [生活]
tags: [關鍵字1, 關鍵字2]
excerpt: "一句話摘要，會顯示在首頁和搜尋結果。"
---

這裡開始寫內文。
```

寫完什麼都不用改，文章總覽、分類、標籤、搜尋都會自動出現。

5. 按 `Commit changes`，等 1-2 分鐘去首頁看。
6. 去 `Actions` 看：黃點是還在部署，綠勾才是好了，好了再去重整網站（`Ctrl+F5`）。

## 刪文章

去 `_posts` 打開那個檔案，按右上角 `...` > `Delete file`，再按 `Commit changes`。

## 改頁面

- 關於我：`about.md`
- 作品集：`portfolio.md`，站內連結請用 `{{ "/2026/09/11/welcome/" | relative_url }}` 這種寫法（換網域不會壞）
- 下載區：`downloads.md`
- 改法：打開檔案按鉛筆 Edit，改完 `Commit changes`

## 貼圖片

1. 去 `assets/images/` 上傳圖片（英文檔名，單張 25MB 以內）
2. 在文章裡貼：`![說明](/assets/images/檔名.jpg)`

不能像 Word 直接 Ctrl+V，一定要先傳圖再貼這行。

## 放 PDF 下載

1. 小檔（<25MB）：`assets/files/` 網頁上傳（英文檔名）
2. 大檔（25-100MB）：本機 `git add` + `push`（AZBIL C7G 41.6MB 就是這樣加的）
3. 去 `downloads.md` 加一行：`[想顯示的名字]({{ "/assets/files/檔名.pdf" | relative_url }})`
4. 照片請放 `assets/images/`，不要放 `assets/files/`（小芸寫真已搬家）

## 找文章機制（全自動）

- `articles.md`：總覽＋年份＋全部列表
- `categories.md`：分類索引，`categories: [研究]` 這樣寫才會被收錄
- `tags.md`：標籤索引，`tags: [台新藥, ADC]` 這樣寫
- `search.md` + `search.json`：站內搜尋（simple-jekyll-search，不用外掛），新文章自動進搜尋
- 導覽列在 `_config.yml` 的 `header_pages`，已有搜尋、分類、標籤

## 看成品還是改東西？

- 看成品：`https://motorgp2004-prog.github.io/`（免登入）
- 改東西：`https://github.com/motorgp2004-prog/motorgp2004-prog.github.io`（要登入）
- 在倉庫 `Code` 頁點文章連結會 404 是正常的，那是找檔案不是逛網站

## Google 收尋

- 新站幾天到兩週才會被收錄，sitemap 在 `/sitemap.xml`
- 去 `search.google.com/search-console` 新增資源並要求建立索引會比較快
- 標題寫清楚在講什麼、多寫多分享，排名才會往前

## 後台入口

- `/admin/`：寫文章的三種方法總覽
- prose.io 目前不穩，先不要用，用 GitHub 網頁最穩

## 留言功能（Giscus，2026-09-11 已開好一半）

- Discussions 已經用 API 開好了（`has_discussions: true`）
- 還剩 2 步你要手動做（GitHub App 要你本人按同意，我沒辦法代按）：
  1. 到 `github.com/apps/giscus` 按 `Install`，只選 `motorgp2004-prog.github.io` 這個倉庫
  2. 到 `giscus.app` 選語言 zh-TW、選 repo、選 `Announcements` 分類，把 `repo-id` 跟 `category-id` 貼到 `_config.yml` 的 `giscus:` 區，並把 `enabled: false` 改 `true`
- 改完 commit，等 1-2 分鐘去任一篇文章底下看留言框
- 程式面已 ready：`_layouts/post.html` 會自動載入 `_includes/comments.html`，沒填 ID 前不會輸出 script，不拖速度
