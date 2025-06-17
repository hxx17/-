1. 克隆仓库
bash
git clone https://github.com/your-username/logistics-dashboard.git
cd logistics-dashboard
2. 数据库初始化
bash
# 创建数据库
mysql -u root -p < database/init.sql

# 导入示例数据
mysql -u root -p logistics_db < database/sample_data.sql
3. 后端服务启动
bash
cd backend

# 创建虚拟环境（可选）
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows

# 安装依赖
pip install -r requirements.txt

# 启动服务
python app.py
4. 前端访问
打开 frontend/index.html 文件

或者通过本地服务器访问：

bash
# 使用Python内置服务器
cd frontend
python -m http.server
访问地址：http://localhost:8000

项目特色
模块化设计：

前后端分离架构

清晰的目录结构

独立的数据初始化脚本

完善的文档：

详细的README使用说明

API接口文档

数据库设计文档

开箱即用：

包含示例数据集

一键初始化脚本

明确的依赖管理

持续集成：

GitHub Actions 自动化测试

代码质量检测配置

自动构建文档

贡献指南
欢迎通过以下方式参与项目贡献：

提交Issue报告问题

Fork仓库并提交Pull Request

完善文档或添加测试用例

优化UI设计或添加新功能

许可证
本项目采用 MIT 许可证开源，允许自由使用和修改代码。

