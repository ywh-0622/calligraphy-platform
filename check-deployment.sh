#!/bin/bash

# 墨韵书法篆刻艺术平台 - 部署状态检查脚本
echo "🎨 检查GitHub Pages部署状态"
echo "============================"

# 检查Git状态
echo "📊 Git仓库状态："
git status

echo ""
echo "🔗 远程仓库配置："
git remote -v

echo ""
echo "📋 最近提交记录："
git log --oneline -3

echo ""
echo "🌐 测试GitHub Pages访问："
curl -I https://ywh-0622.github.io/calligraphy-platform 2>/dev/null | head -3

echo ""
echo "🎯 下一步操作建议："
echo "1. 访问：https://github.com/ywh-0622/calligraphy-platform/settings/pages"
echo "2. 确保Source设置为：gh-pages 分支"
echo "3. 如果Save按钮灰色，等待30秒后重试"
echo "4. 或直接联系GitHub支持"
echo ""
echo "🚀 备用访问地址：http://localhost:3000"