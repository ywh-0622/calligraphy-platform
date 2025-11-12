#!/bin/bash

# 墨韵书法篆刻艺术平台 - GitHub Pages 一键部署脚本
# 自动完成GitHub Pages部署流程

echo "🎨 墨韵书法篆刻艺术平台 - GitHub Pages 一键部署"
echo "================================================"

# 检查当前目录
cd /Users/yuanwenhao/ywh/calligraphy-learning/deploy

# 获取GitHub用户名
echo "请输入您的GitHub用户名："
read -r GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ 错误：GitHub用户名不能为空"
    exit 1
fi

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
git remote add origin https://github.com/$GITHUB_USERNAME/calligraphy-platform.git

# 推送到GitHub
echo "🚀 推送到GitHub..."
git push -u origin gh-pages

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo ""
    echo "🎯 下一步操作："
    echo ""
    echo "1️⃣ 访问您的GitHub仓库："
    echo "   https://github.com/$GITHUB_USERNAME/calligraphy-platform"
    echo ""
    echo "2️⃣ 配置GitHub Pages："
    echo "   - 进入 Settings → Pages"
    echo "   - Source 选择 'Deploy from a branch'"
    echo "   - Branch 选择 'gh-pages'"
    echo "   - 点击 Save"
    echo ""
    echo "3️⃣ 等待几分钟，然后访问："
    echo "   https://$GITHUB_USERNAME.github.io/calligraphy-platform"
    echo ""
    echo "🎉 您的书法篆刻艺术平台即将上线！"
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo ""
    echo "1️⃣ 是否已在GitHub创建仓库 'calligraphy-platform'"
    echo "2️⃣ GitHub用户名是否正确"
    echo "3️⃣ 网络连接是否正常"
    echo ""
    echo "请手动执行以下命令："
    echo "git remote add origin https://github.com/$GITHUB_USERNAME/calligraphy-platform.git"
    echo "git push -u origin gh-pages"
fi