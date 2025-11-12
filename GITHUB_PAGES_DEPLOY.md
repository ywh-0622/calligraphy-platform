# GitHub Pages 一键部署指南

## 🚀 快速部署步骤

### 1️⃣ 创建GitHub仓库

1. **访问GitHub** → https://github.com/new
2. **仓库名称**：`calligraphy-platform`
3. **仓库描述**：`墨韵书法篆刻艺术平台 - 传统艺术与现代技术的完美结合`
4. **选择 Public**（公开仓库）
5. **不要勾选** "Initialize this repository with a README"
6. 点击 **Create repository**

### 2️⃣ 配置Git远程仓库

在终端中执行以下命令（替换YOUR_USERNAME）：

```bash
cd /Users/yuanwenhao/ywh/calligraphy-learning/deploy
git remote add origin https://github.com/YOUR_USERNAME/calligraphy-platform.git
```

### 3️⃣ 推送代码到GitHub

```bash
# 添加所有文件
git add .

# 提交更改
git commit -m "🎉 初始部署：墨韵书法篆刻艺术平台"

# 推送到GitHub
git push -u origin gh-pages
```

### 4️⃣ 配置GitHub Pages

1. **进入仓库页面**
2. **点击 Settings 标签**
3. **找到 Pages 选项**（在左侧菜单）
4. **Source 设置**：
   - 选择 "Deploy from a branch"
   - Branch 选择 "gh-pages"
   - Folder 选择 "/ (root)"
5. **点击 Save**

### 5️⃣ 获取访问地址

配置完成后，您的访问地址将是：
```
https://YOUR_USERNAME.github.io/calligraphy-platform
```

## 🎯 一键部署脚本

我已经为您准备好了自动部署脚本，只需执行：

```bash
# 执行自动部署
./auto-deploy.sh
```

## 📱 平台功能预览

### 🖌️ 书法艺术模块
- ✅ **五大字体**：楷书、行书、草书、隶书、篆书
- ✅ **高清展示**：Unsplash高质量书法图片
- ✅ **智能筛选**：按字体、作者、热度筛选
- ✅ **作品详情**：完整作品信息和互动功能

### 🔴 篆刻艺术模块
- ✅ **专业展示**：汉印、秦印、古玺、明清流派、现代创新
- ✅ **材质分类**：寿山石、青田石、昌化石、巴林石
- ✅ **印章详情**：印文、风格、材质、尺寸信息
- ✅ **篆刻文化**：历史、技法、文化内涵

### 🎨 设计特色
- ✅ **水墨风UI**：传统书法配色与现代设计融合
- ✅ **响应式布局**：完美适配手机、平板、电脑
- ✅ **流畅交互**：悬停动画、过渡效果
- ✅ **社区功能**：用户注册、作品上传、点赞评论

## 🌐 在线访问

部署成功后，您将拥有一个专业的书法篆刻艺术展示平台！

**示例地址格式：**
```
https://your-username.github.io/calligraphy-platform
```

## 🚀 下一步操作

1. **立即创建GitHub仓库**
2. **执行推送命令**
3. **配置GitHub Pages**
4. **获得专属访问地址**

**🎉 恭喜您！即将拥有属于自己的书法篆刻艺术平台！**