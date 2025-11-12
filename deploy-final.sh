#!/bin/bash

# 墨韵书法篆刻艺术平台 - GitHub Pages 一键部署脚本

echo "🎨 墨韵书法篆刻艺术平台 - GitHub Pages 一键部署"
echo "================================================"

# 获取GitHub用户名
echo "请输入您的GitHub用户名："
read -r GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ 错误：GitHub用户名不能为空"
    exit 1
fi

# 检查GitHub仓库是否存在
echo "🔍 检查GitHub仓库..."
REPO_URL="https://github.com/$GITHUB_USERNAME/calligraphy-platform"
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$REPO_URL")

if [ "$RESPONSE" != "200" ]; then
    echo "❌ 仓库不存在，请先创建仓库"
    echo "📋 创建步骤："
    echo "1. 访问 https://github.com/new"
    echo "2. 仓库名：calligraphy-platform"
    echo "3. 选择 Public"
    echo "4. 不要勾选 README"
    exit 1
fi

echo "✅ 找到GitHub仓库：$REPO_URL"

# 配置Git用户信息
echo "⚙️ 配置Git仓库..."
git config user.name "墨韵书法"
git config user.email "calligraphy@platform.com"

# 添加所有文件
echo "📦 添加部署文件..."
git add .

# 提交更改
echo "💾 提交部署文件..."
git commit -m "🎉 墨韵书法篆刻艺术平台 - GitHub Pages 部署"

# 配置远程仓库
echo "🔗 配置远程仓库..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/$GITHUB_USERNAME/calligraphy-platform.git

# 推送到GitHub
echo "🚀 推送到GitHub..."
git push -u origin gh-pages

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo ""
    echo "🎯 GitHub Pages 配置步骤："
    echo ""
    echo "1️⃣ 访问您的GitHub仓库："
    echo "   $REPO_URL"
    echo ""
    echo "2️⃣ 进入 Settings → Pages："
    echo "   $REPO_URL/settings/pages"
    echo ""
    echo "3️⃣ 配置GitHub Pages："
    echo "   - Source: Deploy from a branch"
    echo "   - Branch: gh-pages"
    echo "   - Folder: / (root)"
    echo "   - 点击 Save"
    echo ""
    echo "4️⃣ 等待几分钟，然后访问："
    echo "   🌐 https://$GITHUB_USERNAME.github.io/calligraphy-platform"
    echo ""
    echo "🎉 您的书法篆刻艺术平台即将上线！"
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo ""
    echo "1️⃣ GitHub用户名是否正确：$GITHUB_USERNAME"
    echo "2️⃣ 是否已创建仓库 'calligraphy-platform'"
    echo "3️⃣ 网络连接是否正常"
    echo "4️⃣ 是否有GitHub访问权限"
    echo ""
    echo "您可以手动执行："
    echo "git push -u origin gh-pages"
fi