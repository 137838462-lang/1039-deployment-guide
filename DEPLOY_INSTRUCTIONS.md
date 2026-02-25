# 部署指南网站 - 自动部署说明

本文档说明如何将"1039 TikTok 文案库 - 部署指南"网站部署到 Vercel 并获得永久 URL。

## 📋 前置要求

- GitHub 账户（免费）
- Vercel 账户（免费，可用 GitHub 账户登录）

## 🚀 自动部署步骤

### 第一步：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 填写仓库信息：
   - **Repository name**: `1039-deployment-guide`
   - **Description**: `1039市场采购 × TikTok爆款文案库 - 永久网站部署指南`
   - **Visibility**: 选择 **Public**（重要！）
3. 点击 **Create repository**

### 第二步：推送代码到 GitHub

在您的电脑/服务器上执行以下命令（将 YOUR_USERNAME 替换为您的 GitHub 用户名）：

```bash
cd /home/ubuntu/deployment_guide_web

# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/1039-deployment-guide.git

# 重命名分支为 main
git branch -M main

# 推送代码
git push -u origin main
```

**如果遇到身份验证问题**，请使用 GitHub 个人访问令牌 (PAT)：
- [创建 GitHub PAT 教程](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)

### 第三步：在 Vercel 部署

#### 方法 A：Web 界面（推荐）

1. 访问 https://vercel.com
2. 点击 **Sign Up** 或 **Log In**
3. 选择 **Continue with GitHub** 进行 OAuth 授权
4. 授权 Vercel 访问您的 GitHub 账户
5. 返回 Vercel 后，点击 **New Project**
6. 在 **Import Git Repository** 中搜索 `1039-deployment-guide`
7. 选择该仓库，点击 **Import**
8. 保持默认配置，点击 **Deploy**
9. 等待部署完成（通常 1-2 分钟）

#### 方法 B：Vercel CLI（推荐开发者）

```bash
# 全局安装 Vercel CLI
npm install -g vercel

# 在项目目录下执行
cd /home/ubuntu/deployment_guide_web
vercel

# 按照提示进行身份验证和配置
```

## ✅ 部署完成

部署成功后，您将获得一个永久 URL，例如：

```
https://1039-deployment-guide.vercel.app
```

这个 URL 将**永久有效**，无需任何维护成本。

## 🔄 自动更新

部署后，如果您想更新网站内容：

1. 编辑本地文件（例如 `index.html`）
2. 提交更改：
   ```bash
   git add .
   git commit -m "Update: 您的更改描述"
   git push
   ```
3. Vercel 会自动检测到更改并重新部署（1-2 分钟）

## 🎯 配置自定义域名（可选）

如果您想使用自己的域名：

1. 在 Vercel 项目设置中找到 **Domains** 部分
2. 点击 **Add Domain**
3. 输入您的域名（例如：`deployment-guide.1039-tiktok.com`）
4. 按照提示配置 DNS 记录
5. 等待 DNS 生效（通常 24 小时）

## 📊 部署后的优势

✅ **永久在线** - 24/7 可访问  
✅ **自动 HTTPS** - 安全加密  
✅ **全球 CDN** - 快速加载  
✅ **自动部署** - 代码更新自动上线  
✅ **完全免费** - 无任何成本  
✅ **无需维护** - 完全托管  

## 🆘 常见问题

### Q: 部署失败怎么办？

A: 请检查以下几点：
- 确保 GitHub 仓库是 **Public**（公开）
- 确保所有文件都已正确推送
- 检查 Vercel 的 Build Logs 查看具体错误

### Q: 如何回滚到之前的版本？

A: 在 Vercel 项目的 **Deployments** 标签中：
1. 找到之前的部署
2. 点击该部署的 **...** 菜单
3. 选择 **Promote to Production**

### Q: 网站加载很慢怎么办？

A: Vercel 会自动使用 CDN 加速，通常速度很快。如果仍然很慢：
- 检查您的网络连接
- 在 Vercel 设置中选择离您最近的地区

## 📞 获得帮助

- **Vercel 官方文档**：https://vercel.com/docs
- **GitHub 官方文档**：https://docs.github.com
- **Vercel 支持**：https://vercel.com/support

---

**准备好了吗？现在就开始部署您的永久网站吧！** 🚀
