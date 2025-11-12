#!/bin/bash

# GitHub Pages 部署脚本
# 墨韵书法篆刻艺术平台

echo "🎨 开始部署墨韵书法篆刻艺术平台到GitHub Pages..."

# 检查当前目录
cd /Users/yuanwenhao/ywh/calligraphy-learning/deploy

# 配置Git用户信息
echo "⚙️ 配置Git仓库..."
git config user.name "墨韵书法"
git config user.email "calligraphy@platform.com"

# 创建gh-pages分支
echo "🌿 创建gh-pages分支..."
git checkout -b gh-pages

# 配置GitHub远程仓库（用户需要替换为自己的仓库地址）
echo "🔗 配置远程仓库..."
echo "请在GitHub上创建一个新仓库，命名为 'calligraphy-platform'"
echo "然后将以下命令中的 YOUR_USERNAME 替换为您的GitHub用户名："
echo ""
echo "git remote add origin https://github.com/YOUR_USERNAME/calligraphy-platform.git"
echo ""

# 显示下一步操作
echo "📋 下一步操作："
echo ""
echo "1️⃣ 在GitHub创建仓库："
echo "   - 访问 https://github.com/new"
echo "   - 仓库名：calligraphy-platform"
echo "   - 选择 Public（公开）"
echo "   - 不要添加 README，保持空仓库"
echo ""
echo "2️⃣ 执行推送命令："
echo "   git remote add origin https://github.com/YOUR_USERNAME/calligraphy-platform.git"
echo "   git push -u origin gh-pages"
echo ""
echo "3️⃣ 配置GitHub Pages："
echo "   - 进入仓库 Settings → Pages"
echo "   - Source 选择 Deploy from a branch"
echo "   - Branch 选择 gh-pages"
echo "   - 保存后获得访问地址："
echo "   https://YOUR_USERNAME.github.io/calligraphy-platform"
echo ""
echo "🎉 部署完成后即可在线访问您的书法篆刻艺术平台！"

# 显示当前仓库状态
echo "📊 当前仓库状态："
git status
echo ""
echo "✅ 本地部署文件已准备就绪！"
echo "🚀 请按照上述步骤完成GitHub Pages部署！"