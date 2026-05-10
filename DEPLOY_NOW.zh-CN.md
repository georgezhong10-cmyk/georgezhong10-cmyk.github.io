# 立即部署到 GitHub Pages

当前环境无法联网访问 GitHub，所以远程推送需要在你的本机终端执行。

## 1. 确认 GitHub 仓库存在

在 GitHub 新建空仓库：

```text
georgezhong10-cmyk.github.io
```

仓库地址应为：

```text
https://github.com/georgezhong10-cmyk/georgezhong10-cmyk.github.io
```

## 2. 一键推送

在终端运行：

```bash
cd "/Users/xpp/Documents/New project 2/blog-github-pages-repo"
bash deploy.sh
```

## 3. 开启 GitHub Pages

推送成功后，进入仓库页面：

```text
Settings -> Pages
```

设置：

```text
Source: Deploy from a branch
Branch: main
Folder: /root
```

保存后等待几分钟，访问：

```text
https://georgezhong10-cmyk.github.io/
```
