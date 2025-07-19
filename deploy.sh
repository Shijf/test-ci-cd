#!/bin/bash

# 测试前端应用部署脚本

echo "🚀 开始部署测试前端应用..."

# 检查 Docker 是否运行
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker 未运行，请启动 Docker"
    exit 1
fi

# 构建镜像
echo "📦 构建 Docker 镜像..."
docker build -t test-frontend-app:latest .

if [ $? -ne 0 ]; then
    echo "❌ 镜像构建失败"
    exit 1
fi

# 停止并删除旧容器（如果存在）
echo "🧹 清理旧容器..."
docker stop test-frontend-app 2>/dev/null || true
docker rm test-frontend-app 2>/dev/null || true

# 运行新容器
echo "🚀 启动新容器..."
docker run -d \
    --name test-frontend-app \
    -p 8080:80 \
    --restart unless-stopped \
    test-frontend-app:latest

if [ $? -eq 0 ]; then
    echo "✅ 部署成功！"
    echo "📍 应用地址: http://localhost:8080"
    echo "🔍 容器状态: docker ps | grep test-frontend-app"
    echo "📋 容器日志: docker logs test-frontend-app"
else
    echo "❌ 部署失败"
    exit 1
fi
