# GitHub Pages 个人博客部署指南

这套文件是一个不依赖构建工具的静态博客，适合直接部署到 GitHub Pages。

## 1. 创建仓库

个人主页推荐仓库名：

```text
你的 GitHub 用户名.github.io
```

例如用户名是 `georgezhong10-cmyk`，仓库名就是：

```text
georgezhong10-cmyk.github.io
```

如果你想把博客放在普通仓库，也可以使用任意仓库名，最终地址会是：

```text
https://你的用户名.github.io/仓库名/
```

## 2. 初始化并推送代码

如果当前文件夹还不是 Git 仓库，可以在项目根目录执行：

```bash
git init
git add .
git commit -m "Create bilingual GitHub Pages blog"
git branch -M main
git remote add origin https://github.com/你的用户名/你的用户名.github.io.git
git push -u origin main
```

如果你已经有远程仓库，只需要确认远程地址正确，然后提交并推送即可。

## 3. 开启 GitHub Pages

进入 GitHub 仓库页面：

1. 打开 `Settings`。
2. 点击左侧 `Pages`。
3. `Build and deployment` 选择 `Deploy from a branch`。
4. `Branch` 选择 `main`。
5. 文件夹选择 `/root`。
6. 点击 `Save`。

等待一到几分钟，GitHub 会显示站点地址。

## 4. 替换个人信息

建议先修改这些位置：

- `index.html`：中文首页内容、导航、个人介绍。
- `en/index.html`：英文首页内容。
- `posts/zh/hello-github-pages.html`：中文示例文章。
- `posts/en/hello-github-pages.html`：英文示例文章。
- `_config.yml`：站点标题、描述、线上地址。
- `robots.txt` 和 `sitemap.xml`：把里面的域名替换成你的真实 GitHub Pages 地址。

## 5. 写新文章

推荐流程：

1. 复制 `posts/zh/hello-github-pages.html` 或 `posts/en/hello-github-pages.html`。
2. 修改文件名，例如 `posts/zh/llm-serving-notes.html`。
3. 修改页面标题、日期、摘要、正文和语言切换链接。
4. 在 `index.html`、`en/index.html` 和 `archive/index.html` 加上文章入口。
5. 提交并推送到 GitHub。

## 6. 自定义域名，可选

如果你有自己的域名，例如 `blog.example.com`：

1. 在仓库根目录新建 `CNAME` 文件，内容只写域名。
2. 在域名 DNS 中添加 CNAME 记录，指向 `你的用户名.github.io`。
3. 回到 GitHub 仓库 `Settings → Pages`，填写 custom domain。
4. 勾选 `Enforce HTTPS`。

## 7. 本地预览，可选

你可以用任意静态服务器预览，例如：

```bash
python3 -m http.server 8000
```

然后访问：

```text
http://localhost:8000
```

## 8. 常见问题

- 如果 CSS 没加载，通常是路径或仓库子路径问题。个人主页仓库推荐使用 `用户名.github.io`，路径最简单。
- 如果页面是 404，确认 Pages 的分支是 `main`，目录是 `/root`。
- 如果更新后网页没变化，等一分钟或强制刷新浏览器缓存。
- 如果用了自定义域名，记得同步更新 `_config.yml`、`robots.txt` 和 `sitemap.xml`。
