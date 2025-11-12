#!/bin/bash
# 启动本地HTTP服务器

echo "🚀 启动墨韵书法篆刻艺术平台..."
echo "📍 访问地址：http://localhost:8080"

# Python 3
if command -v python3 &> /dev/null; then
    cd "$(dirname "$0")" && python3 -m http.server 8080
# Python 2
elif command -v python &> /dev/null; then
    cd "$(dirname "$0")" && python -m SimpleHTTPServer 8080
# Node.js http-server
elif command -v npx &> /dev/null; then
    cd "$(dirname "$0")" && npx http-server -p 8080
else
    echo "❌ 未找到合适的HTTP服务器，请手动部署到Web服务器"
    exit 1
fi
