# 我的博客（Hugo + Stack 主题）

零成本方案：Hugo 把 Markdown 文章变成静态网页，GitHub Pages 免费托管，全程不花一分钱。

## 日常使用（就两件事）

| 想做什么 | 怎么做 |
| -------- | ------ |
| 写文章 | 双击 `新建文章.bat`，输入英文短名，在弹出的记事本里写；**写完把 `draft: true` 改成 `false`** 才会发布 |
| 本地预览 | 双击 `启动本地预览.bat`，浏览器打开 <http://localhost:1313>，改文章会自动刷新 |

文章就是 `content/posts/` 里的 `.md` 文件，随时可以用 VS Code / Typora 等编辑器写。

## 常见修改都在哪

- **博客标题、副标题、每页文章数**：`hugo.toml`
- **关于页**：`content/page/about/index.md`
- **侧边栏头像**：把图片放到 `assets/img/avatar.png`（文件夹没有就新建），再在 `hugo.toml` 的 `[params.sidebar]` 里加一行 `avatar = "img/avatar.png"`
- **GitHub 链接**：`hugo.toml` 最底部的 `yourusername` 改成自己的用户名

## 发布到 GitHub Pages（一次性设置，之后全自动）

1. 登录 <https://github.com>，新建仓库，仓库名必须是 **`你的用户名.github.io`**（例如 `xiaoyong.github.io`），选 Public
2. 修改 `hugo.toml` 第 2 行：`baseURL = "https://你的用户名.github.io/"`
3. 在博客文件夹里打开命令行，执行：

   ```bash
   git init
   git add .
   git commit -m "first post"
   git branch -M main
   git remote add origin https://github.com/你的用户名/你的用户名.github.io.git
   git push -u origin main
   ```

4. GitHub 网页端：仓库 **Settings → Pages → Build and deployment → Source 选择 "GitHub Actions"**
5. 等 1~2 分钟，浏览器访问 `https://你的用户名.github.io` 就能看到博客

以后发新文章只要三步：

```bash
git add .
git commit -m "新文章"
git push
```

推送后 GitHub 会自动构建发布，无需其他操作。

## 其他说明

- `tools/` 里是本地下载的 Hugo 引擎，只是本地预览用，不需要上传（已在 `.gitignore` 里排除）
- 想换主题、加评论系统、加相册等，看 Stack 主题中文文档：<https://stack.jimmycai.com/>
- 想要更好记的网址（如 `blog.xxx.com`），以后可以买个域名绑定，不买完全不影响使用
