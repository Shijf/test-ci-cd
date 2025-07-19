# 使用说明

## 📋 测试 CI/CD 系统步骤

### 1. 推送到 GitHub

首先将这个项目推送到你的 GitHub 仓库：

```bash
# 添加远程仓库
git remote add origin https://github.com/你的用户名/test-frontend-app.git

# 推送代码
git push -u origin main
```

### 2. 使用 CI/CD 系统构建

1. 打开你的 Docker CI/CD 系统前端界面
2. 在构建表单中输入 GitHub 仓库地址：
   ```
   https://github.com/你的用户名/test-frontend-app.git
   ```
3. 点击"开始构建"按钮
4. 系统会自动：
   - 克隆代码到本地
   - 检测到 Dockerfile
   - 执行 Docker 构建
   - 生成镜像包

### 3. 下载和部署

1. 构建完成后，下载生成的镜像包（.tar 文件）
2. 在目标服务器上加载镜像：
   ```bash
   docker load < test-frontend-app.tar
   ```
3. 运行容器：
   ```bash
   docker run -d -p 80:80 test-frontend-app:latest
   ```

### 4. 验证部署

访问 `http://服务器IP` 应该能看到：
- 🚀 测试前端应用界面
- ✅ Vue 3 应用正常运行
- 🎯 计数器功能可以正常使用

## 🔧 本地测试

### 开发模式
```bash
npm install
npm run dev
```
访问: http://localhost:3000

### 生产构建
```bash
npm run build
```

### Docker 测试
```bash
# 构建镜像
docker build -t test-frontend-app .

# 运行容器
docker run -p 8080:80 test-frontend-app

# 或使用部署脚本
./deploy.sh
```

## 📁 项目特点

- ✅ **简单易懂**: 基础的 Vue3 应用，便于理解构建流程
- 🐳 **Docker 就绪**: 包含完整的 Dockerfile 和 nginx 配置
- 🚀 **多阶段构建**: 优化的 Docker 镜像大小
- 📱 **响应式设计**: 现代化的 UI 界面
- 🔍 **健康检查**: 包含应用状态监控
- 📋 **完整文档**: 详细的使用说明和部署指南

## 🎯 测试要点

使用这个应用测试 CI/CD 系统时，重点验证：

1. **代码克隆**: 系统能否正确从 GitHub 克隆代码
2. **依赖安装**: npm install 是否成功
3. **应用构建**: npm run build 是否正常
4. **镜像构建**: Docker 多阶段构建是否成功
5. **镜像打包**: 生成的 .tar 文件是否完整
6. **部署验证**: 加载镜像后应用是否正常运行

## 🐛 常见问题

**Q: 构建失败，提示网络错误**
A: 检查网络连接，确保能访问 npm 仓库

**Q: Docker 构建慢**
A: 可以配置 npm 镜像源，在 Dockerfile 中添加：
```dockerfile
RUN npm config set registry https://registry.npmmirror.com
```

**Q: 容器启动后无法访问**
A: 检查端口映射和防火墙设置
