# 测试前端应用

这是一个用于测试 CI/CD 流水线的简单 Vue3 应用。

## 功能特性

- ✅ Vue 3 + Composition API
- 🎨 现代化 UI 设计
- 🐳 Docker 容器化支持
- 🔄 CI/CD 流水线测试
- 📱 响应式设计

## 本地开发

### 安装依赖
```bash
npm install
```

### 启动开发服务器
```bash
npm run dev
```

### 构建生产版本
```bash
npm run build
```

### 预览生产版本
```bash
npm run preview
```

## Docker 部署

### 构建镜像
```bash
docker build -t test-frontend-app .
```

### 运行容器
```bash
docker run -p 80:80 test-frontend-app
```

## 项目结构

```
test-frontend-app/
├── src/
│   ├── App.vue          # 主应用组件
│   └── main.js          # 应用入口
├── public/              # 静态资源
├── Dockerfile           # Docker 配置
├── nginx.conf           # Nginx 配置
├── server.js            # Node.js 服务器
├── vite.config.js       # Vite 配置
└── package.json         # 项目配置
```

## 技术栈

- **前端框架**: Vue 3
- **构建工具**: Vite
- **Web服务器**: Nginx (生产环境)
- **容器化**: Docker
- **样式**: 原生 CSS

## CI/CD 测试

这个项目专门用于测试 Docker CI/CD 系统：

1. 将代码推送到 GitHub
2. 在 CI/CD 系统中输入仓库地址
3. 系统会自动克隆代码并构建 Docker 镜像
4. 下载构建好的镜像包进行部署

## 环境变量

- `PORT`: 服务器端口 (默认: 3000)

## 健康检查

访问 `/health` 端点可以检查应用状态：

```json
{
  "status": "ok",
  "timestamp": "2025-07-19T08:39:00.000Z",
  "version": "1.0.0"
}
```
