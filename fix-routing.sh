#!/bin/bash

# 墨韵书法篆刻艺术平台 - 路由修复脚本
echo "🔧 修复Vercel部署路由问题"
echo "========================"
echo ""

echo "📋 问题分析："
echo "Vue SPA应用使用history模式，在静态托管平台上需要特殊配置"
echo ""

echo "🛠️ 修复方案："
echo ""

# 检查当前路由配置
echo "1️⃣ 检查当前路由配置："
if [ -f "vercel.json" ]; then
    echo "✅ vercel.json 存在"
    echo "当前配置："
    cat vercel.json
else
    echo "❌ vercel.json 不存在"
fi
echo ""

# 创建修复后的路由配置
echo "2️⃣ 创建修复后的路由配置："
cat > vercel.json << 'EOF'
{
  "version": 2,
  "name": "calligraphy-platform",
  "routes": [
    {
      "src": "/assets/(.*)",
      "dest": "/assets/$1"
    },
    {
      "src": "/favicon.ico",
      "dest": "/favicon.ico"
    },
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ],
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ]
}
EOF

echo "✅ 路由配置已更新"
echo ""

# 检查文件完整性
echo "3️⃣ 检查文件完整性："
files=("index.html" "assets" "vercel.json")
for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        echo "✅ $file - 存在"
    else
        echo "❌ $file - 缺失"
    fi
done
echo ""

# 提供重新部署指导
echo "4️⃣ 重新部署指导："
echo ""
echo "🎯 方案一：Vercel一键重新部署"
echo "   访问：https://vercel.com/new/clone?repository-url=https://github.com/ywh-0622/calligraphy-platform"
echo "   点击Deploy，使用新的路由配置"
echo ""
echo "🎯 方案二：手动重新部署"
echo "   1. 推送到GitHub：git add . && git commit -m '修复路由配置' && git push"
echo "   2. Vercel会自动重新部署"
echo ""
echo "🎯 方案三：Netlify拖拽部署"
echo "   访问：https://app.netlify.com/drop"
echo "   拖拽当前文件夹到网页"
echo ""

echo "5️⃣ 路由测试清单："
echo "   ✅ 主页：/"
echo "   ✅ 登录：/login"
echo "   ✅ 注册：/register"
echo "   ✅ 作品展示：/works"
echo "   ✅ 篆刻展示：/seal-engraving"
echo "   ✅ 用户中心：/profile"
echo "   ✅ 搜索：/search"
echo ""

echo "🎨 平台功能："
echo "   🖌️ 书法艺术 - 五大字体高清展示"
echo "   🔴 篆刻艺术 - 专业印章分类展示"
echo "   🎨 水墨风UI - 传统美学设计"
echo "   👥 社区功能 - 用户注册上传互动"
echo ""

echo "🔗 技术支持："
echo "   如还有问题，可尝试使用hash模式路由"
echo "   或联系各平台技术支持"
echo ""
echo "✅ 路由修复完成！请重新部署验证效果"