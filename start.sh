#!/bin/bash

# 物理课堂资料站 - 快速启动脚本

echo "🚀 物理课堂资料站 - 本地启动"
echo "================================"

cd "$(dirname "$0")"

# 检查Python
if ! command -v python3 &> /dev/null; then
    echo "❌ 错误：未找到Python3"
    echo "请先安装Python3: https://www.python.org"
    exit 1
fi

echo "✅ Python3 已找到"
echo ""
echo "📁 项目目录: $(pwd)"
echo ""

# 查找可用端口
PORT=8000
while lsof -i :$PORT >/dev/null 2>&1; do
    PORT=$((PORT+1))
done

echo "🌐 启动Web服务器..."
echo "📍 访问地址: http://localhost:$PORT/login.html"
echo ""
echo "📝 登录凭证:"
echo "   用户名: tabito"
echo "   密码: butsuri"
echo ""
echo "⌨️  按 Ctrl+C 停止服务器"
echo "================================"
echo ""

python3 -m http.server $PORT
