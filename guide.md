---
layout: page
title: 站長手冊（不要分享給別人）
permalink: /guide/
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
categories: 生活
---

這裡開始寫內文。
```

5. 按 `Commit changes`，等 1-2 分鐘去首頁看。
6. 去 `Actions` 看：黃點是還在部署，綠勾才是好了，好了再去重整網站（`Ctrl+F5`）。

## 刪文章

去 `_posts` 打開那個檔案，按右上角 `...` > `Delete file`，再按 `Commit changes`。

## 改頁面

- 關於我：`about.md`
- 作品集：`portfolio.md`，文章連結請貼完整網址（例如 `https://motorgp2004-prog.github.io/2026/09/11/welcome/`），不要只貼 `/2026/...`，不然在倉庫裡點會 404
- 下載區：`downloads.md`
- 改法：打開檔案按鉛筆 Edit，改完 `Commit changes`

## 貼圖片

1. 去 `assets/images/` 上傳圖片（英文檔名，單張 25MB 以內）
2. 在文章裡貼：`![說明](/assets/images/檔名.jpg)`

不能像 Word 直接 Ctrl+V，一定要先傳圖再貼這行。

## 放 PDF 下載

1. 去 `assets/files/` 上傳 PDF（英文檔名，25MB 以內）
2. 去 `downloads.md` 加一行：`[想顯示的名字](/assets/files/檔名.pdf)`

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
