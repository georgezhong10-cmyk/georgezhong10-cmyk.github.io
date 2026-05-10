# GitHub Pages Personal Blog Setup Guide

This project is a static bilingual blog that can be deployed to GitHub Pages without a build tool.

## 1. Create the repository

For a personal website, use this repository name:

```text
your-github-username.github.io
```

For example, if your username is `georgezhong10-cmyk`, the repository should be:

```text
georgezhong10-cmyk.github.io
```

If you publish from a regular repository, the final URL will be:

```text
https://your-github-username.github.io/repository-name/
```

## 2. Initialize and push the code

If this folder is not a Git repository yet, run this from the project root:

```bash
git init
git add .
git commit -m "Create bilingual GitHub Pages blog"
git branch -M main
git remote add origin https://github.com/your-github-username/your-github-username.github.io.git
git push -u origin main
```

If you already have a remote repository, verify the remote URL, commit the files, and push.

## 3. Enable GitHub Pages

Open the repository on GitHub:

1. Go to `Settings`.
2. Open `Pages`.
3. Under `Build and deployment`, choose `Deploy from a branch`.
4. Select `main` as the branch.
5. Select `/root` as the folder.
6. Save the settings.

GitHub will publish the site after a short wait.

## 4. Replace personal details

Start with these files:

- `index.html`: Chinese home page, navigation, and biography.
- `en/index.html`: English home page.
- `posts/zh/hello-github-pages.html`: Chinese sample post.
- `posts/en/hello-github-pages.html`: English sample post.
- `_config.yml`: site title, description, and production URL.
- `robots.txt` and `sitemap.xml`: replace the domain with your real GitHub Pages URL.

## 5. Write a new post

Suggested workflow:

1. Copy `posts/zh/hello-github-pages.html` or `posts/en/hello-github-pages.html`.
2. Rename it, for example `posts/en/llm-serving-notes.html`.
3. Update the title, date, summary, body, and language-switch link.
4. Add the post link to `index.html`, `en/index.html`, and `archive/index.html`.
5. Commit and push to GitHub.

## 6. Optional custom domain

If you own a domain such as `blog.example.com`:

1. Create a `CNAME` file at the repository root. The only content should be your domain.
2. Add a DNS CNAME record pointing to `your-github-username.github.io`.
3. Return to `Settings → Pages` and enter the custom domain.
4. Enable `Enforce HTTPS`.

## 7. Optional local preview

Use any static server, for example:

```bash
python3 -m http.server 8000
```

Then open:

```text
http://localhost:8000
```

## 8. Troubleshooting

- If CSS does not load, check the asset paths and whether the repository is published from a subpath.
- If the site shows 404, confirm that Pages uses the `main` branch and `/root` folder.
- If changes do not appear immediately, wait a moment or hard refresh the browser.
- If you use a custom domain, update `_config.yml`, `robots.txt`, and `sitemap.xml`.
