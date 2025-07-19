<template>
  <div class="container">
    <div class="logo">🚀</div>
    <h1>测试前端应用</h1>
    <p class="subtitle">CI/CD 流水线测试项目</p>
    
    <div class="features">
      <div class="feature">
        <h3>✅ Vue 3 应用</h3>
        <p>使用最新的 Vue 3 Composition API</p>
      </div>
      
      <div class="feature">
        <h3>🐳 Docker 支持</h3>
        <p>支持容器化部署</p>
      </div>
      
      <div class="feature">
        <h3>🔄 自动构建</h3>
        <p>通过 CI/CD 系统自动构建和部署</p>
      </div>
    </div>
    
    <div class="counter">
      <h3>计数器演示</h3>
      <p>当前计数: {{ count }}</p>
      <button @click="increment">增加</button>
      <button @click="decrement">减少</button>
      <button @click="reset">重置</button>
    </div>
    
    <div class="status">
      <h3>应用状态</h3>
      <p>✅ 应用运行正常</p>
      <p>🕒 构建时间: {{ buildTime }}</p>
      <p>📦 版本: {{ version }}</p>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

// 响应式数据
const count = ref(0)
const buildTime = ref('')
const version = ref('1.0.0')

// 方法
const increment = () => {
  count.value++
}

const decrement = () => {
  count.value--
}

const reset = () => {
  count.value = 0
}

// 生命周期
onMounted(() => {
  buildTime.value = new Date().toLocaleString('zh-CN')
  console.log('🚀 测试应用已启动!')
  console.log('📦 这是一个用于测试 CI/CD 流水线的简单 Vue3 应用')
})
</script>

<style scoped>
.container {
  background: white;
  border-radius: 20px;
  padding: 2rem;
  box-shadow: 0 20px 40px rgba(0,0,0,0.1);
  text-align: center;
  /* max-width: 500px; */
  /* width: 90%; */
  margin: 2rem auto;
}

.logo {
  font-size: 3rem;
  margin-bottom: 1rem;
}

h1 {
  color: #333;
  margin-bottom: 1rem;
  font-size: 2rem;
}

.subtitle {
  color: #666;
  margin-bottom: 2rem;
  font-size: 1.1rem;
}

.features {
  display: grid;
  gap: 1rem;
  margin: 2rem 0;
}

.feature {
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 10px;
  border-left: 4px solid #667eea;
  text-align: left;
}

.feature h3 {
  margin-bottom: 0.5rem;
  color: #333;
}

.feature p {
  color: #666;
  font-size: 0.9rem;
}

.counter {
  background: #667eea;
  color: white;
  padding: 1rem;
  border-radius: 10px;
  margin: 1rem 0;
}

.counter h3 {
  margin-bottom: 1rem;
}

.counter p {
  font-size: 1.2rem;
  margin-bottom: 1rem;
}

button {
  background: rgba(255,255,255,0.2);
  color: white;
  border: 1px solid rgba(255,255,255,0.3);
  padding: 0.5rem 1rem;
  border-radius: 20px;
  cursor: pointer;
  font-size: 0.9rem;
  margin: 0.25rem;
  transition: all 0.3s ease;
}

button:hover {
  background: rgba(255,255,255,0.3);
  transform: translateY(-1px);
}

.status {
  margin-top: 2rem;
  padding: 1rem;
  background: #e8f5e8;
  border-radius: 10px;
  color: #2d5a2d;
  text-align: left;
}

.status h3 {
  margin-bottom: 0.5rem;
  text-align: center;
}

.status p {
  margin: 0.25rem 0;
  font-size: 0.9rem;
}
</style>
