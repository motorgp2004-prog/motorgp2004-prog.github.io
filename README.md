# 蝦米碗糕之家（GitHub Pages + Jekyll）

免費部落格，瀏覽器就能更新，不用寫程式。

- 網站：https://motorgp2004-prog.github.io/
- 倉庫：https://github.com/motorgp2004-prog/motorgp2004-prog.github.io
- 後台入口：https://motorgp2004-prog.github.io/admin/

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
- 導覽列：`header_pages` 目前是 `index.md`、`about.md`、`portfolio.md`、`downloads.md`
- 文章網址：`permalink: /:year/:month/:day/:title/`，不會帶中文分類，乾淨好記

改完存檔等 1-2 分鐘，去 `Actions` 看部署跑完再重整。

## 發新文章（建議用 GitHub 網頁，最穩）

prose.io 目前連 GitHub 常出現 `從 Github 加載信息時出現了錯誤`，先不要用，照下面做：

1. 去倉庫的 `_posts` 資料夾
2. 按 `Add file` > `Create new file`
3. 檔名格式：`年-月-日-標題.md`，範例 `2026-09-12-taipei-trip.md`
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

注意：不要在 `---` 前面加任何字（例如 `## A New Post`），不然網站會長壞。

## 改頁面

- 關於我：改 `about.md`
- 作品集：改 `portfolio.md`，裡面的文章連結請貼完整網址，例如 `https://motorgp2004-prog.github.io/2026/09/11/welcome/`，不要只貼 `/2026/...`，不然在倉庫裡點會 404
- 下載區：改 `downloads.md`

改法都是：打開檔案按鉛筆 Edit，改完 `Commit changes`。

## 放 PDF 給人下載

1. 去 `assets/files/` 按 `Add file` > `Upload files` 上傳 PDF
2. 檔名用英文，例如 `report-2026.pdf`（中文檔名連結容易壞）
3. 去 `downloads.md` 加一行：`[下載我的報告](/assets/files/report-2026.pdf)`
4. 等 1-2 分鐘去下載區點點看

限制：網頁上傳單檔 25MB。這裡只放公開要分享的檔案，不要當雲端硬碟用（全部公開、空間小、沒自動同步）。

## 看成品還是改東西？

- 要看成品去 `motorgp2004-prog.github.io`，任何人免登入都能看
- 要改東西才去 `github.com` 的倉庫，需要登入
- 在倉庫的 `Code` 頁點文章連結會 404 是正常的，那是找檔案不是逛網站，要去真正的網站點

## Google 搜尋

- 新站幾天到兩週才會被收錄，現在打 `蝦米碗糕之家` 還搜不到是正常的
- 之後用 `site:motorgp2004-prog.github.io` 一定找得到
- 加速方法：去 `search.google.com/search-console` 新增資源並要求建立索引，sitemap 已經建好了就是上面的 `/sitemap.xml`
- 標題寫清楚在講什麼、多寫多分享，排名才會往前

## 本機檔案結構

```
my-blog/
  _config.yml      網站設定（標題、信箱、介紹、導覽、sitemap）
  index.md         首頁
  about.md         關於我
  portfolio.md     作品集
  downloads.md     下載區
  admin/index.html 後台入口（連到 prose.io、github.dev）
  assets/files/    可下載的 PDF 放這裡
  _posts/          所有文章
    2026-09-11-welcome.md
    2026-09-11-test.md
```
