from flask import Flask, jsonify
import mysql.connector
from datetime import datetime
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # 解决跨域问题


# 数据库配置
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'hx180231',
    'database': 'logistics_db'
}


def get_db_connection():
    conn = mysql.connector.connect(**db_config)
    return conn


@app.route('/api/logistics-data')
def logistics_data():
    try:
        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        # 1. 获取承运商分布数据
        cursor.execute("""
            SELECT carrier, COUNT(*) as count 
            FROM logistics 
            GROUP BY carrier
        """)
        carrier_data = cursor.fetchall()

        # 2. 获取路线运输量数据（按目的地分组）
        cursor.execute("""
            SELECT destination, SUM(weight_kg) as total_weight 
            FROM logistics 
            GROUP BY destination 
            ORDER BY total_weight DESC
            LIMIT 10
        """)
        route_data = cursor.fetchall()

        # 3. 获取月度运输趋势数据
        cursor.execute("""
            SELECT 
                MONTH(shipment_date) as month, 
                SUM(weight_kg) as total_weight,
                COUNT(*) as shipments_count
            FROM logistics 
            WHERE YEAR(shipment_date) = YEAR(CURDATE())
            GROUP BY MONTH(shipment_date)
            ORDER BY month
        """)
        trend_data = cursor.fetchall()

        # 4. 获取运输状态分布
        cursor.execute("""
            SELECT status, COUNT(*) as count 
            FROM logistics 
            GROUP BY status
        """)
        status_data = cursor.fetchall()

        # 5. 获取异常状态详细信息
        cursor.execute("""
            SELECT tracking_number, origin, destination, status
            FROM logistics 
            WHERE status IN ('Exception', 'Delayed')
            ORDER BY shipment_date DESC
            LIMIT 5
        """)
        exception_details = cursor.fetchall()

        # 6. 获取温度监控数据
        cursor.execute("""
            SELECT 
                tracking_number, 
                temperature,
                humidity,
                CONCAT(latitude, ',', longitude) as location
            FROM logistics 
            WHERE temperature IS NOT NULL
            ORDER BY shipment_date DESC
            LIMIT 5
        """)
        temp_monitor_data = cursor.fetchall()

        # 7. 获取统计卡片数据
        # 在途运单数
        cursor.execute("SELECT COUNT(*) as in_transit FROM logistics WHERE status = 'In Transit'")
        in_transit = cursor.fetchone()

        # 仓库利用率
        cursor.execute("""
            SELECT 
                ROUND(SUM(current_occupancy) / SUM(capacity) * 100, 2) as utilization 
            FROM warehouses
        """)
        warehouse_util = cursor.fetchone()

        # 当日发货量
        cursor.execute("""
            SELECT COUNT(*) as shipments_today 
            FROM logistics 
            WHERE DATE(shipment_date) = CURDATE()
        """)
        shipments_today = cursor.fetchone()

        # 异常率
        cursor.execute("""
            SELECT 
                ROUND(
                    SUM(CASE WHEN status IN ('Exception', 'Delayed') THEN 1 ELSE 0 END) / 
                    COUNT(*) * 100, 2
                ) as exception_rate 
            FROM logistics
        """)
        exception_rate = cursor.fetchone()

        cursor.close()
        conn.close()

        # 组织数据返回
        return jsonify({
            'carrierData': carrier_data,
            'routeData': route_data,
            'trendData': trend_data,
            'statusData': status_data,
            'exceptionDetails': exception_details,
            'tempMonitorData': temp_monitor_data,
            'stats': {
                'in_transit': in_transit['in_transit'],
                'warehouse_util': warehouse_util['utilization'],
                'shipments_today': shipments_today['shipments_today'],
                'exception_rate': exception_rate['exception_rate']
            },
            'timestamp': datetime.now().isoformat()
        })

    except Exception as e:
        return jsonify({'error': str(e)}), 500


if __name__ == '__main__':
    app.run(debug=True)