import mysql.connector
from datetime import datetime

# 数据库配置信息
db_config = {
    'host': 'localhost',
    'user': 'root',  # 替换为你的MySQL用户名
    'password': 'hx180231',  # 替换为你的MySQL密码
    'auth_plugin': 'mysql_native_password'  # 根据你的认证方式可能需要
}


def create_database_and_tables():
    try:
        # 连接到MySQL服务器
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor()

        # 创建数据库
        cursor.execute("CREATE DATABASE IF NOT EXISTS logistics_db")
        cursor.execute("USE logistics_db")

        # 创建运输记录表
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS shipments (
            id INT AUTO_INCREMENT PRIMARY KEY,
            tracking_number VARCHAR(50) NOT NULL,
            origin VARCHAR(100) NOT NULL,
            destination VARCHAR(100) NOT NULL,
            transport_type ENUM('road', 'rail', 'air', 'sea') NOT NULL,
            cargo_type ENUM('electronics', 'clothing', 'food', 'chemicals', 'machinery', 'other') NOT NULL,
            weight DECIMAL(10,2) NOT NULL,
            distance DECIMAL(10,2) NOT NULL,
            ship_date DATETIME NOT NULL,
            estimated_delivery DATE NOT NULL,
            actual_delivery DATE,
            status ENUM('processing', 'in_transit', 'delivered', 'exception') NOT NULL DEFAULT 'processing',
            region ENUM('north', 'south', 'east', 'west', 'central', 'northeast', 'northwest') NOT NULL
        )
        """)

        # 创建车辆表
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS vehicles (
            id INT AUTO_INCREMENT PRIMARY KEY,
            license_plate VARCHAR(20) NOT NULL,
            vehicle_type VARCHAR(50) NOT NULL,
            capacity DECIMAL(10,2) NOT NULL,
            current_location VARCHAR(100),
            status ENUM('available', 'in_transit', 'maintenance') NOT NULL DEFAULT 'available'
        )
        """)

        # 创建仓库表
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS warehouses (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(100) NOT NULL,
            location VARCHAR(100) NOT NULL,
            capacity DECIMAL(10,2) NOT NULL,
            current_occupancy DECIMAL(10,2) NOT NULL DEFAULT 0
        )
        """)

        # 插入运输记录数据
        shipments_data = [
            ('TRK123456', '上海', '北京', 'road', 'electronics', 1500.00, 1200.00,
             '2023-10-01 08:30:00', '2023-10-03', '2023-10-03', 'delivered', 'east'),
            ('TRK789012', '广州', '成都', 'air', 'food', 800.00, 1400.00,
             '2023-10-02 10:15:00', '2023-10-02', '2023-10-02', 'delivered', 'south'),
            ('TRK345678', '天津', '武汉', 'rail', 'machinery', 2500.00, 1100.00,
             '2023-10-03 14:00:00', '2023-10-05', None, 'in_transit', 'north'),
            ('TRK901234', '深圳', '西安', 'road', 'electronics', 1800.00, 1800.00,
             '2023-10-04 09:45:00', '2023-10-07', None, 'in_transit', 'south'),
            ('TRK567890', '青岛', '重庆', 'sea', 'chemicals', 3200.00, 2200.00,
             '2023-10-05 13:20:00', '2023-10-10', None, 'in_transit', 'east'),
            ('TRK123789', '杭州', '沈阳', 'road', 'clothing', 1200.00, 1500.00,
             '2023-10-06 11:10:00', '2023-10-08', None, 'in_transit', 'east'),
            ('TRK456123', '南京', '兰州', 'rail', 'other', 2000.00, 1600.00,
             '2023-10-07 16:30:00', '2023-10-09', None, 'in_transit', 'central')
        ]

        insert_shipment = """
        INSERT INTO shipments (
            tracking_number, origin, destination, transport_type, cargo_type,
            weight, distance, ship_date, estimated_delivery, actual_delivery, status, region
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        cursor.executemany(insert_shipment, shipments_data)

        # 插入车辆数据
        vehicles_data = [
            ('沪A12345', '重型卡车', 20000.00, '上海', 'available'),
            ('粤B56789', '厢式货车', 8000.00, '广州', 'in_transit'),
            ('京C24680', '冷藏车', 12000.00, '北京', 'available'),
            ('津D13579', '平板车', 15000.00, '天津', 'in_transit'),
            ('鲁E11223', '罐车', 18000.00, '青岛', 'maintenance')
        ]

        insert_vehicle = """
        INSERT INTO vehicles (
            license_plate, vehicle_type, capacity, current_location, status
        ) VALUES (%s, %s, %s, %s, %s)
        """
        cursor.executemany(insert_vehicle, vehicles_data)

        # 插入仓库数据
        warehouses_data = [
            ('上海中心仓', '上海市浦东新区', 50000.00, 12000.00),
            ('广州华南仓', '广州市天河区', 45000.00, 18000.00),
            ('北京华北仓', '北京市大兴区', 60000.00, 25000.00),
            ('成都西南仓', '成都市双流区', 40000.00, 15000.00),
            ('武汉华中仓', '武汉市东西湖区', 35000.00, 10000.00)
        ]

        insert_warehouse = """
        INSERT INTO warehouses (
            name, location, capacity, current_occupancy
        ) VALUES (%s, %s, %s, %s)
        """
        cursor.executemany(insert_warehouse, warehouses_data)

        # 提交事务
        connection.commit()
        print("数据库和表创建成功，示例数据已插入！")

    except mysql.connector.Error as err:
        print(f"数据库操作错误: {err}")
        connection.rollback()
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()


if __name__ == "__main__":
    create_database_and_tables()