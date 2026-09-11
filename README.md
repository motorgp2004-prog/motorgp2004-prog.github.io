# 蝦米碗糕之家（GitHub Pages + Jekyll）

免費部落格，瀏覽器就能更新，不用寫程式。

- 網站：https://motorgp2004-prog.github.io/
- 倉庫：https://github.com/motorgp2004-prog/motorgp2004-prog.github.io
- 後台入口：https://motorgp2004-prog.github.io/admin/
- 站長手冊（不公開、沒進導覽）：https://motorgp2004-prog.github.io/guide/

## 對外 vs 對內

- 對外（乾淨給客人看）：首頁、關於我、作品集、下載區，教學文字都清掉了
- 對內（只有站長看）：`/admin/`、`/guide/`，沒放進導覽列，不要分享網址給別人

## 網址一覽

- 首頁：https://motorgp2004-prog.github.io/
- 文章總覽：https://motorgp2004-prog.github.io/articles/
- 分類索引：https://motorgp2004-prog.github.io/categories/
- 標籤索引：https://motorgp2004-prog.github.io/tags/
- 站內搜尋：https://motorgp2004-prog.github.io/search/
- 關於我：https://motorgp2004-prog.github.io/about/
- 作品集：https://motorgp2004-prog.github.io/portfolio/
- 下載區：https://motorgp2004-prog.github.io/downloads/
- Sitemap：https://motorgp2004-prog.github.io/sitemap.xml
- RSS：https://motorgp2004-prog.github.io/feed.xml

## 網站設定（頁尾三塊）

都在 `_config.yml`：

- 左（網站名稱）：`title: 蝦米碗糕之家`
- 中（信箱）：`email: motorgp2004@icloud.com`
- 右（介紹）：`description: 蝦米碗糕之家：紀錄生活大小事...`（2026-09-11 已加長到 50 字，SEO 用）
- 導覽列：`header_pages` 目前是 `index.md`、`articles.md`、`categories.md`、`tags.md`、`search.md`、`about.md`、`portfolio.md`、`downloads.md`（`guide.md` 故意不放進去）
- 文章網址：`permalink: /:year/:month/:day/:title/`，不會帶中文分類，乾淨好記
- SEO：已加 `jekyll-seo-tag`，`twitter.card: summary`，`logo: /favicon.ico`，文章預設圖 `og-default.jpg`
- 留言：`giscus:` 區，`enabled: false` 等拿到 repo-id / category-id 再開（Discussions 已開好）

改完存檔等 1-2 分鐘，去 `Actions` 看部署跑完再重整（`Ctrl+F5`）。

## 發新文章（用 GitHub 網頁，最穩）

prose.io 已確認會壞（提交時 `從 Github 加載信息時出現了錯誤`，官方有人回報無人修），不要用，照下面做：

1. 去倉庫的 `_posts` 資料夾
2. 按 `Add file` > `Create new file`
3. 檔名死規矩：`年-月-日-英文標題.md`，範例 `2026-09-12-taipei-food.md`
   - 不要空格、不要中文、結尾一定要 `.md`，不然 Jekyll 直接無視
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

寫完自動進文章總覽、分類、標籤、搜尋，不用改其他頁。

5. 按 `Commit changes`，等 1-2 分鐘去首頁看。

## 刪文章

去 `_posts` 打開那個檔案，按右上角 `...` > `Delete file`，再按 `Commit changes`。

## 改頁面

- 關於我：改 `about.md`
- 作品集：改 `portfolio.md`，站內連結請用 `{{ "/2026/09/11/welcome/" | relative_url }}` 這種寫法（換網域不會壞）
- 下載區：改 `downloads.md`
- 首頁、關於我、作品集內文都有下載區連結，寫法統一用 `relative_url`
- 改法都是：打開檔案按鉛筆 Edit，改完 `Commit changes`

## 貼圖片（不能像 Word 直接 Ctrl+V）

1. 去 `assets/images/` 按 `Add file` > `Upload files` 上傳（英文檔名，單張 25MB 以內）
2. 在文章裡貼：`![說明](/assets/images/檔名.jpg)`
3. 範例文：`2026-09-11-image-demo.md`，範例圖：`assets/images/sample.svg`

## 放 PDF 給人下載

1. 小檔（<25MB）：去 `assets/files/` 按 `Add file` > `Upload files` 上傳（英文檔名）
2. 大檔（25-100MB，例如 AZBIL C7G 41.6MB）：網頁傳不上去，要用本機 `git add` + `push`
3. 去 `downloads.md` 的檔案列表加一行：`[想顯示的名字]({{ "/assets/files/檔名.pdf" | relative_url }})`

目前檔案：
- `honeywell-dcp700-manual.pdf`（11.7MB）
- `azbil-c7g-cp-sp-1402c-07.pdf`（41.6MB，2026-09-11 本機加入）
- `assets/images/xiaoyun-zoo-20260911.png`（1.2MB 寫真，照片放 images 不是 files）

限制：這裡只放公開要分享的檔案，不要當雲端硬碟用（全部公開、空間小、沒自動同步，大檔會拖慢 Pages 部署）。

## 看成品還是改東西？

- 要看成品去 `motorgp2004-prog.github.io`，任何人免登入都能看
- 要改東西才去 `github.com` 的倉庫，需要登入
- 在倉庫的 `Code` 頁點文章連結會 404 是正常的，那是找檔案不是逛網站，要去真正的網站點

## Google 搜尋

- 新站幾天到兩週才會被收錄，現在打站名搜不到是正常的
- 之後用 `site:motorgp2004-prog.github.io` 一定找得到
- 加速方法：去 `search.google.com/search-console` 新增資源並要求建立索引，sitemap 就是上面的 `/sitemap.xml`
- 標題寫清楚在講什麼、多寫多分享，排名才會往前

## 本機檔案結構

```
my-blog/
  _config.yml      網站設定（標題、信箱、介紹、導覽含搜尋、seo-tag、giscus）
  index.md         首頁（含封面＋找文章導航）
  about.md         關於我
  articles.md      文章總覽（統計＋分類＋年份＋全部）
  categories.md    分類索引（自動）
  tags.md          標籤索引（自動）
  search.md        站內搜尋（simple-jekyll-search）
  search.json      搜尋資料來源（自動產生）
  portfolio.md     作品集（台新藥＋寫真＋開站文＋排版範例）
  downloads.md     下載區（HONEYWELL + AZBIL C7G + 寫真）
  guide.md         站長手冊（不進導覽，sitemap: false + noindex）
  admin/index.html 後台入口（noindex，推 GitHub 網頁，prose.io 已標不穩）
  robots.txt       擋 /guide/ /admin/，指到 sitemap.xml
  Gemfile          本機預覽用 github-pages
  _layouts/post.html        文章版型（含留言區）
  _includes/comments.html   Giscus（沒填 ID 前不輸出）
  _includes/custom-head.html favicon + theme-color
  favicon.ico      根目錄圖示
  assets/files/    可下載的 PDF
    honeywell-dcp700-manual.pdf
    azbil-c7g-cp-sp-1402c-07.pdf
  assets/images/   文章圖片 + 社群圖
    sample.svg
    apple-touch-icon.png
    og-default.jpg
    xiaoyun-zoo-20260911.png
  _posts/          所有文章（都有 layout + tags + excerpt）
    2026-09-11-welcome.md    歡迎文
    2026-09-11-my-new-post.md 後台流程測試
    2026-09-11-image-demo.md  圖文範例（分類：教學）
    2026-09-11-hermes-test.md Hermes 測試
    2026-09-11-hermes-test-2.md Hermes 測試二
    2026-09-11-hermes-research.md 台新藥研究
    2026-09-11-xiaoyun-beautiful.md 妹妹寫真
  scripts/auto_sync_report.sh 每日報告同步（路徑需依本機改）
```

## 更新紀錄

- 2026-09-11 全站健檢：giscus 接線、seo-tag、robots、relative_url、PDF 改名、內容整理（a66effe）
- 2026-09-11 新增 AZBIL C7G CP-SP-1402C-07 到下載區（0d0235b）
- 2026-09-11 README 同步最新結構
- 2026-09-11 完美索引：分類+標籤+年份（5221263），合併遠端新文章（a7dd376）
- 2026-09-12 全部做到好：站內搜尋上線、索引互連、新文規格統一、照片搬家、導航全串起來
