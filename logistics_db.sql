/*
 Navicat MySQL Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : logistics_db

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 16/06/2025 21:58:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tracking_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `origin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `destination` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('In Transit','Delayed','Delivered','Processing','Exception') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carrier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weight_kg` decimal(5, 2) NULL DEFAULT NULL,
  `shipment_date` datetime(0) NULL DEFAULT NULL,
  `estimated_delivery` datetime(0) NULL DEFAULT NULL,
  `actual_delivery` datetime(0) NULL DEFAULT NULL,
  `temperature` float NULL DEFAULT NULL,
  `humidity` int(0) NULL DEFAULT NULL,
  `latitude` decimal(9, 6) NULL DEFAULT NULL,
  `longitude` decimal(9, 6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tracking_number`(`tracking_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES (1, 'SF17500725449190', '西安', '杭州', 'Delivered', '顺丰', 39.47, '2025-06-12 19:15:45', '2025-06-13 19:15:45', '2025-06-16 19:15:45', 29, 72, 37.727412, 119.621944);
INSERT INTO `logistics` VALUES (2, 'SF17500725446141', '南京', '上海', 'In Transit', '京东物流', 10.20, '2025-06-09 19:15:45', '2025-06-14 19:15:45', NULL, 30.4, 61, 44.579687, 112.893070);
INSERT INTO `logistics` VALUES (3, 'SF17500725444736', '成都', '西安', 'In Transit', '韵达', 1.95, '2025-06-15 19:15:45', '2025-06-17 19:15:45', NULL, 30.6, 63, 34.594081, 123.406943);
INSERT INTO `logistics` VALUES (4, 'SF17500725444410', '上海', '杭州', 'Processing', 'FedEx', 8.76, '2025-06-11 19:15:45', '2025-06-17 19:15:45', NULL, 15.9, 67, 21.847971, 101.204507);
INSERT INTO `logistics` VALUES (5, 'SF17500725443539', '深圳', '上海', 'Delivered', '顺丰', 17.20, '2025-06-14 19:15:45', '2025-06-24 19:15:45', '2025-06-19 19:15:45', 6.6, 85, 35.882989, 118.435184);
INSERT INTO `logistics` VALUES (6, 'SF17500725441630', '武汉', '杭州', 'Delivered', 'UPS', 43.93, '2025-06-15 19:15:45', '2025-06-23 19:15:45', '2025-06-25 19:15:45', 13.4, 77, 35.254026, 121.843150);
INSERT INTO `logistics` VALUES (7, 'SF17500725445454', '沈阳', '北京', 'In Transit', 'FedEx', 28.42, '2025-06-12 19:15:45', '2025-06-16 19:15:45', NULL, 10.6, 51, 38.256369, 100.641281);
INSERT INTO `logistics` VALUES (8, 'SF17500725446853', '沈阳', '南京', 'Delivered', '德邦', 0.60, '2025-06-09 19:15:45', '2025-06-19 19:15:45', '2025-06-21 19:15:45', 5.1, 77, 22.584477, 108.396203);
INSERT INTO `logistics` VALUES (9, 'SF17500725449948', '北京', '南京', 'In Transit', 'FedEx', 49.16, '2025-06-13 19:15:45', '2025-06-15 19:15:45', NULL, 33.2, 63, 29.396818, 102.671618);
INSERT INTO `logistics` VALUES (10, 'SF17500725447703', '深圳', '成都', 'In Transit', 'EMS', 32.24, '2025-06-11 19:15:45', '2025-06-12 19:15:45', NULL, 26.2, 76, 35.460731, 112.535644);
INSERT INTO `logistics` VALUES (11, 'SF17500725449885', '深圳', '西安', 'In Transit', 'UPS', 28.58, '2025-06-15 19:15:45', '2025-06-25 19:15:45', NULL, 25.7, 47, 34.161220, 110.025134);
INSERT INTO `logistics` VALUES (12, 'SF17500725448652', '广州', '深圳', 'Processing', 'DHL', 9.10, '2025-06-15 19:15:45', '2025-06-16 19:15:45', NULL, 6.2, 64, 24.708990, 117.170798);
INSERT INTO `logistics` VALUES (13, 'SF17500725444118', '西安', '杭州', 'Processing', '圆通', 17.35, '2025-06-09 19:15:45', '2025-06-18 19:15:45', NULL, 12.3, 71, 22.007136, 105.085802);
INSERT INTO `logistics` VALUES (14, 'SF17500725446450', '深圳', '南京', 'Processing', 'DHL', 15.15, '2025-06-16 19:15:45', '2025-06-21 19:15:45', NULL, 9.1, 76, 34.962587, 121.806579);
INSERT INTO `logistics` VALUES (15, 'SF17500725447511', '南京', '杭州', 'In Transit', '京东物流', 3.20, '2025-06-09 19:15:45', '2025-06-11 19:15:45', NULL, 22.6, 30, 40.143712, 104.517408);
INSERT INTO `logistics` VALUES (16, 'SF17500725449645', '西安', '杭州', 'In Transit', 'EMS', 6.77, '2025-06-11 19:15:45', '2025-06-13 19:15:45', NULL, 26.6, 83, 34.238367, 102.823746);
INSERT INTO `logistics` VALUES (17, 'SF17500725448783', '杭州', '广州', 'Delivered', '德邦', 17.53, '2025-06-09 19:15:45', '2025-06-11 19:15:45', '2025-06-11 19:15:45', 7.1, 66, 30.968721, 109.501921);
INSERT INTO `logistics` VALUES (18, 'SF17500725443938', '沈阳', '北京', 'Delivered', 'DHL', 27.80, '2025-06-14 19:15:45', '2025-06-22 19:15:45', '2025-06-20 19:15:45', 19.9, 60, 24.315149, 112.026498);
INSERT INTO `logistics` VALUES (19, 'SF17500725444159', '北京', '南京', 'Exception', '顺丰', 42.45, '2025-06-16 19:15:45', '2025-06-25 19:15:45', NULL, 33.6, 41, 34.676993, 100.802227);
INSERT INTO `logistics` VALUES (20, 'SF17500725449178', '北京', '成都', 'Delayed', '中通', 40.65, '2025-06-14 19:15:45', '2025-06-23 19:15:45', NULL, 19.9, 80, 40.029022, 123.663710);
INSERT INTO `logistics` VALUES (21, 'SF17500725441945', '上海', '成都', 'In Transit', '中通', 9.94, '2025-06-09 19:15:45', '2025-06-11 19:15:45', NULL, 34.3, 44, 30.675662, 112.626334);
INSERT INTO `logistics` VALUES (22, 'SF17500725446247', '深圳', '沈阳', 'Delivered', 'UPS', 23.48, '2025-06-15 19:15:45', '2025-06-22 19:15:45', '2025-06-19 19:15:45', 17.2, 32, 39.520714, 107.798686);
INSERT INTO `logistics` VALUES (23, 'SF17500725442883', '杭州', '南京', 'Exception', 'DHL', 47.89, '2025-06-15 19:15:45', '2025-06-19 19:15:45', NULL, 23.7, 76, 31.468763, 113.019321);
INSERT INTO `logistics` VALUES (24, 'SF17500725445907', '沈阳', '成都', 'In Transit', 'EMS', 9.82, '2025-06-10 19:15:45', '2025-06-14 19:15:45', NULL, 24.8, 83, 34.963226, 104.460314);
INSERT INTO `logistics` VALUES (25, 'SF17500725447038', '南京', '深圳', 'Exception', '韵达', 39.09, '2025-06-12 19:15:45', '2025-06-20 19:15:45', NULL, 6.1, 81, 41.345824, 100.447582);
INSERT INTO `logistics` VALUES (26, 'SF17500725449320', '北京', '深圳', 'Delayed', '京东物流', 28.36, '2025-06-12 19:15:45', '2025-06-14 19:15:45', NULL, 10.5, 56, 33.418584, 101.447081);
INSERT INTO `logistics` VALUES (27, 'SF17500725448498', '沈阳', '武汉', 'Delivered', 'EMS', 32.85, '2025-06-16 19:15:45', '2025-06-19 19:15:45', '2025-06-22 19:15:45', 19.1, 67, 40.323470, 113.670818);
INSERT INTO `logistics` VALUES (28, 'SF17500725447065', '西安', '南京', 'Delivered', '京东物流', 25.60, '2025-06-10 19:15:45', '2025-06-16 19:15:45', '2025-06-16 19:15:45', -1.2, 72, 43.417118, 111.659672);
INSERT INTO `logistics` VALUES (29, 'SF17500725449118', '武汉', '西安', 'Processing', '圆通', 45.28, '2025-06-09 19:15:45', '2025-06-10 19:15:45', NULL, 32.9, 43, 31.382628, 101.885357);
INSERT INTO `logistics` VALUES (30, 'SF17500725444284', '上海', '南京', 'In Transit', '德邦', 9.56, '2025-06-14 19:15:45', '2025-06-18 19:15:45', NULL, 4.7, 46, 44.994949, 105.044135);
INSERT INTO `logistics` VALUES (31, 'SF17500725448771', '成都', '南京', 'Delivered', 'UPS', 28.19, '2025-06-10 19:15:45', '2025-06-17 19:15:45', '2025-06-14 19:15:45', -2.2, 38, 26.879871, 117.783859);
INSERT INTO `logistics` VALUES (32, 'SF17500725443303', '成都', '沈阳', 'In Transit', '韵达', 21.42, '2025-06-16 19:15:45', '2025-06-19 19:15:45', NULL, 1.8, 39, 21.226459, 115.353360);
INSERT INTO `logistics` VALUES (33, 'SF17500725448882', '武汉', '成都', 'Exception', '德邦', 8.27, '2025-06-13 19:15:45', '2025-06-21 19:15:45', NULL, 14.5, 45, 37.956184, 118.853678);
INSERT INTO `logistics` VALUES (34, 'SF17500725441075', '上海', '深圳', 'Exception', '中通', 15.65, '2025-06-09 19:15:45', '2025-06-17 19:15:45', NULL, 11, 34, 30.049667, 106.603081);
INSERT INTO `logistics` VALUES (35, 'SF17500725443893', '南京', '武汉', 'Delivered', 'FedEx', 35.37, '2025-06-09 19:15:45', '2025-06-17 19:15:45', '2025-06-16 19:15:45', 30.3, 30, 24.915942, 122.472909);
INSERT INTO `logistics` VALUES (36, 'SF17500725446869', '广州', '北京', 'Exception', 'EMS', 18.48, '2025-06-16 19:15:45', '2025-06-19 19:15:45', NULL, 15.2, 70, 32.647990, 118.948127);
INSERT INTO `logistics` VALUES (37, 'SF17500725448573', '深圳', '西安', 'Delivered', 'DHL', 8.04, '2025-06-12 19:15:45', '2025-06-19 19:15:45', '2025-06-20 19:15:45', -0.2, 68, 24.995584, 117.441525);
INSERT INTO `logistics` VALUES (38, 'SF17500725442011', '广州', '北京', 'In Transit', 'DHL', 11.53, '2025-06-14 19:15:45', '2025-06-21 19:15:45', NULL, 15.8, 51, 42.934280, 118.208808);
INSERT INTO `logistics` VALUES (39, 'SF17500725444867', '武汉', '西安', 'Delivered', '德邦', 24.01, '2025-06-16 19:15:45', '2025-06-18 19:15:45', '2025-06-19 19:15:45', 18, 30, 26.166114, 113.184202);
INSERT INTO `logistics` VALUES (40, 'SF17500725442422', '上海', '沈阳', 'Processing', '圆通', 9.51, '2025-06-09 19:15:45', '2025-06-17 19:15:45', NULL, 33.9, 35, 24.186070, 121.348210);
INSERT INTO `logistics` VALUES (41, 'SF17500725446687', '北京', '上海', 'Delivered', '德邦', 10.70, '2025-06-09 19:15:45', '2025-06-10 19:15:45', '2025-06-12 19:15:45', -2.8, 65, 27.544572, 106.975085);
INSERT INTO `logistics` VALUES (42, 'SF17500725447987', '广州', '杭州', 'Delivered', '韵达', 9.42, '2025-06-16 19:15:45', '2025-06-21 19:15:45', '2025-06-18 19:15:45', 26.9, 72, 44.651754, 104.826234);
INSERT INTO `logistics` VALUES (43, 'SF17500725448625', '西安', '上海', 'Delayed', '顺丰', 35.10, '2025-06-13 19:15:45', '2025-06-16 19:15:45', NULL, 5, 54, 40.489635, 104.793769);
INSERT INTO `logistics` VALUES (44, 'SF17500725444986', '杭州', '成都', 'In Transit', 'DHL', 44.57, '2025-06-12 19:15:45', '2025-06-18 19:15:45', NULL, 26.1, 35, 30.027005, 117.627562);
INSERT INTO `logistics` VALUES (45, 'SF17500725442628', '北京', '深圳', 'In Transit', '中通', 5.39, '2025-06-11 19:15:45', '2025-06-16 19:15:45', NULL, 31.7, 35, 43.506930, 110.264691);
INSERT INTO `logistics` VALUES (46, 'SF17500725446277', '成都', '沈阳', 'Exception', '顺丰', 7.13, '2025-06-10 19:15:45', '2025-06-11 19:15:45', NULL, 29.9, 39, 43.258852, 113.237624);
INSERT INTO `logistics` VALUES (47, 'SF17500725448510', '上海', '成都', 'Processing', '圆通', 39.34, '2025-06-12 19:15:45', '2025-06-16 19:15:45', NULL, 20.3, 42, 28.090713, 103.092022);
INSERT INTO `logistics` VALUES (48, 'SF17500725447465', '成都', '深圳', 'Delivered', '韵达', 25.08, '2025-06-11 19:15:45', '2025-06-12 19:15:45', '2025-06-15 19:15:45', 11.3, 78, 20.510476, 104.660173);
INSERT INTO `logistics` VALUES (49, 'SF17500725444602', '成都', '广州', 'Delivered', '顺丰', 7.30, '2025-06-09 19:15:45', '2025-06-10 19:15:45', '2025-06-13 19:15:45', 5, 65, 23.407253, 110.599407);
INSERT INTO `logistics` VALUES (50, 'SF17500725444312', '成都', '西安', 'Delivered', 'FedEx', 41.22, '2025-06-11 19:15:45', '2025-06-16 19:15:45', '2025-06-17 19:15:45', 29.2, 62, 29.830755, 104.550557);
INSERT INTO `logistics` VALUES (51, 'SF17500725441863', '西安', '成都', 'Delivered', '德邦', 25.05, '2025-06-13 19:15:45', '2025-06-23 19:15:45', '2025-06-25 19:15:45', 23.8, 54, 43.277393, 119.502220);
INSERT INTO `logistics` VALUES (52, 'SF17500725441151', '广州', '成都', 'Processing', 'DHL', 37.78, '2025-06-10 19:15:45', '2025-06-14 19:15:45', NULL, 7, 73, 35.745251, 112.810323);
INSERT INTO `logistics` VALUES (53, 'SF17500725448306', '沈阳', '西安', 'Exception', '韵达', 36.50, '2025-06-14 19:15:45', '2025-06-24 19:15:45', NULL, -2.9, 36, 27.551657, 111.656815);
INSERT INTO `logistics` VALUES (54, 'SF17500725445500', '南京', '上海', 'Delivered', '圆通', 7.35, '2025-06-10 19:15:45', '2025-06-14 19:15:45', '2025-06-12 19:15:45', 31.9, 67, 37.122341, 124.692631);
INSERT INTO `logistics` VALUES (55, 'SF17500725449107', '成都', '武汉', 'Delivered', 'FedEx', 9.54, '2025-06-16 19:15:45', '2025-06-26 19:15:45', '2025-06-20 19:15:45', -4.8, 55, 21.905832, 117.138420);
INSERT INTO `logistics` VALUES (56, 'SF17500725442857', '西安', '成都', 'Processing', '圆通', 37.59, '2025-06-13 19:15:45', '2025-06-15 19:15:45', NULL, 16.8, 83, 31.230694, 123.020948);
INSERT INTO `logistics` VALUES (57, 'SF17500725446894', '北京', '深圳', 'Delivered', '韵达', 26.46, '2025-06-14 19:15:45', '2025-06-24 19:15:45', '2025-06-20 19:15:45', 27.9, 71, 41.063961, 107.052315);
INSERT INTO `logistics` VALUES (58, 'SF17500725448992', '杭州', '武汉', 'Delayed', '圆通', 44.88, '2025-06-12 19:15:45', '2025-06-19 19:15:45', NULL, 25.6, 49, 21.616976, 109.721383);
INSERT INTO `logistics` VALUES (59, 'SF17500725446714', '沈阳', '深圳', 'Processing', '顺丰', 41.18, '2025-06-16 19:15:45', '2025-06-20 19:15:45', NULL, 1.9, 63, 29.257629, 105.451381);
INSERT INTO `logistics` VALUES (60, 'SF17500725445810', '广州', '沈阳', 'Processing', 'DHL', 22.41, '2025-06-10 19:15:45', '2025-06-20 19:15:45', NULL, -4.6, 58, 39.512008, 117.622769);
INSERT INTO `logistics` VALUES (61, 'SF17500725449028', '武汉', '南京', 'In Transit', '顺丰', 26.39, '2025-06-11 19:15:45', '2025-06-12 19:15:45', NULL, 11.3, 48, 24.037722, 106.698694);
INSERT INTO `logistics` VALUES (62, 'SF17500725448224', '深圳', '杭州', 'Delivered', '京东物流', 21.41, '2025-06-14 19:15:45', '2025-06-23 19:15:45', '2025-06-20 19:15:45', 22.7, 64, 36.146566, 121.316654);
INSERT INTO `logistics` VALUES (63, 'SF17500725449491', '成都', '广州', 'Exception', '京东物流', 11.75, '2025-06-12 19:15:45', '2025-06-21 19:15:45', NULL, 26.3, 79, 26.561469, 116.792138);
INSERT INTO `logistics` VALUES (64, 'SF17500725447867', '成都', '武汉', 'Exception', 'EMS', 36.43, '2025-06-11 19:15:45', '2025-06-21 19:15:45', NULL, 14.8, 66, 21.703844, 120.064076);
INSERT INTO `logistics` VALUES (65, 'SF17500725449818', '深圳', '广州', 'In Transit', '圆通', 3.20, '2025-06-16 19:15:45', '2025-06-23 19:15:45', NULL, -0.8, 61, 24.685790, 115.057344);
INSERT INTO `logistics` VALUES (66, 'SF17500725447925', '南京', '上海', 'In Transit', '顺丰', 13.98, '2025-06-15 19:15:45', '2025-06-24 19:15:45', NULL, 9.5, 81, 38.327095, 114.455456);
INSERT INTO `logistics` VALUES (67, 'SF17500725449324', '南京', '杭州', 'In Transit', '德邦', 30.05, '2025-06-09 19:15:45', '2025-06-16 19:15:45', NULL, -0.6, 53, 37.872952, 102.727297);
INSERT INTO `logistics` VALUES (68, 'SF17500725449232', '广州', '西安', 'Delivered', 'UPS', 37.64, '2025-06-10 19:15:45', '2025-06-13 19:15:45', '2025-06-16 19:15:45', 10.1, 74, 26.587320, 103.808298);
INSERT INTO `logistics` VALUES (69, 'SF17500725446248', '北京', '广州', 'In Transit', 'UPS', 0.46, '2025-06-13 19:15:45', '2025-06-20 19:15:45', NULL, 20.5, 66, 30.898349, 108.219441);
INSERT INTO `logistics` VALUES (70, 'SF17500725446094', '北京', '广州', 'Delivered', '德邦', 20.44, '2025-06-09 19:15:45', '2025-06-14 19:15:45', '2025-06-10 19:15:45', 12.9, 55, 29.711517, 106.700221);
INSERT INTO `logistics` VALUES (71, 'SF17500725447979', '广州', '南京', 'In Transit', 'UPS', 15.06, '2025-06-13 19:15:45', '2025-06-14 19:15:45', NULL, 0.1, 75, 31.294290, 102.606209);
INSERT INTO `logistics` VALUES (72, 'SF17500725449035', '南京', '北京', 'In Transit', 'UPS', 30.24, '2025-06-10 19:15:45', '2025-06-12 19:15:45', NULL, 22.7, 37, 35.540503, 108.627851);
INSERT INTO `logistics` VALUES (73, 'SF17500725445167', '北京', '武汉', 'Processing', '中通', 3.57, '2025-06-16 19:15:45', '2025-06-20 19:15:45', NULL, 7.8, 45, 35.162671, 103.376407);
INSERT INTO `logistics` VALUES (74, 'SF17500725447873', '杭州', '沈阳', 'Delivered', 'DHL', 7.36, '2025-06-11 19:15:45', '2025-06-16 19:15:45', '2025-06-15 19:15:45', 4.9, 82, 36.997092, 106.216038);
INSERT INTO `logistics` VALUES (75, 'SF17500725444949', '广州', '成都', 'Delivered', '顺丰', 36.85, '2025-06-12 19:15:45', '2025-06-21 19:15:45', '2025-06-14 19:15:45', 9.2, 52, 31.142575, 116.538685);
INSERT INTO `logistics` VALUES (76, 'SF17500725445875', '北京', '杭州', 'Delivered', '德邦', 35.53, '2025-06-10 19:15:45', '2025-06-15 19:15:45', '2025-06-13 19:15:45', 26.6, 38, 25.026621, 124.330192);
INSERT INTO `logistics` VALUES (77, 'SF17500725444713', '北京', '沈阳', 'In Transit', 'FedEx', 27.33, '2025-06-12 19:15:45', '2025-06-22 19:15:45', NULL, 30.9, 58, 31.176018, 112.733082);
INSERT INTO `logistics` VALUES (78, 'SF17500725444378', '武汉', '杭州', 'Delivered', '中通', 0.24, '2025-06-14 19:15:45', '2025-06-24 19:15:45', '2025-06-16 19:15:45', 0.2, 36, 42.105580, 104.024936);
INSERT INTO `logistics` VALUES (79, 'SF17500725449713', '成都', '广州', 'Processing', '中通', 48.51, '2025-06-15 19:15:45', '2025-06-19 19:15:45', NULL, 21.9, 35, 25.574232, 120.672994);
INSERT INTO `logistics` VALUES (80, 'SF17500725443722', '西安', '深圳', 'Delivered', 'FedEx', 7.86, '2025-06-16 19:15:45', '2025-06-20 19:15:45', '2025-06-22 19:15:45', 28.3, 70, 34.585474, 107.672707);
INSERT INTO `logistics` VALUES (81, 'SF17500725448605', '上海', '西安', 'In Transit', '圆通', 25.69, '2025-06-14 19:15:45', '2025-06-18 19:15:45', NULL, 7.3, 64, 26.290276, 106.987082);
INSERT INTO `logistics` VALUES (82, 'SF17500725446920', '武汉', '深圳', 'Delivered', '京东物流', 37.81, '2025-06-11 19:15:45', '2025-06-19 19:15:45', '2025-06-12 19:15:45', 23.8, 83, 26.371403, 103.177769);
INSERT INTO `logistics` VALUES (83, 'SF17500725444579', '西安', '武汉', 'Exception', 'EMS', 10.62, '2025-06-15 19:15:45', '2025-06-21 19:15:45', NULL, -0.7, 31, 24.836080, 105.458191);
INSERT INTO `logistics` VALUES (84, 'SF17500725447447', '深圳', '上海', 'Exception', 'FedEx', 25.81, '2025-06-09 19:15:45', '2025-06-14 19:15:45', NULL, 11.3, 40, 22.051770, 107.687328);
INSERT INTO `logistics` VALUES (85, 'SF17500725447764', '广州', '深圳', 'Processing', '德邦', 47.89, '2025-06-16 19:15:45', '2025-06-26 19:15:45', NULL, 27.9, 45, 30.271434, 109.339635);
INSERT INTO `logistics` VALUES (86, 'SF17500725448838', '深圳', '南京', 'In Transit', '德邦', 7.92, '2025-06-15 19:15:45', '2025-06-25 19:15:45', NULL, 22.5, 43, 33.867368, 122.092007);
INSERT INTO `logistics` VALUES (87, 'SF17500725442116', '杭州', '武汉', 'Exception', 'FedEx', 44.62, '2025-06-10 19:15:45', '2025-06-14 19:15:45', NULL, 22.5, 43, 34.911246, 100.292850);
INSERT INTO `logistics` VALUES (88, 'SF17500725445415', '南京', '上海', 'In Transit', '德邦', 17.59, '2025-06-15 19:15:45', '2025-06-17 19:15:45', NULL, -3.4, 57, 29.232813, 100.359869);
INSERT INTO `logistics` VALUES (89, 'SF17500725449297', '南京', '西安', 'In Transit', '德邦', 1.34, '2025-06-10 19:15:45', '2025-06-15 19:15:45', NULL, -0.6, 47, 33.904718, 117.215953);
INSERT INTO `logistics` VALUES (90, 'SF17500725442123', '成都', '南京', 'Delivered', 'DHL', 30.50, '2025-06-13 19:15:45', '2025-06-19 19:15:45', '2025-06-18 19:15:45', 34.9, 61, 21.732228, 106.548743);
INSERT INTO `logistics` VALUES (91, 'SF17500725444128', '北京', '杭州', 'Delivered', '韵达', 34.19, '2025-06-12 19:15:45', '2025-06-13 19:15:45', '2025-06-14 19:15:45', -0.1, 79, 26.958381, 108.737848);
INSERT INTO `logistics` VALUES (92, 'SF17500725446542', '杭州', '沈阳', 'In Transit', '中通', 24.69, '2025-06-11 19:15:45', '2025-06-14 19:15:45', NULL, 4.8, 73, 31.438209, 122.400378);
INSERT INTO `logistics` VALUES (93, 'SF17500725449725', '上海', '成都', 'In Transit', 'FedEx', 42.23, '2025-06-10 19:15:45', '2025-06-20 19:15:45', NULL, 4.4, 59, 37.429945, 119.115427);
INSERT INTO `logistics` VALUES (94, 'SF17500725447165', '沈阳', '南京', 'Exception', '顺丰', 24.96, '2025-06-15 19:15:45', '2025-06-16 19:15:45', NULL, -0.5, 85, 32.970741, 121.126325);
INSERT INTO `logistics` VALUES (95, 'SF17500725446361', '武汉', '沈阳', 'Exception', '圆通', 43.15, '2025-06-12 19:15:45', '2025-06-18 19:15:45', NULL, 2.6, 48, 36.989156, 122.895508);
INSERT INTO `logistics` VALUES (96, 'SF17500725443492', '广州', '上海', 'In Transit', 'UPS', 5.99, '2025-06-14 19:15:45', '2025-06-23 19:15:45', NULL, 2.1, 38, 34.390908, 114.197317);
INSERT INTO `logistics` VALUES (97, 'SF17500725449785', '杭州', '沈阳', 'Delivered', '中通', 10.46, '2025-06-14 19:15:45', '2025-06-15 19:15:45', '2025-06-16 19:15:45', 23.4, 56, 44.769950, 123.341570);
INSERT INTO `logistics` VALUES (98, 'SF17500725448918', '杭州', '沈阳', 'Delayed', 'EMS', 12.32, '2025-06-12 19:15:45', '2025-06-15 19:15:45', NULL, 21.7, 78, 41.621108, 115.995029);
INSERT INTO `logistics` VALUES (99, 'SF17500725446510', '深圳', '成都', 'Delayed', 'DHL', 41.51, '2025-06-10 19:15:45', '2025-06-14 19:15:45', NULL, 0.8, 71, 37.456369, 111.386821);
INSERT INTO `logistics` VALUES (100, 'SF17500725443829', '杭州', '成都', 'Delayed', 'UPS', 32.92, '2025-06-14 19:15:45', '2025-06-15 19:15:45', NULL, 34.1, 77, 42.775091, 119.349603);

-- ----------------------------
-- Table structure for shipments
-- ----------------------------
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE `shipments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tracking_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `origin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `destination` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `transport_type` enum('road','rail','air','sea') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cargo_type` enum('electronics','clothing','food','chemicals','machinery','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `weight` decimal(10, 2) NOT NULL,
  `distance` decimal(10, 2) NOT NULL,
  `ship_date` datetime(0) NOT NULL,
  `estimated_delivery` date NOT NULL,
  `actual_delivery` date NULL DEFAULT NULL,
  `status` enum('processing','in_transit','delivered','exception') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'processing',
  `region` enum('north','south','east','west','central','northeast','northwest') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipments
-- ----------------------------
INSERT INTO `shipments` VALUES (1, 'TRK123456', '上海', '北京', 'road', 'electronics', 1500.00, 1200.00, '2023-10-01 08:30:00', '2023-10-03', '2023-10-03', 'delivered', 'east');
INSERT INTO `shipments` VALUES (2, 'TRK789012', '广州', '成都', 'air', 'food', 800.00, 1400.00, '2023-10-02 10:15:00', '2023-10-02', '2023-10-02', 'delivered', 'south');
INSERT INTO `shipments` VALUES (3, 'TRK345678', '天津', '武汉', 'rail', 'machinery', 2500.00, 1100.00, '2023-10-03 14:00:00', '2023-10-05', NULL, 'in_transit', 'north');
INSERT INTO `shipments` VALUES (4, 'TRK901234', '深圳', '西安', 'road', 'electronics', 1800.00, 1800.00, '2023-10-04 09:45:00', '2023-10-07', NULL, 'in_transit', 'south');
INSERT INTO `shipments` VALUES (5, 'TRK567890', '青岛', '重庆', 'sea', 'chemicals', 3200.00, 2200.00, '2023-10-05 13:20:00', '2023-10-10', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (6, 'TRK123789', '杭州', '沈阳', 'road', 'clothing', 1200.00, 1500.00, '2023-10-06 11:10:00', '2023-10-08', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (7, 'TRK456123', '南京', '兰州', 'rail', 'other', 2000.00, 1600.00, '2023-10-07 16:30:00', '2023-10-09', NULL, 'in_transit', 'central');
INSERT INTO `shipments` VALUES (8, 'TRK123456', '上海', '北京', 'road', 'electronics', 1500.00, 1200.00, '2023-10-01 08:30:00', '2023-10-03', '2023-10-03', 'delivered', 'east');
INSERT INTO `shipments` VALUES (9, 'TRK789012', '广州', '成都', 'air', 'food', 800.00, 1400.00, '2023-10-02 10:15:00', '2023-10-02', '2023-10-02', 'delivered', 'south');
INSERT INTO `shipments` VALUES (10, 'TRK345678', '天津', '武汉', 'rail', 'machinery', 2500.00, 1100.00, '2023-10-03 14:00:00', '2023-10-05', NULL, 'in_transit', 'north');
INSERT INTO `shipments` VALUES (11, 'TRK901234', '深圳', '西安', 'road', 'electronics', 1800.00, 1800.00, '2023-10-04 09:45:00', '2023-10-07', NULL, 'in_transit', 'south');
INSERT INTO `shipments` VALUES (12, 'TRK567890', '青岛', '重庆', 'sea', 'chemicals', 3200.00, 2200.00, '2023-10-05 13:20:00', '2023-10-10', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (13, 'TRK123789', '杭州', '沈阳', 'road', 'clothing', 1200.00, 1500.00, '2023-10-06 11:10:00', '2023-10-08', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (14, 'TRK456123', '南京', '兰州', 'rail', 'other', 2000.00, 1600.00, '2023-10-07 16:30:00', '2023-10-09', NULL, 'in_transit', 'central');
INSERT INTO `shipments` VALUES (15, 'TRK123456', '上海', '北京', 'road', 'electronics', 1500.00, 1200.00, '2023-10-01 08:30:00', '2023-10-03', '2023-10-03', 'delivered', 'east');
INSERT INTO `shipments` VALUES (16, 'TRK789012', '广州', '成都', 'air', 'food', 800.00, 1400.00, '2023-10-02 10:15:00', '2023-10-02', '2023-10-02', 'delivered', 'south');
INSERT INTO `shipments` VALUES (17, 'TRK345678', '天津', '武汉', 'rail', 'machinery', 2500.00, 1100.00, '2023-10-03 14:00:00', '2023-10-05', NULL, 'in_transit', 'north');
INSERT INTO `shipments` VALUES (18, 'TRK901234', '深圳', '西安', 'road', 'electronics', 1800.00, 1800.00, '2023-10-04 09:45:00', '2023-10-07', NULL, 'in_transit', 'south');
INSERT INTO `shipments` VALUES (19, 'TRK567890', '青岛', '重庆', 'sea', 'chemicals', 3200.00, 2200.00, '2023-10-05 13:20:00', '2023-10-10', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (20, 'TRK123789', '杭州', '沈阳', 'road', 'clothing', 1200.00, 1500.00, '2023-10-06 11:10:00', '2023-10-08', NULL, 'in_transit', 'east');
INSERT INTO `shipments` VALUES (21, 'TRK456123', '南京', '兰州', 'rail', 'other', 2000.00, 1600.00, '2023-10-07 16:30:00', '2023-10-09', NULL, 'in_transit', 'central');

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `license_plate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `vehicle_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `capacity` decimal(10, 2) NOT NULL,
  `current_location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` enum('available','in_transit','maintenance') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'available',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES (1, '沪A12345', '重型卡车', 20000.00, '上海', 'available');
INSERT INTO `vehicles` VALUES (2, '粤B56789', '厢式货车', 8000.00, '广州', 'in_transit');
INSERT INTO `vehicles` VALUES (3, '京C24680', '冷藏车', 12000.00, '北京', 'available');
INSERT INTO `vehicles` VALUES (4, '津D13579', '平板车', 15000.00, '天津', 'in_transit');
INSERT INTO `vehicles` VALUES (5, '鲁E11223', '罐车', 18000.00, '青岛', 'maintenance');
INSERT INTO `vehicles` VALUES (6, '沪A12345', '重型卡车', 20000.00, '上海', 'available');
INSERT INTO `vehicles` VALUES (7, '粤B56789', '厢式货车', 8000.00, '广州', 'in_transit');
INSERT INTO `vehicles` VALUES (8, '京C24680', '冷藏车', 12000.00, '北京', 'available');
INSERT INTO `vehicles` VALUES (9, '津D13579', '平板车', 15000.00, '天津', 'in_transit');
INSERT INTO `vehicles` VALUES (10, '鲁E11223', '罐车', 18000.00, '青岛', 'maintenance');
INSERT INTO `vehicles` VALUES (11, '沪A12345', '重型卡车', 20000.00, '上海', 'available');
INSERT INTO `vehicles` VALUES (12, '粤B56789', '厢式货车', 8000.00, '广州', 'in_transit');
INSERT INTO `vehicles` VALUES (13, '京C24680', '冷藏车', 12000.00, '北京', 'available');
INSERT INTO `vehicles` VALUES (14, '津D13579', '平板车', 15000.00, '天津', 'in_transit');
INSERT INTO `vehicles` VALUES (15, '鲁E11223', '罐车', 18000.00, '青岛', 'maintenance');

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `capacity` decimal(10, 2) NOT NULL,
  `current_occupancy` decimal(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES (1, '上海中心仓', '上海市浦东新区', 50000.00, 12000.00);
INSERT INTO `warehouses` VALUES (2, '广州华南仓', '广州市天河区', 45000.00, 18000.00);
INSERT INTO `warehouses` VALUES (3, '北京华北仓', '北京市大兴区', 60000.00, 25000.00);
INSERT INTO `warehouses` VALUES (4, '成都西南仓', '成都市双流区', 40000.00, 15000.00);
INSERT INTO `warehouses` VALUES (5, '武汉华中仓', '武汉市东西湖区', 35000.00, 10000.00);
INSERT INTO `warehouses` VALUES (6, '上海中心仓', '上海市浦东新区', 50000.00, 12000.00);
INSERT INTO `warehouses` VALUES (7, '广州华南仓', '广州市天河区', 45000.00, 18000.00);
INSERT INTO `warehouses` VALUES (8, '北京华北仓', '北京市大兴区', 60000.00, 25000.00);
INSERT INTO `warehouses` VALUES (9, '成都西南仓', '成都市双流区', 40000.00, 15000.00);
INSERT INTO `warehouses` VALUES (10, '武汉华中仓', '武汉市东西湖区', 35000.00, 10000.00);
INSERT INTO `warehouses` VALUES (11, '上海中心仓', '上海市浦东新区', 50000.00, 12000.00);
INSERT INTO `warehouses` VALUES (12, '广州华南仓', '广州市天河区', 45000.00, 18000.00);
INSERT INTO `warehouses` VALUES (13, '北京华北仓', '北京市大兴区', 60000.00, 25000.00);
INSERT INTO `warehouses` VALUES (14, '成都西南仓', '成都市双流区', 40000.00, 15000.00);
INSERT INTO `warehouses` VALUES (15, '武汉华中仓', '武汉市东西湖区', 35000.00, 10000.00);

-- ----------------------------
-- View structure for v_carrier_delivery_time
-- ----------------------------
DROP VIEW IF EXISTS `v_carrier_delivery_time`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_carrier_delivery_time` AS select `logistics`.`carrier` AS `carrier`,round(avg((to_days(`logistics`.`actual_delivery`) - to_days(`logistics`.`shipment_date`))),2) AS `avg_delivery_days`,min((to_days(`logistics`.`actual_delivery`) - to_days(`logistics`.`shipment_date`))) AS `min_delivery_days`,max((to_days(`logistics`.`actual_delivery`) - to_days(`logistics`.`shipment_date`))) AS `max_delivery_days` from `logistics` where (`logistics`.`status` = 'Delivered') group by `logistics`.`carrier`;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('顺丰', 3.75, 2, 5);
INSERT INTO `warehouses` VALUES ('UPS', 6.00, 4, 10);
INSERT INTO `warehouses` VALUES ('德邦', 5.14, 1, 12);
INSERT INTO `warehouses` VALUES ('DHL', 5.75, 4, 8);
INSERT INTO `warehouses` VALUES ('EMS', 6.00, 6, 6);
INSERT INTO `warehouses` VALUES ('京东物流', 4.33, 1, 6);
INSERT INTO `warehouses` VALUES ('FedEx', 5.75, 4, 7);
INSERT INTO `warehouses` VALUES ('韵达', 3.50, 2, 6);
INSERT INTO `warehouses` VALUES ('圆通', 2.00, 2, 2);
INSERT INTO `warehouses` VALUES ('中通', 2.00, 2, 2);

-- ----------------------------
-- View structure for v_city_transport_volume
-- ----------------------------
DROP VIEW IF EXISTS `v_city_transport_volume`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_city_transport_volume` AS select `logistics`.`origin` AS `origin`,`logistics`.`destination` AS `destination`,count(0) AS `shipment_count`,round(avg(`logistics`.`weight_kg`),2) AS `avg_weight` from `logistics` group by `logistics`.`origin`,`logistics`.`destination` order by `shipment_count` desc;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('南京', '上海', 4, 12.28);
INSERT INTO `warehouses` VALUES ('杭州', '沈阳', 4, 13.71);
INSERT INTO `warehouses` VALUES ('西安', '杭州', 3, 21.20);
INSERT INTO `warehouses` VALUES ('成都', '广州', 3, 22.52);
INSERT INTO `warehouses` VALUES ('上海', '成都', 3, 30.50);
INSERT INTO `warehouses` VALUES ('北京', '深圳', 3, 20.07);
INSERT INTO `warehouses` VALUES ('成都', '西安', 2, 21.59);
INSERT INTO `warehouses` VALUES ('成都', '南京', 2, 29.35);
INSERT INTO `warehouses` VALUES ('深圳', '上海', 2, 21.51);
INSERT INTO `warehouses` VALUES ('武汉', '杭州', 2, 22.09);
INSERT INTO `warehouses` VALUES ('沈阳', '北京', 2, 28.11);
INSERT INTO `warehouses` VALUES ('沈阳', '南京', 2, 12.78);
INSERT INTO `warehouses` VALUES ('深圳', '成都', 2, 36.88);
INSERT INTO `warehouses` VALUES ('深圳', '西安', 2, 18.31);
INSERT INTO `warehouses` VALUES ('广州', '深圳', 2, 28.50);
INSERT INTO `warehouses` VALUES ('深圳', '南京', 2, 11.54);
INSERT INTO `warehouses` VALUES ('南京', '杭州', 2, 16.63);
INSERT INTO `warehouses` VALUES ('成都', '沈阳', 2, 14.28);
INSERT INTO `warehouses` VALUES ('北京', '广州', 2, 10.45);
INSERT INTO `warehouses` VALUES ('北京', '南京', 2, 45.81);
INSERT INTO `warehouses` VALUES ('广州', '北京', 2, 15.01);
INSERT INTO `warehouses` VALUES ('广州', '成都', 2, 37.32);
INSERT INTO `warehouses` VALUES ('杭州', '成都', 2, 38.75);
INSERT INTO `warehouses` VALUES ('西安', '成都', 2, 31.32);
INSERT INTO `warehouses` VALUES ('成都', '武汉', 2, 22.99);
INSERT INTO `warehouses` VALUES ('杭州', '武汉', 2, 44.75);
INSERT INTO `warehouses` VALUES ('武汉', '西安', 2, 34.65);
INSERT INTO `warehouses` VALUES ('北京', '杭州', 2, 34.86);
INSERT INTO `warehouses` VALUES ('上海', '杭州', 1, 8.76);
INSERT INTO `warehouses` VALUES ('杭州', '广州', 1, 17.53);
INSERT INTO `warehouses` VALUES ('北京', '成都', 1, 40.65);
INSERT INTO `warehouses` VALUES ('深圳', '沈阳', 1, 23.48);
INSERT INTO `warehouses` VALUES ('杭州', '南京', 1, 47.89);
INSERT INTO `warehouses` VALUES ('沈阳', '成都', 1, 9.82);
INSERT INTO `warehouses` VALUES ('南京', '深圳', 1, 39.09);
INSERT INTO `warehouses` VALUES ('沈阳', '武汉', 1, 32.85);
INSERT INTO `warehouses` VALUES ('西安', '南京', 1, 25.60);
INSERT INTO `warehouses` VALUES ('上海', '南京', 1, 9.56);
INSERT INTO `warehouses` VALUES ('武汉', '成都', 1, 8.27);
INSERT INTO `warehouses` VALUES ('广州', '杭州', 1, 9.42);
INSERT INTO `warehouses` VALUES ('上海', '沈阳', 1, 9.51);
INSERT INTO `warehouses` VALUES ('沈阳', '西安', 1, 36.50);
INSERT INTO `warehouses` VALUES ('西安', '上海', 1, 35.10);
INSERT INTO `warehouses` VALUES ('北京', '上海', 1, 10.70);
INSERT INTO `warehouses` VALUES ('沈阳', '深圳', 1, 41.18);
INSERT INTO `warehouses` VALUES ('广州', '沈阳', 1, 22.41);
INSERT INTO `warehouses` VALUES ('武汉', '南京', 1, 26.39);
INSERT INTO `warehouses` VALUES ('成都', '深圳', 1, 25.08);
INSERT INTO `warehouses` VALUES ('深圳', '广州', 1, 3.20);
INSERT INTO `warehouses` VALUES ('广州', '西安', 1, 37.64);
INSERT INTO `warehouses` VALUES ('南京', '武汉', 1, 35.37);
INSERT INTO `warehouses` VALUES ('广州', '南京', 1, 15.06);
INSERT INTO `warehouses` VALUES ('南京', '北京', 1, 30.24);
INSERT INTO `warehouses` VALUES ('北京', '武汉', 1, 3.57);
INSERT INTO `warehouses` VALUES ('上海', '深圳', 1, 15.65);
INSERT INTO `warehouses` VALUES ('深圳', '杭州', 1, 21.41);
INSERT INTO `warehouses` VALUES ('北京', '沈阳', 1, 27.33);
INSERT INTO `warehouses` VALUES ('西安', '深圳', 1, 7.86);
INSERT INTO `warehouses` VALUES ('上海', '西安', 1, 25.69);
INSERT INTO `warehouses` VALUES ('武汉', '深圳', 1, 37.81);
INSERT INTO `warehouses` VALUES ('西安', '武汉', 1, 10.62);
INSERT INTO `warehouses` VALUES ('南京', '西安', 1, 1.34);
INSERT INTO `warehouses` VALUES ('武汉', '沈阳', 1, 43.15);
INSERT INTO `warehouses` VALUES ('广州', '上海', 1, 5.99);

-- ----------------------------
-- View structure for v_delayed_shipments
-- ----------------------------
DROP VIEW IF EXISTS `v_delayed_shipments`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_delayed_shipments` AS select `logistics`.`id` AS `id`,`logistics`.`tracking_number` AS `tracking_number`,`logistics`.`origin` AS `origin`,`logistics`.`destination` AS `destination`,`logistics`.`status` AS `status`,`logistics`.`carrier` AS `carrier`,`logistics`.`weight_kg` AS `weight_kg`,`logistics`.`shipment_date` AS `shipment_date`,`logistics`.`estimated_delivery` AS `estimated_delivery`,`logistics`.`actual_delivery` AS `actual_delivery`,`logistics`.`temperature` AS `temperature`,`logistics`.`humidity` AS `humidity`,`logistics`.`latitude` AS `latitude`,`logistics`.`longitude` AS `longitude` from `logistics` where (`logistics`.`status` = 'Delayed');

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES (20, 'SF17500725449178', '北京', '成都', 'Delayed', '中通', 40.65, '2025-06-14 19:15:45', '2025-06-23 19:15:45', NULL, 19.9, 80, 40.029022, 123.663710);
INSERT INTO `warehouses` VALUES (26, 'SF17500725449320', '北京', '深圳', 'Delayed', '京东物流', 28.36, '2025-06-12 19:15:45', '2025-06-14 19:15:45', NULL, 10.5, 56, 33.418584, 101.447081);
INSERT INTO `warehouses` VALUES (43, 'SF17500725448625', '西安', '上海', 'Delayed', '顺丰', 35.10, '2025-06-13 19:15:45', '2025-06-16 19:15:45', NULL, 5, 54, 40.489635, 104.793769);
INSERT INTO `warehouses` VALUES (58, 'SF17500725448992', '杭州', '武汉', 'Delayed', '圆通', 44.88, '2025-06-12 19:15:45', '2025-06-19 19:15:45', NULL, 25.6, 49, 21.616976, 109.721383);
INSERT INTO `warehouses` VALUES (98, 'SF17500725448918', '杭州', '沈阳', 'Delayed', 'EMS', 12.32, '2025-06-12 19:15:45', '2025-06-15 19:15:45', NULL, 21.7, 78, 41.621108, 115.995029);
INSERT INTO `warehouses` VALUES (99, 'SF17500725446510', '深圳', '成都', 'Delayed', 'DHL', 41.51, '2025-06-10 19:15:45', '2025-06-14 19:15:45', NULL, 0.8, 71, 37.456369, 111.386821);
INSERT INTO `warehouses` VALUES (100, 'SF17500725443829', '杭州', '成都', 'Delayed', 'UPS', 32.92, '2025-06-14 19:15:45', '2025-06-15 19:15:45', NULL, 34.1, 77, 42.775091, 119.349603);

-- ----------------------------
-- View structure for v_delivery_performance
-- ----------------------------
DROP VIEW IF EXISTS `v_delivery_performance`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_delivery_performance` AS select `logistics`.`carrier` AS `carrier`,count(0) AS `total_delivered`,sum((case when (`logistics`.`actual_delivery` <= `logistics`.`estimated_delivery`) then 1 else 0 end)) AS `on_time_count`,round(((sum((case when (`logistics`.`actual_delivery` <= `logistics`.`estimated_delivery`) then 1 else 0 end)) / count(0)) * 100),2) AS `on_time_rate` from `logistics` where (`logistics`.`status` = 'Delivered') group by `logistics`.`carrier`;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('顺丰', 4, 2, 50.00);
INSERT INTO `warehouses` VALUES ('UPS', 4, 2, 50.00);
INSERT INTO `warehouses` VALUES ('德邦', 7, 3, 42.86);
INSERT INTO `warehouses` VALUES ('DHL', 4, 3, 75.00);
INSERT INTO `warehouses` VALUES ('EMS', 1, 0, 0.00);
INSERT INTO `warehouses` VALUES ('京东物流', 3, 3, 100.00);
INSERT INTO `warehouses` VALUES ('FedEx', 4, 2, 50.00);
INSERT INTO `warehouses` VALUES ('韵达', 4, 2, 50.00);
INSERT INTO `warehouses` VALUES ('圆通', 1, 1, 100.00);
INSERT INTO `warehouses` VALUES ('中通', 2, 1, 50.00);

-- ----------------------------
-- View structure for v_exception_shipments
-- ----------------------------
DROP VIEW IF EXISTS `v_exception_shipments`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_exception_shipments` AS select `logistics`.`tracking_number` AS `tracking_number`,`logistics`.`origin` AS `origin`,`logistics`.`destination` AS `destination`,`logistics`.`carrier` AS `carrier`,`logistics`.`temperature` AS `temperature`,`logistics`.`humidity` AS `humidity`,concat(round(`logistics`.`latitude`,4),', ',round(`logistics`.`longitude`,4)) AS `last_location` from `logistics` where (`logistics`.`status` = 'Exception');

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES ('SF17500725444159', '北京', '南京', '顺丰', 33.6, 41, '34.6770, 100.8022');
INSERT INTO `warehouses` VALUES ('SF17500725442883', '杭州', '南京', 'DHL', 23.7, 76, '31.4688, 113.0193');
INSERT INTO `warehouses` VALUES ('SF17500725447038', '南京', '深圳', '韵达', 6.1, 81, '41.3458, 100.4476');
INSERT INTO `warehouses` VALUES ('SF17500725448882', '武汉', '成都', '德邦', 14.5, 45, '37.9562, 118.8537');
INSERT INTO `warehouses` VALUES ('SF17500725441075', '上海', '深圳', '中通', 11, 34, '30.0497, 106.6031');
INSERT INTO `warehouses` VALUES ('SF17500725446869', '广州', '北京', 'EMS', 15.2, 70, '32.6480, 118.9481');
INSERT INTO `warehouses` VALUES ('SF17500725446277', '成都', '沈阳', '顺丰', 29.9, 39, '43.2589, 113.2376');
INSERT INTO `warehouses` VALUES ('SF17500725448306', '沈阳', '西安', '韵达', -2.9, 36, '27.5517, 111.6568');
INSERT INTO `warehouses` VALUES ('SF17500725449491', '成都', '广州', '京东物流', 26.3, 79, '26.5615, 116.7921');
INSERT INTO `warehouses` VALUES ('SF17500725447867', '成都', '武汉', 'EMS', 14.8, 66, '21.7038, 120.0641');
INSERT INTO `warehouses` VALUES ('SF17500725444579', '西安', '武汉', 'EMS', -0.7, 31, '24.8361, 105.4582');
INSERT INTO `warehouses` VALUES ('SF17500725447447', '深圳', '上海', 'FedEx', 11.3, 40, '22.0518, 107.6873');
INSERT INTO `warehouses` VALUES ('SF17500725442116', '杭州', '武汉', 'FedEx', 22.5, 43, '34.9112, 100.2929');
INSERT INTO `warehouses` VALUES ('SF17500725447165', '沈阳', '南京', '顺丰', -0.5, 85, '32.9707, 121.1263');
INSERT INTO `warehouses` VALUES ('SF17500725446361', '武汉', '沈阳', '圆通', 2.6, 48, '36.9892, 122.8955');

-- ----------------------------
-- View structure for v_in_transit_shipments
-- ----------------------------
DROP VIEW IF EXISTS `v_in_transit_shipments`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_in_transit_shipments` AS select `logistics`.`id` AS `id`,`logistics`.`tracking_number` AS `tracking_number`,`logistics`.`origin` AS `origin`,`logistics`.`destination` AS `destination`,`logistics`.`carrier` AS `carrier`,`logistics`.`status` AS `status`,(to_days(curdate()) - to_days(cast(`logistics`.`estimated_delivery` as date))) AS `days_delayed` from `logistics` where (`logistics`.`status` = 'In Transit');

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES (2, 'SF17500725446141', '南京', '上海', '京东物流', 'In Transit', 2);
INSERT INTO `warehouses` VALUES (3, 'SF17500725444736', '成都', '西安', '韵达', 'In Transit', -1);
INSERT INTO `warehouses` VALUES (7, 'SF17500725445454', '沈阳', '北京', 'FedEx', 'In Transit', 0);
INSERT INTO `warehouses` VALUES (9, 'SF17500725449948', '北京', '南京', 'FedEx', 'In Transit', 1);
INSERT INTO `warehouses` VALUES (10, 'SF17500725447703', '深圳', '成都', 'EMS', 'In Transit', 4);
INSERT INTO `warehouses` VALUES (11, 'SF17500725449885', '深圳', '西安', 'UPS', 'In Transit', -9);
INSERT INTO `warehouses` VALUES (15, 'SF17500725447511', '南京', '杭州', '京东物流', 'In Transit', 5);
INSERT INTO `warehouses` VALUES (16, 'SF17500725449645', '西安', '杭州', 'EMS', 'In Transit', 3);
INSERT INTO `warehouses` VALUES (21, 'SF17500725441945', '上海', '成都', '中通', 'In Transit', 5);
INSERT INTO `warehouses` VALUES (24, 'SF17500725445907', '沈阳', '成都', 'EMS', 'In Transit', 2);
INSERT INTO `warehouses` VALUES (30, 'SF17500725444284', '上海', '南京', '德邦', 'In Transit', -2);
INSERT INTO `warehouses` VALUES (32, 'SF17500725443303', '成都', '沈阳', '韵达', 'In Transit', -3);
INSERT INTO `warehouses` VALUES (38, 'SF17500725442011', '广州', '北京', 'DHL', 'In Transit', -5);
INSERT INTO `warehouses` VALUES (44, 'SF17500725444986', '杭州', '成都', 'DHL', 'In Transit', -2);
INSERT INTO `warehouses` VALUES (45, 'SF17500725442628', '北京', '深圳', '中通', 'In Transit', 0);
INSERT INTO `warehouses` VALUES (61, 'SF17500725449028', '武汉', '南京', '顺丰', 'In Transit', 4);
INSERT INTO `warehouses` VALUES (65, 'SF17500725449818', '深圳', '广州', '圆通', 'In Transit', -7);
INSERT INTO `warehouses` VALUES (66, 'SF17500725447925', '南京', '上海', '顺丰', 'In Transit', -8);
INSERT INTO `warehouses` VALUES (67, 'SF17500725449324', '南京', '杭州', '德邦', 'In Transit', 0);
INSERT INTO `warehouses` VALUES (69, 'SF17500725446248', '北京', '广州', 'UPS', 'In Transit', -4);
INSERT INTO `warehouses` VALUES (71, 'SF17500725447979', '广州', '南京', 'UPS', 'In Transit', 2);
INSERT INTO `warehouses` VALUES (72, 'SF17500725449035', '南京', '北京', 'UPS', 'In Transit', 4);
INSERT INTO `warehouses` VALUES (77, 'SF17500725444713', '北京', '沈阳', 'FedEx', 'In Transit', -6);
INSERT INTO `warehouses` VALUES (81, 'SF17500725448605', '上海', '西安', '圆通', 'In Transit', -2);
INSERT INTO `warehouses` VALUES (86, 'SF17500725448838', '深圳', '南京', '德邦', 'In Transit', -9);
INSERT INTO `warehouses` VALUES (88, 'SF17500725445415', '南京', '上海', '德邦', 'In Transit', -1);
INSERT INTO `warehouses` VALUES (89, 'SF17500725449297', '南京', '西安', '德邦', 'In Transit', 1);
INSERT INTO `warehouses` VALUES (92, 'SF17500725446542', '杭州', '沈阳', '中通', 'In Transit', 2);
INSERT INTO `warehouses` VALUES (93, 'SF17500725449725', '上海', '成都', 'FedEx', 'In Transit', -4);
INSERT INTO `warehouses` VALUES (96, 'SF17500725443492', '广州', '上海', 'UPS', 'In Transit', -7);

SET FOREIGN_KEY_CHECKS = 1;
