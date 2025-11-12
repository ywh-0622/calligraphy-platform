import { createServer } from 'http';
import { readFile } from 'fs/promises';
import { join, extname } from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const port = process.env.PORT || 3000;
const publicDir = __dirname;

const mimeTypes = {
  '.html': 'text/html',
  '.js': 'text/javascript',
  '.css': 'text/css',
  '.json': 'application/json',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon'
};

const server = createServer(async (req, res) => {
  let pathname = new URL(req.url, `http://${req.headers.host}`).pathname;
  
  // 处理SPA路由
  if (!pathname.includes('.') || pathname.endsWith('/')) {
    pathname = '/index.html';
  }
  
  // 移除开头的斜杠
  if (pathname.startsWith('/')) {
    pathname = pathname.slice(1);
  }
  
  const filePath = join(publicDir, pathname);
  
  try {
    const data = await readFile(filePath);
    const ext = extname(filePath).toLowerCase();
    const contentType = mimeTypes[ext] || 'application/octet-stream';
    
    res.writeHead(200, { 
      'Content-Type': contentType,
      'Cache-Control': 'public, max-age=3600'
    });
    res.end(data);
  } catch (err) {
    if (err.code === 'ENOENT') {
      // 文件不存在，返回404
      res.writeHead(404, { 'Content-Type': 'text/html' });
      res.end(`
        <!DOCTYPE html>
        <html>
        <head>
          <title>404 - 页面不存在</title>
          <style>
            body { 
              font-family: Arial, sans-serif; 
              display: flex; 
              justify-content: center; 
              align-items: center; 
              height: 100vh; 
              margin: 0;
              background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
            }
            .container { 
              text-align: center; 
              padding: 40px; 
              background: white; 
              border-radius: 20px; 
              box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            }
            h1 { color: #92400e; font-size: 48px; margin-bottom: 20px; }
            p { color: #64748b; font-size: 18px; margin-bottom: 30px; }
            a { 
              background: #d97706; 
              color: white; 
              padding: 12px 24px; 
              border-radius: 8px; 
              text-decoration: none; 
              font-weight: 500;
              transition: background 0.3s;
            }
            a:hover { background: #b45309; }
          </style>
        </head>
        <body>
          <div class="container">
            <h1>🖌️ 404</h1>
            <p>抱歉，您访问的页面不存在</p>
            <a href="/">返回首页</a>
          </div>
        </body>
        </html>
      `);
    } else {
      // 服务器错误
      res.writeHead(500, { 'Content-Type': 'text/plain' });
      res.end('500 - 服务器内部错误');
    }
  }
});

server.listen(port, () => {
  console.log(`🎨 墨韵书法篆刻艺术平台服务器已启动！`);
  console.log(`📍 访问地址：http://localhost:${port}`);
  console.log(`🖌️ 平台特色：书法 + 篆刻艺术展示`);
  console.log(`🔴 篆刻专区：汉印、秦印、古玺、明清流派`);
  console.log(`📜 书法模块：楷书、行书、草书、隶书、篆书`);
  console.log(`✨ 水墨风UI设计，响应式布局`);
});

// 优雅关闭
process.on('SIGTERM', () => {
  console.log('🛑 服务器正在关闭...');
  server.close(() => {
    console.log('✅ 服务器已关闭');
    process.exit(0);
  });
});

process.on('SIGINT', () => {
  console.log('\n🛑 收到中断信号，正在关闭服务器...');
  server.close(() => {
    console.log('✅ 服务器已关闭');
    process.exit(0);
  });
});