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
- 關於我：https://motorgp2004-prog.github.io/about/
- 作品集：https://motorgp2004-prog.github.io/portfolio/
- 下載區：https://motorgp2004-prog.github.io/downloads/
- Sitemap：https://motorgp2004-prog.github.io/sitemap.xml
- RSS：https://motorgp2004-prog.github.io/feed.xml

## 網站設定（頁尾三塊）

都在 `_config.yml`：

- 左（網站名稱）：`title: 蝦米碗糕之家`
- 中（信箱）：`email: motorgp2004@icloud.com`
- 右（介紹）：`description: 紀錄生活大小事。`
- 導覽列：`header_pages` 目前是 `index.md`、`about.md`、`portfolio.md`、`downloads.md`（`guide.md` 故意不放進去）
- 文章網址：`permalink: /:year/:month/:day/:title/`，不會帶中文分類，乾淨好記

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
categories: 生活
---

這裡開始寫內文。
```

5. 按 `Commit changes`，等 1-2 分鐘去首頁看。

## 刪文章

去 `_posts` 打開那個檔案，按右上角 `...` > `Delete file`，再按 `Commit changes`。

## 改頁面

- 關於我：改 `about.md`
- 作品集：改 `portfolio.md`，文章連結請貼完整網址（例如 `https://motorgp2004-prog.github.io/2026/09/11/welcome/`），不要只貼 `/2026/...`，不然在倉庫裡點會 404
- 下載區：改 `downloads.md`
- 首頁、關於我、作品集內文都有下載區連結，改連結三個地方要一起改
- 改法都是：打開檔案按鉛筆 Edit，改完 `Commit changes`

## 貼圖片（不能像 Word 直接 Ctrl+V）

1. 去 `assets/images/` 按 `Add file` > `Upload files` 上傳（英文檔名，單張 25MB 以內）
2. 在文章裡貼：`![說明](/assets/images/檔名.jpg)`
3. 範例文：`2026-09-11-image-demo.md`，範例圖：`assets/images/sample.svg`

## 放 PDF 給人下載

1. 去 `assets/files/` 上傳 PDF（英文檔名，25MB 以內）
2. 去 `downloads.md` 的檔案列表加一行：`[想顯示的名字](/assets/files/檔名.pdf)`

限制：這裡只放公開要分享的檔案，不要當雲端硬碟用（全部公開、空間小、沒自動同步）。

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
  _config.yml      網站設定（標題、信箱、介紹、導覽、sitemap）
  index.md         首頁（乾淨版）
  about.md         關於我（乾淨版）
  portfolio.md     作品集（乾淨版）
  downloads.md     下載區
  guide.md         站長手冊（不進導覽）
  admin/index.html 後台入口（推 GitHub 網頁，prose.io 已標不穩）
  assets/files/    可下載的 PDF（25083492.pdf 等）
  assets/images/   文章圖片（sample.svg 等）
  _posts/          所有文章
    2026-09-11-welcome.md    歡迎文（乾淨版）
    2026-09-11-my-new-post.md 站長自己發的第一篇
    2026-09-11-image-demo.md  圖文範例
```
