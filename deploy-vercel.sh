#!/bin/bash

# 墨韵书法篆刻艺术平台 - Vercel 部署脚本
echo "🚀 开始 Vercel 部署 - 墨韵书法篆刻艺术平台"
echo "=========================================="

# 检查是否已安装 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "📦 正在安装 Vercel CLI..."
    npm install -g vercel
fi

# 检查当前目录
echo "📁 当前部署目录：$(pwd)"
echo ""

# 显示项目结构
echo "📂 项目文件结构："
ls -la
echo ""

# 检查必要文件
echo "🔍 检查必要文件："
if [ -f "index.html" ]; then
    echo "✅ index.html - 存在"
else
    echo "❌ index.html - 缺失"
fi

if [ -f "vercel.json" ]; then
    echo "✅ vercel.json - 存在"
else
    echo "❌ vercel.json - 缺失"
fi

if [ -f "package.json" ]; then
    echo "✅ package.json - 存在"
else
    echo "❌ package.json - 缺失"
fi
echo ""

# 提供两种部署方式
echo "🎯 请选择部署方式："
echo "1️⃣ 交互式部署（推荐） - 通过浏览器登录"
echo "2️⃣ 快速部署 - 使用GitHub集成"
echo "3️⃣ 手动部署 - 提供详细步骤"
echo ""

echo "请输入选项 (1/2/3):"
read -r DEPLOY_OPTION

case $DEPLOY_OPTION in
    1)
        echo "🌐 启动交互式部署..."
        echo "请按照浏览器提示完成登录和部署"
        vercel --prod
        ;;
    2)
        echo "⚡ 快速部署模式"
        echo "正在执行 Vercel 部署..."
        vercel deploy --prod --yes
        ;;
    3)
        echo "📋 手动部署步骤："
        echo ""
        echo "1️⃣ 访问 Vercel 官网：https://vercel.com"
        echo "2️⃣ 使用 GitHub 账号登录"
        echo "3️⃣ 点击 'New Project'"
        echo "4️⃣ 导入 'ywh-0622/calligraphy-platform' 仓库"
        echo "5️⃣ 框架预设选择 'Other'"
        echo "6️⃣ 构建命令留空（静态网站）"
        echo "7️⃣ 输出目录设置为 '.'"
        echo "8️⃣ 点击 'Deploy' 按钮"
        echo ""
        echo "🎯 或者直接在终端执行："
        echo "vercel --prod"
        ;;
    *)
        echo "❌ 无效选项，默认使用交互式部署"
        vercel --prod
        ;;
esac

echo ""
echo "🎉 部署完成！"
echo ""
echo "📱 平台特色功能："
echo "🖌️ 书法艺术展示 - 五大字体作品"
echo "🔴 篆刻艺术展示 - 专业印章分类"  
echo "🎨 水墨风UI设计 - 传统美学"
echo "👥 用户社区功能 - 注册上传点赞"
echo ""
echo "🔗 部署成功后，您将获得："
echo "- 免费访问地址：xxx.vercel.app"
echo "- 支持自定义域名"
echo "- 全球CDN加速"
echo "- 自动HTTPS"
echo "- 每次推送自动部署"
echo ""
echo "📞 如有问题，请检查："
echo "1. Vercel CLI是否安装成功"
echo "2. 网络连接是否正常"
echo "3. GitHub仓库是否公开"
echo "4. 文件是否完整上传"