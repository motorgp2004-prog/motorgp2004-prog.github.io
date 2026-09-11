# 我的免費部落格（GitHub Pages + Jekyll）

完全免費、不用寫程式、用瀏覽器就能更新。

## 一次性上線步驟（約10分鐘）

1. 去 github.com 註冊帳號（免費）
2. 新增一個 Repository（倉庫），名字取 `your-username.github.io`
   - `your-username` 換成你的帳號名稱，一定要完全一樣
   - 選 Public，勾選 Add a README
3. 把這個資料夾裡的所有檔案上傳到那個倉庫：
   - 在倉庫頁面按 `Add file` > `Upload files`，把 `my-blog` 裡的檔案全拖上去
   - 按 `Commit changes`
4. 去倉庫的 `Settings` > `Pages`：
   - Source 選 `Deploy from a branch`
   - Branch 選 `main` / `root`，按 Save
5. 等 1-3 分鐘，打開 `https://your-username.github.io` 就能看到網站了！

以後改 `_config.yml` 裡的 `url:` 改成你的網址，例如 `https://your-username.github.io`

## 日常維護：怎麼發新文章？（手機也可以）

1. 在 GitHub 倉庫裡進入 `_posts` 資料夾
2. 按 `Add file` > `Create new file`
3. 檔名一定要照這個格式：`年-月-日-標題.md`
   - 範例：`2026-09-12-taipei-trip.md`
4. 檔案開頭貼上這段，然後往下寫內容：

```markdown
---
layout: post
title: "這裡寫標題"
date: 2026-09-12 09:00:00 +0800
categories: 生活
---

這裡開始寫內文，可以用 Markdown。
```

5. 按 `Commit changes`，等 1 分鐘網站就會自動更新。

## 怎麼改「關於我」和「作品集」？

- 直接在 GitHub 上打開 `about.md` 或 `portfolio.md`
- 按鉛筆（Edit）圖示修改，按 `Commit changes` 存檔即可。

## 常見問題

- **改完沒看到變化？** 等 1-3 分鐘，GitHub 要重新部署。去 `Actions` 分頁可以看到有沒有在跑。
- **想要自己的網址？** 去買網域（約300-400元/年），再到 `Settings > Pages > Custom domain` 設定即可，網站本身還是免費。
- **照片放哪？** 先把照片上傳到 `_posts` 旁邊新增一個 `images` 資料夾，再用 `![說明](/images/檔名.jpg)` 引用。

## 本機檔案結構

```
my-blog/
  _config.yml      網站設定（標題、作者）
  index.md         首頁
  about.md         關於我
  portfolio.md     作品集
  _posts/          所有文章都放這裡
    2026-09-11-welcome.md
```
