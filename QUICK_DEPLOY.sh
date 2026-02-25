#!/bin/bash

# 1039 TikTok 文案库 - 部署指南网站 快速部署脚本
# 用户名: 137838462-lang

set -e

echo "🚀 开始部署 1039 部署指南网站"
echo "================================"
echo ""

# 配置
GITHUB_USERNAME="137838462-lang"
REPO_NAME="1039-deployment-guide"
REPO_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

# 检查是否在项目目录
if [ ! -f "index.html" ]; then
    echo "❌ 错误：请在项目目录中运行此脚本"
    echo "正确的位置应该是：/home/ubuntu/deployment_guide_web"
    exit 1
fi

# 检查 git 是否已安装
if ! command -v git &> /dev/null; then
    echo "❌ 错误：未找到 git，请先安装 git"
    exit 1
fi

echo "📝 部署信息："
echo "  GitHub 用户名: ${GITHUB_USERNAME}"
echo "  仓库名称: ${REPO_NAME}"
echo "  仓库 URL: ${REPO_URL}"
echo ""

# 检查是否已配置远程
if git remote get-url origin &>/dev/null; then
    echo "⚙️  移除现有的远程配置..."
    git remote remove origin
fi

# 配置 git 远程
echo "⚙️  配置 Git 远程仓库..."
git remote add origin "${REPO_URL}"

# 重命名分支为 main
echo "📌 重命名分支为 main..."
git branch -M main

# 推送代码
echo ""
echo "📤 推送代码到 GitHub..."
echo "（如果提示输入密码，请使用 GitHub 个人访问令牌）"
echo ""

if git push -u origin main; then
    echo ""
    echo "✅ 代码推送成功！"
    echo ""
    echo "📋 后续步骤："
    echo "1. 访问 https://vercel.com"
    echo "2. 使用 GitHub 账户登录"
    echo "3. 点击 'New Project'"
    echo "4. 搜索并导入 '${REPO_NAME}' 仓库"
    echo "5. 保持默认配置，点击 'Deploy'"
    echo ""
    echo "🎉 部署完成后，您将获得永久 URL！"
    echo ""
    echo "📚 更多信息请查看 DEPLOY_INSTRUCTIONS.md"
else
    echo ""
    echo "❌ 推送失败，请检查以下几点："
    echo "1. 确保已在 GitHub 创建仓库："
    echo "   https://github.com/new"
    echo "   仓库名: ${REPO_NAME}"
    echo "   可见性: Public"
    echo ""
    echo "2. 如果使用 2FA，请使用个人访问令牌 (PAT)："
    echo "   https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token"
    echo ""
    echo "3. 检查网络连接"
    exit 1
fi
