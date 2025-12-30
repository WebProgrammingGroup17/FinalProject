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

 Date: 30/12/2025 11:45:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `createdAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'Flydigi', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (2, 'Sony', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (3, 'Nintendo', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (4, 'Xbox', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (5, 'Asus', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (6, 'SJGAM', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (7, 'Anbernic', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (8, 'Retroid', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (9, 'Lenovo', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (10, 'Bigbig Won', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (11, 'Steam', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (12, 'CRKD', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (13, 'TrimUI', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (14, 'OEM', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (15, '8BitDo', b'1', '0000-00-00 00:00:00');
INSERT INTO `brand` VALUES (16, 'Data Frog', b'1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `createdAt` datetime NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Game Controller', b'1', '0000-00-00 00:00:00', 'Là thiết bị điều khiển vật lý cho phép người dùng tương tác và điều hướng các hành động trong trò chơi điện tử trên nhiều nền tảng');
INSERT INTO `category` VALUES (2, 'Home Console', b'1', '0000-00-00 00:00:00', 'Là hệ thống giải trí tại gia, chuyên dùng để chơi trò chơi điện tử và truy cập các dịch vụ truyền thông kỹ thuật số, kết nối với TV qua màn hình lớn');
INSERT INTO `category` VALUES (3, 'Hybrid Console', b'1', '0000-00-00 00:00:00', 'Là một loại máy chơi game độc đáo có thể hoạt động linh hoạt như một Home Console kết nối với TV hoặc như một thiết bị cầm tay di động độc lập');
INSERT INTO `category` VALUES (4, 'Handheld Console', b'1', '0000-00-00 00:00:00', 'Là thiết bị chơi game nhỏ gọn, tích hợp màn hình và các nút điều khiển, được thiết kế để người dùng có thể chơi game khi đang di chuyển');
INSERT INTO `category` VALUES (5, 'Handheld PC', b'1', '0000-00-00 00:00:00', 'Là máy tính cá nhân thu nhỏ có kiểu dáng máy chơi game cầm tay, chạy hệ điều hành PC đầy đủ (thường là Windows hoặc Linux) và cho phép người dùng chơi các tựa game PC khi đang di chuyển');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  `description_short` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `feature1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `feature2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `feature3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_connect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_battery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_usage_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_support` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `spec_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `targetUser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `technology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Tay Cầm Chơi Game Flydigi Vader 4 Pro Controller', 1, 1, 'Assets/images/img_1.png', 2599000, 'Flydigi Vader 4 Pro là phiên bản nâng cấp với độ trễ cực thấp và độ bền vượt trội.\r\n\r\nCảm biến Hall Effect chống drift\r\n\r\nKhoá Trigger đa chế độ\r\n\r\nKết nối 3 chế độ\r\n\r\nTương thích PC / Android / iOS', 'Flydigi Vader 4 Pro sở hữu độ trễ cực thấp, cảm biến Hall Effect, trigger đa chế độ, hỗ trợ rung mạnh mẽ và thiết kế công thái học phù hợp với người dùng chơi lâu dài', 'Bảo hành 12 tháng', 'Tặng dây cáp USB-C', 'Miễn phí giao hàng toàn quốc', NULL, NULL, NULL, 'Bluetooth / 2.4G / Wired', '1200mAh', '12–15 giờ', 'Android, iOS, PC', '285g', 'Console và tay cầm chơi game mang đến trải nghiệm giải trí sống động, phản hồi nhanh và dễ điều khiển. Tay cầm hiện đại tích hợp nhiều tính năng giúp người chơi linh hoạt và tiện lợi.\r\n\r\n', 'Sản phẩm hướng tới game thủ mọi lứa tuổi và những người yêu công nghệ, phù hợp cho giải trí, học tập hay thi đấu eSports.', 'Console và tay cầm sử dụng công nghệ không dây, cảm biến chuyển động, rung phản hồi, và màn hình sắc nét, giúp trải nghiệm chơi game mượt mà và chính xác.\r\n\r\n');
INSERT INTO `product` VALUES (2, 'Tay Cầm Chơi Game Flydigi Apex 5 Elite Controller', 1, 1, 'Assets/images/img_2.png', 2149000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (3, 'Tay Cầm Chơi Game Flydigi Apex 5 Wuchang Controller', 1, 1, 'Assets/images/img_3.png', 2349000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (4, 'Tay Cầm Chơi Game Flydigi Direwolf 3 Controller', 1, 1, 'Assets/images/img_4.png', 2239000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (5, 'Máy Game Retro SJGAM M17 128GB – 4.3 Inch – 30.000+ Games', 4, 6, 'Assets/images/img_5.png', 999000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (6, 'Nitro Deck White Edition', 1, 12, 'Assets/images/img_6.png', 938000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (7, 'Máy Game Retro TrimUI Smart Pro – 4.96 Inch – 20.000+ Games', 4, 13, 'Assets/images/img_7.png', 1849000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (8, 'Máy Game Retro G5 – 3.0 Inch – 500+ Games', 4, 14, 'Assets/images/img_8.png', 189000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (9, 'Máy Game Retro R36S Real – 3.5 Inch – 20.000+ Games', 4, 14, 'Assets/images/img_9.png', 749000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (10, 'Máy Game Retro SJGAM M19 – 3.5 Inch – 17.000+ Games', 4, 6, 'Assets/images/img_10.png', 1199000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (11, 'Máy Game Retro TrimUI Brick – 3.2 Inch – 20.000+ Games', 4, 13, 'Assets/images/img_11.png', 1649000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (12, 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Ghost Cipher Special Edition', 1, 4, 'Assets/images/img_12.png', 1499000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (13, 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Fire Vapor Special Edition', 1, 4, 'Assets/images/img_13.png', 1499000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (14, 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Velocity Green', 1, 4, 'Assets/images/img_14.png', 1249000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (15, 'Microsoft Xbox Wireless Controller – Xbox Series X, Xbox Series S – Sky Cipher Special Edition', 1, 4, 'Assets/images/img_15.png', 1449000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (16, 'Asus ROG Ally – 512GB AMD Ryzen Z1 Extreme', 5, 5, 'Assets/images/img_16.png', 11500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (17, 'Máy Asus Rog Xbox Ally – 512GB (AMD RYZEN Z2 A)', 5, 5, 'Assets/images/img_17.png', 14990000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (18, 'Máy Asus ROG Xbox Ally X – 1 TB (AMD\r\n RYZEN Z2 EXTREME)', 5, 5, 'Assets/images/img_18.png', 25900000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (19, 'Asus ROG Ally X – 1TB', 5, 5, 'Assets/images/img_19.png', 20500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (20, 'Steam Deck 512GB (NVMe SSD)', 5, 11, 'Assets/images/img_20.png', 9500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (21, 'Máy Lenovo Legion Go S Steamos – 16GB – 512GB (AMD RYZEN Z2 Go) – Nebula', 5, 9, 'Assets/images/img_21.png', 20500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (22, 'Máy Lenovo Legion Go S Windows – 32GB – 1TB (AMD RYZEN Z1E)', 5, 9, 'Assets/images/img_22.png', 29000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (23, 'Lenovo Legion Go 2 – 16GB/1TB – AMD Ryzen Z2', 5, 9, 'Assets/images/img_23.png', 33000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (24, 'Steam Deck OLED White Edition 1TB (NVMe SSD)', 5, 11, 'Assets/images/img_24.png', 18800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (25, 'PS5 Slim Standard – Playstation 5 Slim Standard Ghost Of Yõtei Gold – Limited Edition', 2, 2, 'Assets/images/img_25.png', 19500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (26, 'Máy Nintendo New 3DS XL- Blue', 4, 3, 'Assets/images/img_26.png', 5500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (27, 'Nintendo Switch 2', 4, 3, 'Assets/images/img_27.png', 12350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (28, 'Máy Nintendo Switch – Gray Joy – Con – Mod', 4, 3, 'Assets/images/img_28.png', 4200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (29, 'Nintendo Switch Lite – Turquoise', 4, 3, 'Assets/images/img_29.png', 2900000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (30, 'PlayStation 4/PS4 Fat – 500GB – Trắng– FW 12.02', 2, 2, 'Assets/images/img_30.png', 4650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (31, 'PlayStation 4/PS4 Slim- 1TB – Days Of Play Limited Edition – FW 9.00 ', 2, 2, 'Assets/images/img_31.png', 6600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (32, 'PS5 Slim Digital – Playstation 5 Slim Digital – 30th Anniversary Limited', 2, 2, 'Assets/images/img_32.png', 16500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (33, 'PS5 Pro – PlayStation 5 Pro', 2, 2, 'Assets/images/img_33.png', 19450000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (34, 'Xbox Series X – Digital Edition', 2, 4, 'Assets/images/img_34.png', 16500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (35, 'Anbernic – Retro Game RG DS – 128GB – Black/Crimson Red', 4, 7, 'Assets/images/img_35.png', 3300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (36, 'Bigbig Won – Blitz 2 TMR Wireless Controller', 1, 10, 'Assets/images/img_36.png', 1600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (37, '8BITDO – Pro 3 Controller', 1, 15, 'Assets/images/img_37.png', 1600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (38, 'Máy Nintendo New 3DS LL- Xám Đen', 4, 3, 'Assets/images/img_38.png', 3800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (39, 'Anbernic – Retro Gamboy Flip RG35XXSP – 64GB – Green Transparent', 4, 7, 'Assets/images/img_39.png', 1800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (40, 'Anbernic – Retro Game Handheld RG406 – 256GB', 4, 7, 'Assets/images/img_40.png', 5000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (41, 'Anbernic Retro Game RG353P + 64GB Micro SD Card', 4, 7, 'Assets/images/img_41.png', 3850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (42, 'Máy Chơi Game Retro Game Stick M15 – 128GB', 4, 14, 'Assets/images/img_42.png', 1350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (43, 'Máy Chơi Game Retro PS7000 – 64GB', 4, 14, 'Assets/images/img_43.png', 2200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (44, 'Máy Game Retro Project X – Gray', 4, 14, 'Assets/images/img_44.png', 1950000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (45, 'Nintendo Switch OLED model with Pastel Purple And Pastel Green Joy-Con ', 3, 3, 'Assets/images/img_45.png', 6500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (46, 'Nintendo Switch V2 – Neon Red Blue Joy-Con Mod 128GB ', 3, 3, 'Assets/images/img_46.png', 5200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (47, 'Nintendo Switch Lite – Zacian And Zamazenta Edition – Mod', 4, 3, 'Assets/images/img_47.png', 4200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (48, 'Playstation 3 Super Slim 4000 250GB', 2, 2, 'Assets/images/img_48.png', 3500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (49, 'PlayStation 4/PS4 Fat 500GB – Destiny Limited Edition – FW 9.0', 2, 2, 'Assets/images/img_49.png', 5400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (50, 'PlayStation 4/PS4 Pro – 1TB – Death Stranding Limited Edition', 2, 2, 'Assets/images/img_50.png', 6400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (51, 'Máy PS4 Pro 1TB God of War Limited Edition Hack', 2, 2, 'Assets/images/img_51.png', 7300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (52, 'PlayStation 4/PS4 Pro – 1TB – Monster Hunter\r\n World Limited Edition FW 11.00', 2, 2, 'Assets/images/img_52.png', 7300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (53, 'Máy PS4 Pro 1TB Spider-Man Limited Edition', 2, 2, 'Assets/images/img_53.png', 5500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (54, 'PlayStation 4/PS4 Slim – 1TB Dragon Quest Limited\r\n Edition – FW 11.00 ', 2, 2, 'Assets/images/img_54.png', 6600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (55, 'PSP 3000 USED', 4, 2, 'Assets/images/img_55.png', 2100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (56, 'Xbox Series X SSD 2TB – Galaxy Black Special Edition', 2, 4, 'Assets/images/img_56.png', 15500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (57, 'Xbox Series S SSD 1TB – White', 2, 4, 'Assets/images/img_57.png', 10000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (58, 'Xbox Series X SSD 1TB – Digital Edition – White', 2, 4, 'Assets/images/img_58.png', 17000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (59, 'Retroid Pocket 3', 4, 8, 'Assets/images/img_59.png', 3800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (60, 'DATA FROG SF2000', 4, 16, 'Assets/images/img_60.png', 550000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image`  (
  `id` int NOT NULL,
  `product_id` int NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `isMain` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES (1, 1, 'Assets/images/img_1.png', b'1');
INSERT INTO `product_image` VALUES (2, 1, 'Assets/images/img_1.png', b'0');
INSERT INTO `product_image` VALUES (3, 1, 'Assets/images/img_1.png', b'0');
INSERT INTO `product_image` VALUES (4, 1, 'Assets/images/img_1.png', b'0');

SET FOREIGN_KEY_CHECKS = 1;
