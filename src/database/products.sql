/*
 Navicat Premium Dump SQL

 Source Server         : web
 Source Server Type    : MySQL
 Source Server Version : 80407 (8.4.7)
 Source Host           : localhost:3306
 Source Schema         : products

 Target Server Type    : MySQL
 Target Server Version : 80407 (8.4.7)
 File Encoding         : 65001

 Date: 14/12/2025 12:25:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_id` int NULL DEFAULT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `createdAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL,
  `category_id` int NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `createdAt` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 1, 'Game Controller', b'1', '0000-00-00 00:00:00', 'Là thiết bị điều khiển vật lý cho phép người dùng tương tác và điều hướng các hành động trong trò chơi điện tử trên nhiều nền tảng');
INSERT INTO `category` VALUES (2, 2, 'Home Console', b'1', '0000-00-00 00:00:00', 'Là hệ thống giải trí tại gia, chuyên dùng để chơi trò chơi điện tử và truy cập các dịch vụ truyền thông kỹ thuật số, kết nối với TV qua màn hình lớn');
INSERT INTO `category` VALUES (3, 3, 'Hybrid Console', b'1', '0000-00-00 00:00:00', 'Là một loại máy chơi game độc đáo có thể hoạt động linh hoạt như một Home Console kết nối với TV hoặc như một thiết bị cầm tay di động độc lập');
INSERT INTO `category` VALUES (4, 4, 'Handheld Console', b'1', '0000-00-00 00:00:00', 'Là thiết bị chơi game nhỏ gọn, tích hợp màn hình và các nút điều khiển, được thiết kế để người dùng có thể chơi game khi đang di chuyển');
INSERT INTO `category` VALUES (5, 5, 'Handheld PC', b'1', '0000-00-00 00:00:00', 'Là máy tính cá nhân thu nhỏ có kiểu dáng máy chơi game cầm tay, chạy hệ điều hành PC đầy đủ (thường là Windows hoặc Linux) và cho phép người dùng chơi các tựa game PC khi đang di chuyển');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (0000000001, 'p01', 'Tay Cầm Chơi Game Flydigi Vader 4 Pro Controller', 1, 1, 'Assets/images/img_1.png', 2599000);
INSERT INTO `product` VALUES (0000000002, 'p02', 'Tay Cầm Chơi Game Flydigi Apex 5 Elite Controller', 1, 1, 'Assets/images/img_2.png', 2149000);
INSERT INTO `product` VALUES (0000000003, 'p03', 'Tay Cầm Chơi Game Flydigi Apex 5 Wuchang Controller', 1, 1, 'Assets/images/img_3.png', 2349000);
INSERT INTO `product` VALUES (0000000004, 'p04', 'Tay Cầm Chơi Game Flydigi Direwolf 3 Controller', 1, 1, 'Assets/images/img_4.png', 2239000);
INSERT INTO `product` VALUES (0000000005, 'p05', 'Máy Game Retro SJGAM M17 128GB – 4.3 Inch – 30.000+ Games', 4, 6, 'Assets/images/img_5.png', 999000);
INSERT INTO `product` VALUES (0000000006, 'p06', 'Nitro Deck White Edition', 1, 12, 'Assets/images/img_6.png', 938000);
INSERT INTO `product` VALUES (0000000007, 'p07', 'Máy Game Retro TrimUI Smart Pro – 4.96 Inch – 20.000+ Games', 4, 13, 'Assets/images/img_7.png', 1849000);
INSERT INTO `product` VALUES (0000000008, 'p08', 'Máy Game Retro G5 – 3.0 Inch – 500+ Games', 4, 14, 'Assets/images/img_8.png', 189000);
INSERT INTO `product` VALUES (0000000009, 'p09', 'Máy Game Retro R36S Real – 3.5 Inch – 20.000+ Games', 4, 14, 'Assets/images/img_9.png', 749000);
INSERT INTO `product` VALUES (0000000010, 'p10', 'Máy Game Retro SJGAM M19 – 3.5 Inch – 17.000+ Games', 4, 6, 'Assets/images/img_10.png', 1199000);
INSERT INTO `product` VALUES (0000000011, 'p11', 'Máy Game Retro TrimUI Brick – 3.2 Inch – 20.000+ Games', 4, 13, 'Assets/images/img_11.png', 1649000);
INSERT INTO `product` VALUES (0000000012, 'p12', 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Ghost Cipher Special Edition', 1, 4, 'Assets/images/img_12.png', 1499000);
INSERT INTO `product` VALUES (0000000013, 'p13', 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Fire Vapor Special Edition', 1, 4, 'Assets/images/img_13.png', 1499000);
INSERT INTO `product` VALUES (0000000014, 'p14', 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Velocity Green', 1, 4, 'Assets/images/img_14.png', 1249000);
INSERT INTO `product` VALUES (0000000015, 'p15', 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Sky Cipher Special Edition', 1, 4, 'Assets/images/img_15.png', 1449000);
INSERT INTO `product` VALUES (0000000016, 'p16', 'Asus ROG Ally – 512GB AMD Ryzen Z1 Extreme', 5, 5, 'Assets/images/img_16.png', 11500000);
INSERT INTO `product` VALUES (0000000017, 'p17', 'Máy Asus Rog Xbox Ally – 512GB (AMD RYZEN Z2 A)', 5, 5, 'Assets/images/img_17.png', 14990000);
INSERT INTO `product` VALUES (0000000018, 'p18', 'Máy Asus ROG Xbox Ally X – 1 TB (AMD\r\n RYZEN Z2 EXTREME)', 5, 5, 'Assets/images/img_18.png', 25900000);
INSERT INTO `product` VALUES (0000000019, 'p19', 'Asus ROG Ally X – 1TB', 5, 5, 'Assets/images/img_19.png', 20500000);
INSERT INTO `product` VALUES (0000000020, 'p20', 'Steam Deck 512GB (NVMe SSD)', 5, 11, 'Assets/images/img_20.png', 9500000);

SET FOREIGN_KEY_CHECKS = 1;
