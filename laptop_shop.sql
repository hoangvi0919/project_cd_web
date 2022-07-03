/*
 Navicat Premium Data Transfer

 Source Server         : LTWeb
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : laptop_shop

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 27/01/2021 13:57:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for anh
-- ----------------------------
DROP TABLE IF EXISTS `anh`;
CREATE TABLE `anh`  (
  `MaAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DuongDan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MaAnh`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  CONSTRAINT `anh_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anh
-- ----------------------------
INSERT INTO `anh` VALUES ('banner1', NULL, 'banner_show', 'http://localhost:8080/ProjectGroup02/images/banner/banner1.png');
INSERT INTO `anh` VALUES ('banner2', NULL, 'banner_show', 'http://localhost:8080/ProjectGroup02/images/banner/banner2.png');
INSERT INTO `anh` VALUES ('slider01', NULL, 'slider_show', 'http://localhost:8080/ProjectGroup02/images/slider/slider01.png');
INSERT INTO `anh` VALUES ('slider02', NULL, 'slider_show', 'http://localhost:8080/ProjectGroup02/images/slider/slider02.png');

-- ----------------------------
-- Table structure for binhluan
-- ----------------------------
DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE `binhluan`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã bình luận',
  `MaBinhLuanCha` int(11) NULL DEFAULT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NoiDung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NgayTao` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  INDEX `Username`(`Username`) USING BTREE,
  CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of binhluan
-- ----------------------------

-- ----------------------------
-- Table structure for bonho
-- ----------------------------
DROP TABLE IF EXISTS `bonho`;
CREATE TABLE `bonho`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã bộ nhớ',
  `RAM` tinyint(2) NULL DEFAULT NULL COMMENT 'Đơn vị GB',
  `LoaiRAM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Ví dụ: DDR4',
  `TocDoBusRAM` smallint(4) NULL DEFAULT NULL COMMENT 'Đơn vị MHz',
  `RAMToiDa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Ghi rõ: ví dụ \"32 GB\" hoặc \"Không hỗ trợ nâng cấp\"',
  `OCung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bonho
-- ----------------------------
INSERT INTO `bonho` VALUES (1, 16, 'DDR4 (On board)', 3733, 'Không hỗ trợ nâng cấp', 'SSD 512 GB M.2 PCIe');
INSERT INTO `bonho` VALUES (2, 8, 'DDR4 (2 khe)', 3200, '32 GB', 'SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA');
INSERT INTO `bonho` VALUES (3, 8, 'DDR4 (1 khe)', 3200, '32 GB', '	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA');
INSERT INTO `bonho` VALUES (4, 16, 'DDR4 (On board)', 2933, 'Không hỗ trợ nâng cấp', '1TB SSD M.2 PCIe');
INSERT INTO `bonho` VALUES (5, 4, 'DDR4 (On board +1 khe)', 2133, '8 GB', 'HDD: 500 GB SATA3 , Hỗ trợ khe cắm SSD M.2 SATA3');
INSERT INTO `bonho` VALUES (6, 4, 'DDR4 (2 khe)', 2666, '16 GB', 'HDD: 1 TB SATA3 , Hỗ trợ khe cắm SSD M.2 SATA3');
INSERT INTO `bonho` VALUES (7, 4, 'DDR4 (2 khe)', 2666, '32 GB', 'HDD: 1 TB SATA3 , Hỗ trợ khe cắm SSD M.2 PCIe');
INSERT INTO `bonho` VALUES (8, 4, 'DDR4 (2 khe)', 2666, '16 GB', 'SSD 256GB NVMe PCIe');
INSERT INTO `bonho` VALUES (9, 16, 'LPDDR4 (On board)', 3733, 'Không hỗ trợ nâng cấp', '1TB SSD M.2 PCIe');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_detail
-- ----------------------------
DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE `cart_detail`  (
  `ID` int(11) NOT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NULL DEFAULT NULL,
  `NgayCapNhat` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `MaSP`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cart` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_detail
-- ----------------------------

-- ----------------------------
-- Table structure for congketnoi
-- ----------------------------
DROP TABLE IF EXISTS `congketnoi`;
CREATE TABLE `congketnoi`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã cổng kết nối',
  `CongGiaoTiep` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Các giá trị phân cách nhau bằng ;',
  `KetNoiKhongDay` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Các giá trị phân cách nhau bằng ;',
  `KheDocTheNho` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `ODiaQuang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Không' COMMENT '\"Không\" hoặc \"Có\"',
  `BanPhimSo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Không' COMMENT '\"Không\" hoặc \"Có\"',
  `Webcam` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `TinhNangKhac` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Các giá trị phân cách nhau bằng ;',
  `DenBanPhim` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Không' COMMENT '\"Không\" hoặc \"Có\"',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of congketnoi
-- ----------------------------
INSERT INTO `congketnoi` VALUES (1, '2 x Thunderbolt 3 (USB-C)', 'Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 'Micro SD', 'Không', 'Không', 'HD webcam', 'Bảo mật vân tay', 'Có');
INSERT INTO `congketnoi` VALUES (2, 'USB Type-C (Power Delivery and DisplayPort); 2 x USB 3.1; HDMI; LAN (RJ45); USB 2.0', 'Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 'SD', 'Không', 'Không', 'HD webcam', 'Bảo mật vân tay', 'Có');
INSERT INTO `congketnoi` VALUES (3, 'USB Type-C (Power Delivery and DisplayPort); 2 x USB 3.1; HDMI; LAN (RJ45); USB 2.0; USB Type-C', '	Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 'SD', 'Không', 'Không', 'HD webcam', 'Độ bền chuẩn quân đội MLT STD 810G, Bảo mật vân tay', 'Không');
INSERT INTO `congketnoi` VALUES (4, 'Thunderbolt 3, 2 x USB 3.1', 'Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 'Micro SD', 'Không', 'Không', 'HD webcam', 'Công tắc khóa camera; Tiêu chuẩn Nền Intel Evo; Bảo mật vân tay', 'Có');
INSERT INTO `congketnoi` VALUES (5, '2 x USB 3.1; HDMI; LAN (RJ45); USB 2.0', 'Wi-Fi 802.11 a/b/g/n, Bluetooth v4.0', 'Micro SD', 'Có', 'Có', '1 MP , HP TrueVision Webcam', 'Multi TouchPad', 'Không');
INSERT INTO `congketnoi` VALUES (6, '2 x USB 3.1; HDMI; USB Type-C', '	Bluetooth 4.2, Wi-Fi 802.11 a/b/g/n/ac', 'SD', 'Không', 'Không', '	HD webcam', 'Bút cảm ứng số', 'Không');
INSERT INTO `congketnoi` VALUES (7, '2 x USB 3.1; HDMI; LAN (RJ45); USB 2.0; USB Type-C', 'Bluetooth 4.1, Wi-Fi 802.11 a/b/g/n/ac', 'SD', 'Không', 'Không', 'HD webcam', 'Bảo mật vân tay', 'Có');
INSERT INTO `congketnoi` VALUES (8, '2 x USB 3.1; HDMI; LAN (RJ45); USB 2.0', 'Bluetooth, Wi-Fi 802.11 a/b/g/n/ac', 'SD', 'Không', 'Không', 'HD webcam', 'Bảo mật vân tay', 'Không');
INSERT INTO `congketnoi` VALUES (9, 'USB 3.1, 2 x Thunderbolt 3 (USB-C)', '	Wi-Fi 6 - 802.11ax, Bluetooth v5.0', 'Không', 'Không', 'Không', 'Fixed Focus CMOS camera', 'Bảo mật vân tay', 'Có');

-- ----------------------------
-- Table structure for cpu
-- ----------------------------
DROP TABLE IF EXISTS `cpu`;
CREATE TABLE `cpu`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã CPU',
  `CongNghe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Ví dụ: Intel Core i5 Ice Lake',
  `Loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Ví dụ: 1035G1',
  `TocDo` float NULL DEFAULT NULL COMMENT 'Đơn vị Ghz',
  `TocDoToiDa` float NULL DEFAULT NULL COMMENT 'Đơn vị Ghz. Nếu là NULL thì hiển thị \"Không\"',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cpu
-- ----------------------------
INSERT INTO `cpu` VALUES (1, 'Intel Core i7 Ice Lake', '1065G7', 1.3, 3.9);
INSERT INTO `cpu` VALUES (2, 'AMD Ryzen 5', '4500U', 2.3, 4);
INSERT INTO `cpu` VALUES (3, 'Intel Core i5 Ice Lake', '1035G1', 1, 3.6);
INSERT INTO `cpu` VALUES (4, 'Intel Core i7 Tiger Lake', '1165G7', 2.8, 4.7);
INSERT INTO `cpu` VALUES (5, 'Intel Core i3 Kabylake', '7020U', 2.3, NULL);
INSERT INTO `cpu` VALUES (6, 'Intel Core i3 Coffee Lake', '8145U', 2.1, 3.9);
INSERT INTO `cpu` VALUES (7, 'Intel Core i5 Coffee Lake', '8265U', 1.6, 3.9);
INSERT INTO `cpu` VALUES (8, 'Intel Core i3 Ice Lake', '1005G1', 1.2, 3.4);

-- ----------------------------
-- Table structure for ctdh
-- ----------------------------
DROP TABLE IF EXISTS `ctdh`;
CREATE TABLE `ctdh`  (
  `ID` int(11) NOT NULL COMMENT 'Mã đơn hàng',
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` tinyint(2) NULL DEFAULT NULL COMMENT 'Tối đa 99',
  `HanChotBaoHanh` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `MaSP`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  CONSTRAINT `ctdh_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `donhang` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ctdh_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ctdh
-- ----------------------------

-- ----------------------------
-- Table structure for danhgia
-- ----------------------------
DROP TABLE IF EXISTS `danhgia`;
CREATE TABLE `danhgia`  (
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` tinyint(1) NULL DEFAULT NULL,
  `NoiDung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NgayTao` date NULL DEFAULT NULL,
  PRIMARY KEY (`Username`, `MaSP`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of danhgia
-- ----------------------------

-- ----------------------------
-- Table structure for dohoa_amthanh
-- ----------------------------
DROP TABLE IF EXISTS `dohoa_amthanh`;
CREATE TABLE `dohoa_amthanh`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã đồ hoạ, âm thanh',
  `ThietKeCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Ví dụ: \"Card đồ hoạ rời\" hoặc \"Card đồ hoạ tích hợp\"',
  `CardDoHoa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Ví dụ: Intel UHD Graphics',
  `CNamthanh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dohoa_amthanh
-- ----------------------------
INSERT INTO `dohoa_amthanh` VALUES (1, 'Card đồ họa tích hợp', 'Intel Iris Plus Graphics', 'Realtek High Definition Audio');
INSERT INTO `dohoa_amthanh` VALUES (2, 'Card đồ họa tích hợp', 'AMD Radeon™ Graphics', 'Realtek High Definition Audio');
INSERT INTO `dohoa_amthanh` VALUES (3, 'Card đồ họa tích hợp', 'Intel UHD Graphics', 'Dolby Audio');
INSERT INTO `dohoa_amthanh` VALUES (4, 'Card đồ họa tích hợp', 'Intel® Iris® Xe Graphics', 'Bang & Olufsen audio');
INSERT INTO `dohoa_amthanh` VALUES (5, 'Card đồ họa tích hợp', 'Intel® HD Graphics 620', 'Combo Microphone & Headphone, Loa kép (2 kênh)');
INSERT INTO `dohoa_amthanh` VALUES (6, 'Card đồ họa tích hợp', 'Intel® UHD Graphics 620', 'Realtek High Definition Audio');
INSERT INTO `dohoa_amthanh` VALUES (7, '	Card đồ họa tích hợp', 'Intel® UHD Graphics 620', 'Waves MaxxAudio');
INSERT INTO `dohoa_amthanh` VALUES (8, 'Card đồ họa tích hợp', 'Intel UHD Graphics', 'Realtek High Definition Audio');
INSERT INTO `dohoa_amthanh` VALUES (9, 'Card đồ họa tích hợp', 'Intel Iris Plus Graphics', 'Rotating Sound Bar with Dolby Atmos® Speaker System');

-- ----------------------------
-- Table structure for donhang
-- ----------------------------
DROP TABLE IF EXISTS `donhang`;
CREATE TABLE `donhang`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng',
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `TriGia` bigint(20) NULL DEFAULT NULL,
  `ThanhToan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Phương thức thanh toán',
  `TrangThai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NgayTao` date NULL DEFAULT NULL,
  `NgayGiao` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `Username`(`Username`) USING BTREE,
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donhang
-- ----------------------------

-- ----------------------------
-- Table structure for gia
-- ----------------------------
DROP TABLE IF EXISTS `gia`;
CREATE TABLE `gia`  (
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `STT` int(11) NOT NULL COMMENT 'Số thứ tự thay đổi',
  `Gia` bigint(20) NULL DEFAULT NULL,
  `NgayApDung` date NULL DEFAULT curdate,
  `NgayKetThuc` date NULL DEFAULT NULL,
  PRIMARY KEY (`MaSP`, `STT`) USING BTREE,
  CONSTRAINT `gia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gia
-- ----------------------------
INSERT INTO `gia` VALUES ('0N90H1', 1, 57990000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('171M2PA', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('171M7PA', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('171M8PA', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('193P7PA', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('193R0PA', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('195M8PA', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1A0D5PA', 1, 31490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1A1A6PA', 1, 18290000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('1A1B1PA', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1K3U9PA', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1K3UBPA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1R8E2PA', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('1W7R5PA', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('20SL00MFVN', 1, 16490000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('2K0B1PA', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('2K0B2PA', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('2K0B6PA', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('2K0B7PA', 1, 31490000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('2W7J7PA', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('4ME68PA', 1, 10690000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('4ME90PA', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5AS42PA', 1, 32690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5AS44PA', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5HY94PA', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5HZ19PA', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5HZ28PA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('5YM98PA', 1, 31490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6YZ03PA', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6YZ11PA', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6YZ18PA', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF24PA', 1, 12490000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('6ZF26PA', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF30PA', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF33PA', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF34PA', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF38PA', 1, 32690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF43PA', 1, 31490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF60PA', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('6ZF75PA', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('70175950', 1, 15990000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('70223127', 1, 10990000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('7XJ62PA', 1, 32690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('81Q9007KVN', 1, 49990000, '2021-01-21', NULL);
INSERT INTO `gia` VALUES ('81TK007RVN', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('81W8001XVN', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('82AU0051VN', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8AG62PA', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8EC94PA', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8QN69PA', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8QN78PA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8QN79PA', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8RK39PA', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8TW28PA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8VK71AV', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8WJ02PA', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('8XS68PA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('9FN16PA', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('9PG83PA', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('9PH06PA', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4011T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4016T', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4017T', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4057T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4116T', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4125T', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A4184T', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A6061T', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A6076T', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A6116T', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A6173T', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('A9091T', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('AL007T', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('AL017T', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('AL851T', 1, 6890000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('AL858T', 1, 31490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('AZ006T', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BM048T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BM0616R', 1, 6890000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BM069T', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BQ052T', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BQ185T', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BQ497T', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BR271T', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BR354T', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('BV022T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('CXGR01', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EB052T', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EB075T', 1, 18290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EB317T', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EB353T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EC155T', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ074T', 1, 22990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ1734T', 1, 31490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ232TS', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ255T', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ256T', 1, 30590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EJ480T', 1, 10990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK015T', 1, 10690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK052T', 1, 32690000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK1175T', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK1179T', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK118T', 1, 6890000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK342T', 1, 29990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK738T', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('EK739T', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('ES014T', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('G531GD', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('GRMGK2', 1, 18290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('HE154T', 1, 18290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('IAL001T', 1, 18290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('IAL013T', 1, 6890000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('MQD32SA/A', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('MWTJ2SA/A', 1, 26990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('MWTL2SA/A', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('N5I5591W', 1, 15990000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('NH.Q7NSV.001', 1, 20290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('NX.GR7SV.004', 1, 24590000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('NX.H2ESV.001', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('NX.H6DSV.002', 1, 18290000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('NX.HE3SV.00H', 1, 16490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('P75F005N81A', 1, 12490000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('VAL218T', 1, 8790000, '2021-01-27', NULL);
INSERT INTO `gia` VALUES ('X509FJ', 1, 30590000, '2021-01-27', NULL);

-- ----------------------------
-- Table structure for hedieuhanh
-- ----------------------------
DROP TABLE IF EXISTS `hedieuhanh`;
CREATE TABLE `hedieuhanh`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã hệ điều hành',
  `TenHDH` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `Loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '64-bit',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hedieuhanh
-- ----------------------------
INSERT INTO `hedieuhanh` VALUES (1, 'Windows 10 + Office 365 1 năm', '64-bit');
INSERT INTO `hedieuhanh` VALUES (2, 'Windows 10 Home SL', '64-bit');
INSERT INTO `hedieuhanh` VALUES (4, 'Windows 10 Home SL + Office Home&Student 2019 vĩnh viễn', '64-bit');

-- ----------------------------
-- Table structure for khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE `khuyenmai`  (
  `MaKM` int(11) NOT NULL AUTO_INCREMENT,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MucGiamGia` float NULL DEFAULT 0,
  `NgayApDung` date NULL DEFAULT curdate,
  `NgayKetThuc` date NULL DEFAULT NULL,
  PRIMARY KEY (`MaKM`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  CONSTRAINT `khuyenmai_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `product` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of khuyenmai
-- ----------------------------
INSERT INTO `khuyenmai` VALUES (1, '0N90H1', 0.1, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (2, '1A1A6PA', 0.05, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (3, '20SL00MFVN', 300000, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (4, '2K0B7PA', 0, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (5, '4ME68PA', 0, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (6, '6ZF24PA', 0, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (7, '70175950', 200000, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (8, '70223127', 100000, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (9, '81Q9007KVN', 0, '2021-01-21', NULL);
INSERT INTO `khuyenmai` VALUES (10, '81TK007RVN', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (11, '81W8001XVN', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (12, '82AU0051VN', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (13, '8VK71AV', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (14, 'AL858T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (15, 'BM0616R', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (16, 'BM069T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (17, 'BQ497T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (18, 'BR271T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (19, 'CXGR01', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (20, 'GRMGK2', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (21, 'MQD32SA/A', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (22, 'MWTJ2SA/A', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (23, 'MWTL2SA/A', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (24, 'N5I5591W', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (25, 'NH.Q7NSV.001', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (26, 'NX.GR7SV.004', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (27, 'NX.H2ESV.001', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (28, 'NX.H6DSV.002', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (29, 'NX.HE3SV.00H', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (30, 'P75F005N81A', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (33, '8AG62PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (34, '6ZF38PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (35, 'EK118T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (36, '9FN16PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (37, '5HZ19PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (38, '6ZF43PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (39, 'ES014T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (40, 'BQ052T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (41, '6ZF33PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (42, 'EK1179T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (43, 'A4017T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (44, '1K3UBPA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (45, '195M8PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (46, '6YZ03PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (47, '6ZF34PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (48, '2K0B1PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (49, '193P7PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (50, '8EC94PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (51, '193R0PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (52, 'BQ185T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (53, '2W7J7PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (54, 'A4116T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (55, '7XJ62PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (56, '4ME90PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (57, '2K0B6PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (58, '1R8E2PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (59, 'EB052T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (60, 'A4184T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (61, 'EC155T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (62, 'EK739T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (63, '9PH06PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (64, '1A0D5PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (65, 'A4016T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (66, 'X509FJ', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (67, 'EK1175T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (68, '8QN69PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (69, 'IAL001T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (70, '8RK39PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (71, 'EB075T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (72, 'AL007T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (73, 'EJ074T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (74, 'A6061T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (75, '8XS68PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (76, 'EB353T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (77, '5HZ28PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (78, 'A6173T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (79, 'BV022T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (80, '6ZF60PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (81, 'AL017T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (82, '8WJ02PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (83, 'A4057T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (84, 'A4011T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (85, '171M8PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (86, 'VAL218T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (87, '1W7R5PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (88, 'AZ006T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (89, '6ZF26PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (90, 'EJ480T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (91, 'A6116T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (92, '9PG83PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (93, 'A6076T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (94, '1A1B1PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (95, '8QN79PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (96, '8QN78PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (97, 'EJ255T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (98, 'EJ1734T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (99, '5HY94PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (100, 'AL851T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (101, '2K0B2PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (102, '5YM98PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (103, 'EK015T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (104, '5AS44PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (105, '171M7PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (106, 'G531GD', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (107, 'EK052T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (108, '8TW28PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (109, 'EK342T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (110, 'A4125T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (111, 'EJ232TS', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (112, 'EK738T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (113, '171M2PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (114, '6YZ11PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (115, '6ZF75PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (116, 'EB317T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (117, 'EJ256T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (118, 'HE154T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (119, 'BR354T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (120, '5AS42PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (121, 'IAL013T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (122, '6ZF30PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (123, 'BM048T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (124, '6YZ18PA', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (125, 'A9091T', 0, '2021-01-27', NULL);
INSERT INTO `khuyenmai` VALUES (126, '1K3U9PA', 0, '2021-01-27', NULL);

-- ----------------------------
-- Table structure for kichthuoc
-- ----------------------------
DROP TABLE IF EXISTS `kichthuoc`;
CREATE TABLE `kichthuoc`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã kích thước',
  `KichThuoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `TrongLuong` float NULL DEFAULT NULL COMMENT 'Đơn vị kg',
  `ChatLieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kichthuoc
-- ----------------------------
INSERT INTO `kichthuoc` VALUES (1, 'Dài 296 mm - Rộng 196 mm - Dày 14.8 mm', 1.27, 'Vỏ kim loại');
INSERT INTO `kichthuoc` VALUES (2, 'Dài 324.1 mm - Rộng 237.7 mm - Dày 18.0 mm', 1.564, 'Vỏ kim loại');
INSERT INTO `kichthuoc` VALUES (3, 'Dài 326 mm - Dài 230 mm - Dày 17.9 mm', 1.5, 'Vỏ kim loại');
INSERT INTO `kichthuoc` VALUES (4, 'Dài 306.5 mm- Rộng 194.6 mm - Dày 16.9 mm', 1.236, 'Vỏ kim loại nguyên khối');
INSERT INTO `kichthuoc` VALUES (5, 'Dài 376 mm - Rộng 246 mm - Dày 22.5 mm', 1.77, 'Vỏ nhựa');
INSERT INTO `kichthuoc` VALUES (6, 'Dài 324 mm - Rộng 224 mm - Dày 19.7 mm', 1.65, '	Vỏ nhựa');
INSERT INTO `kichthuoc` VALUES (7, 'Dài 361.1 mm - Rộng 249 mm - Dày 20.3 mm', 1.9, 'Vỏ nhựa');
INSERT INTO `kichthuoc` VALUES (8, 'Dài 339 mm - Rộng 242 mm - Dày 21 mm', 1.66, 'Vỏ nhựa');
INSERT INTO `kichthuoc` VALUES (9, 'Dài 320.3 mm - Rộng 215.6 mm - Dày 15.7 mm', 1.35, 'Vỏ kim loại nguyên khối');

-- ----------------------------
-- Table structure for lienhe
-- ----------------------------
DROP TABLE IF EXISTS `lienhe`;
CREATE TABLE `lienhe`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TenNguoiGui` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NoiDung` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NgayGui` date NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lienhe
-- ----------------------------

-- ----------------------------
-- Table structure for manhinh
-- ----------------------------
DROP TABLE IF EXISTS `manhinh`;
CREATE TABLE `manhinh`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã màn hình',
  `KichThuoc` float NULL DEFAULT NULL COMMENT 'Đơn vị inch',
  `DoPhanGiai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `CongNghe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật' COMMENT 'Nếu có nhiều giá trị thì phân cách nhau bằng ;                 \r\n\r\nVí dụ: 60Hz; LED Backlight;  Chống chói Anti-Glare',
  `CamUng` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Không' COMMENT '\"Không\" hoặc \"Có\"',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manhinh
-- ----------------------------
INSERT INTO `manhinh` VALUES (1, 13.4, '4K/UHD (3840 x 2400)', 'Tấm nền IPS; 60Hz; eDP Wide View Angle', 'Có');
INSERT INTO `manhinh` VALUES (2, 14, 'Full HD (1920 x 1080)', '60Hz; Tấm nền IPS; LED Backlit', 'Không');
INSERT INTO `manhinh` VALUES (3, 14, 'Full HD (1920 x 1080)', '60Hz, Chống chói Anti Glare', 'Không');
INSERT INTO `manhinh` VALUES (4, 13.3, 'Full HD (1920 x 1080)', '400 nits; Tấm nền IPS; 60Hz; Wled-backlit', 'Không');
INSERT INTO `manhinh` VALUES (5, 15.6, 'Full HD (1920 x 1080)', 'HD BrightView LED-backlit', 'Không');
INSERT INTO `manhinh` VALUES (6, 14, 'Full HD (1920 x 1080)', '60Hz, LED', 'Có');
INSERT INTO `manhinh` VALUES (7, 15.6, 'Full HD (1920 x 1080)', '60Hz; Tấm nền IPS; LED Backlight - AntiGlare', 'Không');
INSERT INTO `manhinh` VALUES (8, 14, 'Full HD (1920 x 1080)', '60Hz, Chống chói Anti Glare; LED Backlit', 'Không');
INSERT INTO `manhinh` VALUES (9, 14, '4K/UHD (3840 x 2160)', 'Tấm nền IPS; HDR Vesa400; LED Backlit', 'Có');

-- ----------------------------
-- Table structure for nhacungcap
-- ----------------------------
DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE `nhacungcap`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TenNhaCC` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `VAT` float NULL DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NhanHieu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nhacungcap
-- ----------------------------

-- ----------------------------
-- Table structure for pin
-- ----------------------------
DROP TABLE IF EXISTS `pin`;
CREATE TABLE `pin`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã pin',
  `LoaiPin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `ThongTin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pin
-- ----------------------------
INSERT INTO `pin` VALUES (1, 'PIN liền', 'Li-Ion 4 cell');
INSERT INTO `pin` VALUES (2, 'PIN liền', 'Li-Ion 3 cell');
INSERT INTO `pin` VALUES (3, 'PIN liền', 'Li - Polymer 3 cell');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã sản phẩm',
  `TrangThai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SLConLai` int(11) NULL DEFAULT 99,
  `SLDaBan` int(11) NULL DEFAULT 0,
  `HangSX` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ThoiDiemRaMat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'Đang cập nhật',
  `NgayNhap` date NULL DEFAULT NULL,
  `ThoiGianBaoHanh` tinyint(2) NULL DEFAULT 12,
  `SoLuotDanhGia` int(11) NULL DEFAULT 0,
  `SoSaoDanhGia` tinyint(1) NULL DEFAULT 4,
  `MaCPU` int(11) NULL DEFAULT NULL,
  `MaBoNho` int(11) NULL DEFAULT NULL,
  `MaManHinh` int(11) NULL DEFAULT NULL,
  `MaDoHoa` int(11) NULL DEFAULT NULL,
  `MaKichThuoc` int(11) NULL DEFAULT NULL,
  `MaCongKetNoi` int(11) NULL DEFAULT NULL,
  `MaHeDieuHanh` int(11) NULL DEFAULT NULL,
  `MaPin` int(11) NULL DEFAULT NULL,
  `MainImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Đường dẫn tới ảnh chính',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `MaCPU`(`MaCPU`) USING BTREE,
  INDEX `MaBoNho`(`MaBoNho`) USING BTREE,
  INDEX `MaManHinh`(`MaManHinh`) USING BTREE,
  INDEX `MaDoHoa`(`MaDoHoa`) USING BTREE,
  INDEX `MaKichThuoc`(`MaKichThuoc`) USING BTREE,
  INDEX `MaCongKetNoi`(`MaCongKetNoi`) USING BTREE,
  INDEX `MaHeDieuHanh`(`MaHeDieuHanh`) USING BTREE,
  INDEX `MaPin`(`MaPin`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`MaCPU`) REFERENCES `cpu` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`MaBoNho`) REFERENCES `bonho` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`MaManHinh`) REFERENCES `manhinh` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`MaDoHoa`) REFERENCES `dohoa_amthanh` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_5` FOREIGN KEY (`MaKichThuoc`) REFERENCES `kichthuoc` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_6` FOREIGN KEY (`MaCongKetNoi`) REFERENCES `congketnoi` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_7` FOREIGN KEY (`MaHeDieuHanh`) REFERENCES `hedieuhanh` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_ibfk_8` FOREIGN KEY (`MaPin`) REFERENCES `pin` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('0N90H1', 'New; NoiBat', 'Dell XPS 13 9300 i7 1065G7', 'Laptop Dell XPS 13 9300 i7 (0N90H1) chắc chắn là một sự đột phá của Dell về thiết kế lẫn hiệu năng. Với một thiết kế gọn nhẹ, hiệu năng mạnh mẽ với chip Intel Core i7 và RAM 16 GB, Dell XPS 13 9300 tự tin đáp ứng tốt các nhu cầu làm việc và giải trí.', 99, 90, 'Dell', '2020', '2021-01-27', 12, 0, 5, 1, 1, 1, 1, 1, 1, 1, 1, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/0N90H1/main.jpg');
INSERT INTO `product` VALUES ('171M2PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 19, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/171M2PA/main.jpg');
INSERT INTO `product` VALUES ('171M7PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 21, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/171M7PA/main.jpg');
INSERT INTO `product` VALUES ('171M8PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 29, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/171M8PA/main.jpg');
INSERT INTO `product` VALUES ('193P7PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 23, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/193P7PA/main.jpg');
INSERT INTO `product` VALUES ('193R0PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 12, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/193R0PA/main.jpg');
INSERT INTO `product` VALUES ('195M8PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 16, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/195M8PA/main.jpg');
INSERT INTO `product` VALUES ('1A0D5PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 9, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1A0D5PA/main.jpg');
INSERT INTO `product` VALUES ('1A1A6PA', 'New; NoiBat', 'HP ProBook 445 G7 R5 4500U', 'Laptop HP ProBook 445 G7 (1A1A6PA) là chiếc laptop với giá thành tầm trung cấu hình mạnh mẽ AMD Ryzen 5 sẽ đáp ứng hầu hết các nhu cầu văn phòng và giải trí thông thường. Thiết kế sang trọng tinh tế cùng với SSD siêu nhanh giúp bạn sẵn sàng xử lý công việ', 99, 80, 'HP', '2020', NULL, 12, 0, 4, 2, 2, 2, 2, 2, 2, 2, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1A1A6PA/main.jpg');
INSERT INTO `product` VALUES ('1A1B1PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 36, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1A1B1PA/main.jpg');
INSERT INTO `product` VALUES ('1K3U9PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 45, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1K3U9PA/main.jpg');
INSERT INTO `product` VALUES ('1K3UBPA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 10, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1K3UBPA/main.jpg');
INSERT INTO `product` VALUES ('1R8E2PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 1, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1R8E2PA/main.jpg');
INSERT INTO `product` VALUES ('1W7R5PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 37, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/1W7R5PA/main.jpg');
INSERT INTO `product` VALUES ('20SL00MFVN', 'New', 'Lenovo ThinkBook 14IIL i5 1035G1', 'Laptop Lenovo ThinkBook 14 IIL i5 (20SL00MFVN) phù hợp với doanh nhân, người làm văn phòng cần một chiếc máy tính mỏng nhẹ nhưng vẫn có cấu hình mạnh mẽ và khả năng bảo mật an toàn.', 99, 79, 'Lenovo', '2020', NULL, 12, 0, 4, 3, 3, 3, 3, 3, 3, 2, 3, 'http://localhost:8080/ProjectGroup02/images/shoe/Lenovo/20SL00MFVN/main.jpg');
INSERT INTO `product` VALUES ('2K0B1PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 46, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/2K0B1PA/main.jpg');
INSERT INTO `product` VALUES ('2K0B2PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 39, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/2K0B2PA/main.jpg');
INSERT INTO `product` VALUES ('2K0B6PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 42, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 8, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/2K0B6PA/main.jpg');
INSERT INTO `product` VALUES ('2K0B7PA', 'NoiBat', 'HP Envy 13 ba1031TU i7 1165G7', 'Laptop HP Envy 13-ba1031TU i7 1165G7 (2K0B7PA) là chiếc laptop mới ra mắt năm 2020 có cấu hình mạnh mẽ với chip Intel Core i7 thế hệ thứ 11. Mẫu laptop mỏng nhẹ, thời trang này hứa hẹn sẽ đáp ứng tốt nhu cầu sử dụng laptop cho dân văn phòng nhờ thiết kế n', 99, 50, 'HP', '2020', NULL, 12, 0, 4, 4, 4, 4, 4, 4, 4, 4, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/2K0B7PA/main.jpg');
INSERT INTO `product` VALUES ('2W7J7PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 23, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/2W7J7PA/main.jpg');
INSERT INTO `product` VALUES ('4ME68PA', 'DKD', 'HP 15 da0054TU i3 7020U', 'Laptop HP 15 da0054TU là phiên bản máy tính xách tay với cấu hình được trang bị vi xử lý chip Intel Core i3 Kabylake thế hệ 7 đem đến hiệu năng ổn định khi thao tác các tác vụ cơ bản, phù hợp cho công việc văn phòng, học tập.', 99, 5, 'HP', '2019', NULL, 12, 33, 3, 5, 5, 5, 5, 5, 5, 2, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/4ME68PA/main.jpg');
INSERT INTO `product` VALUES ('4ME90PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 35, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/4ME90PA/main.jpg');
INSERT INTO `product` VALUES ('5AS42PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 18, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5AS42PA/main.jpg');
INSERT INTO `product` VALUES ('5AS44PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 42, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5AS44PA/main.jpg');
INSERT INTO `product` VALUES ('5HY94PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 1, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5HY94PA/main.jpg');
INSERT INTO `product` VALUES ('5HZ19PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 38, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5HZ19PA/main.jpg');
INSERT INTO `product` VALUES ('5HZ28PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 42, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5HZ28PA/main.jpg');
INSERT INTO `product` VALUES ('5YM98PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 32, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/5YM98PA/main.jpg');
INSERT INTO `product` VALUES ('6YZ03PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 42, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6YZ03PA/main.jpg');
INSERT INTO `product` VALUES ('6YZ11PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 41, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6YZ11PA/main.jpg');
INSERT INTO `product` VALUES ('6YZ18PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 30, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6YZ18PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF24PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', 'Laptop HP Pavilion x360 dh0103TU có cấu hình không quá mạnh tuy nhiên nó mang lại hiệu năng ổn định, xử lý tốt các nhu cầu học tập và công việc văn phòng thường ngày. Thiết kế gập hơn 180 độ, màn hình cảm ứng đa điểm là lợi thế của chiếc laptop này bởi bạ', 99, 40, 'HP', '2019', NULL, 12, 12, 2, 6, 6, 6, 6, 6, 6, 2, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF24PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF26PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 49, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF26PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF30PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 16, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 5, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF30PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF33PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 36, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF33PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF34PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 28, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF34PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF38PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 42, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF38PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF43PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 16, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF43PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF60PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 21, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF60PA/main.jpg');
INSERT INTO `product` VALUES ('6ZF75PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 9, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/6ZF75PA/main.jpg');
INSERT INTO `product` VALUES ('70175950', 'DKD', 'Dell Vostro 5581 i5 8265U', 'Dell Vostro 5581- 93S1GT2 là chiếc máy tính văn phòng đáng sở hữu với mức giá tốt. Máy sở hữu thiết kế đơn giản nhưng không kém phần sang trọng cùng một cấu hình mạnh mẽ đáp ứng tốt nhu cầu văn phòng và giải trí thường ngày.', 99, 30, 'Dell', '2018', NULL, 12, 11, 2, 7, 7, 7, 7, 7, 7, 1, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/70175950/main.jpg');
INSERT INTO `product` VALUES ('70223127', 'New', 'Dell Vostro 3491 i3 1005G1', 'Laptop Dell Vostro 3491 i3 (70223127) là chiếc máy tính xách tay văn phòng được thiết kế nhỏ gọn, dễ dịch chuyển, cấu hình máy không mạnh nhưng đủ đáp ứng nhu cầu học tập, văn phòng cơ bản, trình duyệt web và làm việc đa nhiệm.', 99, 20, 'Dell', '2020', NULL, 12, 0, 2, 8, 8, 8, 8, 8, 8, 2, 2, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/70223127/main.jpg');
INSERT INTO `product` VALUES ('7XJ62PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 49, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/7XJ62PA/main.jpg');
INSERT INTO `product` VALUES ('81Q9007KVN', 'New', 'Lenovo Yoga C940 14IIL i7 1065G7', 'Laptop Lenovo Yoga C940 14IIL i7 (81Q9007KVN) là phiên bản laptop doanh nhân cao cấp sang trọng. Máy có cấu hình khỏe với chip Core i7 thế hệ 10, ổ cứng SSD 1024 GB cực ấn tượng cùng một thiết kế siêu mỏng nhẹ tiện dụng.', 99, 10, 'Lenovo', '2019', NULL, 12, 0, 5, 1, 9, 9, 9, 9, 9, 2, 1, 'http://localhost:8080/ProjectGroup02/images/shoe/Lenovo/81Q9007KVN/main.jpg');
INSERT INTO `product` VALUES ('81TK007RVN', 'DKD', 'Lenovo IdeaPad C340 14IML i5 10210U', NULL, 99, 5, 'Lenovo', 'Đang cập nhật', NULL, 12, 0, 4, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Lenovo/81TK007RVN/main.jpg');
INSERT INTO `product` VALUES ('81W8001XVN', 'DKD', 'Lenovo IdeaPad S145 15IIL i3 1005G1', NULL, 99, 24, 'Lenovo', 'Đang cập nhật', NULL, 12, 0, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Lenovo/81W8001XVN/main.jpg');
INSERT INTO `product` VALUES ('82AU0051VN', 'DKD', 'Lenovo Legion 5 15IMH05 i7 10750H', NULL, 99, 33, 'Lenovo', 'Đang cập nhật', NULL, 12, 0, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Lenovo/82AU0051VN/main.jpg');
INSERT INTO `product` VALUES ('8AG62PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 12, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8AG62PA/main.jpg');
INSERT INTO `product` VALUES ('8EC94PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 25, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8EC94PA/main.jpg');
INSERT INTO `product` VALUES ('8QN69PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 41, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8QN69PA/main.jpg');
INSERT INTO `product` VALUES ('8QN78PA', 'DKD', 'HP 15 da0054TU i3 7020U', NULL, 99, 15, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8QN78PA/main.jpg');
INSERT INTO `product` VALUES ('8QN79PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 9, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8QN79PA/main.jpg');
INSERT INTO `product` VALUES ('8RK39PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 17, 'HP', 'Đang cập nhật', NULL, 24, 0, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8RK39PA/main.jpg');
INSERT INTO `product` VALUES ('8TW28PA', 'DKD', 'HP ProBook 445 G7 R5 4500U', NULL, 99, 30, 'HP', 'Đang cập nhật', NULL, 24, 0, 4, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8TW28PA/main.jpg');
INSERT INTO `product` VALUES ('8VK71AV', 'New', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 37, 'HP', 'Đang cập nhật', NULL, 12, 0, 4, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8VK71AV/main.jpg');
INSERT INTO `product` VALUES ('8WJ02PA', 'DKD', 'HP Zbook Firefly 14 G7 i7 10510U', NULL, 99, 38, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8WJ02PA/main.jpg');
INSERT INTO `product` VALUES ('8XS68PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 41, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/8XS68PA/main.jpg');
INSERT INTO `product` VALUES ('9FN16PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 33, 'HP', 'Đang cập nhật', NULL, 24, 0, 5, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/9FN16PA/main.jpg');
INSERT INTO `product` VALUES ('9PG83PA', 'DKD', 'HP Pavilion x360 dh0103TU i3 8145U', NULL, 99, 16, 'HP', 'Đang cập nhật', NULL, 24, 0, 2, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/9PG83PA/main.jpg');
INSERT INTO `product` VALUES ('9PH06PA', 'DKD', 'HP Envy 13 ba1031TU i7 1165G7', NULL, 99, 15, 'HP', 'Đang cập nhật', NULL, 24, 0, 3, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/hp/9PH06PA/main.jpg');
INSERT INTO `product` VALUES ('A4011T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 14, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4011T/main.jpg');
INSERT INTO `product` VALUES ('A4016T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 39, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4016T/main.jpg');
INSERT INTO `product` VALUES ('A4017T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 49, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4017T/main.jpg');
INSERT INTO `product` VALUES ('A4057T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 50, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4057T/main.jpg');
INSERT INTO `product` VALUES ('A4116T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 34, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4116T/main.jpg');
INSERT INTO `product` VALUES ('A4125T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 6, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4125T/main.jpg');
INSERT INTO `product` VALUES ('A4184T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 14, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A4184T/main.jpg');
INSERT INTO `product` VALUES ('A6061T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 4, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A6061T/main.jpg');
INSERT INTO `product` VALUES ('A6076T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 33, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A6076T/main.jpg');
INSERT INTO `product` VALUES ('A6116T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 42, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A6116T/main.jpg');
INSERT INTO `product` VALUES ('A6173T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 23, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A6173T/main.jpg');
INSERT INTO `product` VALUES ('A9091T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 16, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/A9091T/main.jpg');
INSERT INTO `product` VALUES ('AL007T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 22, 'Asus', 'Đang cập nhật', NULL, 24, 0, 1, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/AL007T/main.jpg');
INSERT INTO `product` VALUES ('AL017T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 49, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/AL017T/main.jpg');
INSERT INTO `product` VALUES ('AL851T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 19, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/AL851T/main.jpg');
INSERT INTO `product` VALUES ('AL858T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 76, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 6, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/AL858T/main.jpg');
INSERT INTO `product` VALUES ('AZ006T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 37, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/AZ006T/main.jpg');
INSERT INTO `product` VALUES ('BM048T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 5, 'Asus', 'Đang cập nhật', NULL, 24, 0, 1, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BM048T/main.jpg');
INSERT INTO `product` VALUES ('BM0616R', 'New', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 23, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BM0616R/main.jpg');
INSERT INTO `product` VALUES ('BM069T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 32, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BM069T/main.jpg');
INSERT INTO `product` VALUES ('BQ052T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 26, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BQ052T/main.jpg');
INSERT INTO `product` VALUES ('BQ185T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 32, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BQ185T/main.jpg');
INSERT INTO `product` VALUES ('BQ497T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 45, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BQ497T/main.jpg');
INSERT INTO `product` VALUES ('BR271T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 12, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BR271T/main.jpg');
INSERT INTO `product` VALUES ('BR354T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 19, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BR354T/main.jpg');
INSERT INTO `product` VALUES ('BV022T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 44, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/BV022T/main.jpg');
INSERT INTO `product` VALUES ('CXGR01', 'DKD', 'Dell Inspiron 5584 i5 8265U', NULL, 99, 84, 'Dell', 'Đang cập nhật', NULL, 12, 0, 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/CXGR01/main.jpg');
INSERT INTO `product` VALUES ('EB052T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 41, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EB052T/main.jpg');
INSERT INTO `product` VALUES ('EB075T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 7, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EB075T/main.jpg');
INSERT INTO `product` VALUES ('EB317T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 47, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EB317T/main.jpg');
INSERT INTO `product` VALUES ('EB353T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 15, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EB353T/main.jpg');
INSERT INTO `product` VALUES ('EC155T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 18, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EC155T/main.jpg');
INSERT INTO `product` VALUES ('EJ074T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 36, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ074T/main.jpg');
INSERT INTO `product` VALUES ('EJ1734T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 36, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ1734T/main.jpg');
INSERT INTO `product` VALUES ('EJ232TS', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 15, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ232TS/main.jpg');
INSERT INTO `product` VALUES ('EJ255T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 5, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ255T/main.jpg');
INSERT INTO `product` VALUES ('EJ256T', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 35, 'Asus', 'Đang cập nhật', NULL, 24, 0, 1, 8, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ256T/main.jpg');
INSERT INTO `product` VALUES ('EJ480T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 1, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EJ480T/main.jpg');
INSERT INTO `product` VALUES ('EK015T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 1, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK015T/main.jpg');
INSERT INTO `product` VALUES ('EK052T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 4, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK052T/main.jpg');
INSERT INTO `product` VALUES ('EK1175T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 41, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK1175T/main.jpg');
INSERT INTO `product` VALUES ('EK1179T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 15, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK1179T/main.jpg');
INSERT INTO `product` VALUES ('EK118T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 10, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 4, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK118T/main.jpg');
INSERT INTO `product` VALUES ('EK342T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 16, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK342T/main.jpg');
INSERT INTO `product` VALUES ('EK738T', 'DKD', 'Asus VivoBook X509MA N4020', NULL, 99, 46, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK738T/main.jpg');
INSERT INTO `product` VALUES ('EK739T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 6, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/EK739T/main.jpg');
INSERT INTO `product` VALUES ('ES014T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 48, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/ES014T/main.jpg');
INSERT INTO `product` VALUES ('G531GD', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 15, 'Asus', 'Đang cập nhật', NULL, 24, 0, 5, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/G531GD/main.jpg');
INSERT INTO `product` VALUES ('GRMGK2', 'DKD', 'Dell Vostro 3590 i7 10510U', NULL, 99, 45, 'Dell', 'Đang cập nhật', NULL, 12, 0, 4, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/GRMGK2/main.jpg');
INSERT INTO `product` VALUES ('HE154T', 'DKD', 'Asus ExpertBook B9450F i7 10510U', NULL, 99, 44, 'Asus', 'Đang cập nhật', NULL, 24, 0, 2, 5, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/HE154T/main.jpg');
INSERT INTO `product` VALUES ('IAL001T', 'DKD', 'Asus VivoBook A515EA i3 1115G4', NULL, 99, 37, 'Asus', 'Đang cập nhật', NULL, 24, 0, 1, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/IAL001T/main.jpg');
INSERT INTO `product` VALUES ('IAL013T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 14, 'Asus', 'Đang cập nhật', NULL, 24, 0, 4, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/IAL013T/main.jpg');
INSERT INTO `product` VALUES ('MQD32SA/A', 'NoiBat', 'Apple MacBook Air 2017 i5 1.8GHz', NULL, 99, 69, 'Apple', 'Đang cập nhật', NULL, 12, 0, 3, 5, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Macbook/MQD32SA-A/main.jpg');
INSERT INTO `product` VALUES ('MWTJ2SA/A', 'New; NoiBat', 'Apple MacBook Air 2020 i3 1.1GHz', NULL, 99, 15, 'Apple', 'Đang cập nhật', NULL, 12, 0, 4, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Macbook/MWTJ2SA-A/main.jpg');
INSERT INTO `product` VALUES ('MWTL2SA/A', 'New; NoiBat', 'Apple MacBook Air 2020 i3 1.1GHz', NULL, 99, 78, 'Apple', 'Đang cập nhật', NULL, 12, 0, 4, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/Macbook/MWTL2SA-A/main.jpg');
INSERT INTO `product` VALUES ('N5I5591W', 'DKD', 'Dell Inspiron 7591 i5 9300H', NULL, 99, 34, 'Dell', 'Đang cập nhật', NULL, 12, 0, 4, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/N5I5591W/main.jpg');
INSERT INTO `product` VALUES ('NH.Q7NSV.001', 'NoiBat', 'Acer Nitro AN515 55 70AX i7 10750H', NULL, 99, 54, 'Acer', 'Đang cập nhật', NULL, 12, 0, 3, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/acer/NH.Q7NSV.001/main.jpg');
INSERT INTO `product` VALUES ('NX.GR7SV.004', 'DKD', 'Acer Spin SP513 52N 556V i5 8250U', NULL, 99, 23, 'Acer', 'Đang cập nhật', NULL, 12, 0, 4, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/acer/NX.GR7SV.004/main.jpg');
INSERT INTO `product` VALUES ('NX.H2ESV.001', 'NoiBat', 'Acer Aspire E5 576G 88EP i7 8550U', NULL, 99, 12, 'Acer', 'Đang cập nhật', NULL, 12, 0, 4, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/acer/NX.H2ESV.001/main.jpg');
INSERT INTO `product` VALUES ('NX.H6DSV.002', 'DKD', 'Acer Aspire A515 53 5112 i5 8265U', NULL, 99, 47, 'Acer', 'Đang cập nhật', NULL, 12, 0, 3, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/acer/NX.H6DSV.002/main.jpg');
INSERT INTO `product` VALUES ('NX.HE3SV.00H', 'DKD', 'Acer Aspire 3 A315 34 P26U N5030', NULL, 99, 75, 'Acer', 'Đang cập nhật', NULL, 12, 0, 4, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/acer/NX.HE3SV.00H/main.jpg');
INSERT INTO `product` VALUES ('P75F005N81A', 'DKD', 'Dell Inspiron 3581 i3 7020U', NULL, 99, 23, 'Dell', 'Đang cập nhật', NULL, 12, 0, 1, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/dell/P75F005N81A/main.jpg');
INSERT INTO `product` VALUES ('VAL218T', 'DKD', 'Asus VivoBook Gaming F571GT i7 9750H', NULL, 99, 44, 'Asus', 'Đang cập nhật', NULL, 24, 0, 1, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/VAL218T/main.jpg');
INSERT INTO `product` VALUES ('X509FJ', 'DKD', 'Asus ZenBook UX425EA i5 1135G7', NULL, 99, 43, 'Asus', 'Đang cập nhật', NULL, 24, 0, 3, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:8080/ProjectGroup02/images/shoe/asus/X509FJ/main.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `State` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'active' COMMENT 'Trạng thái, ví dụ \"active\", \"disable\"',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Ví dụ: Root, Admin, Customer',
  `Sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Giới tính',
  `Dob` date NULL DEFAULT NULL COMMENT 'Ngày sinh',
  `CreatedDate` date NULL DEFAULT curdate COMMENT 'Ngày tạo',
  `Avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Link ảnh đại diện',
  `Key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `KeyTime` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('ti', '123456', NULL, 'active', NULL, NULL, NULL, 'Customer', NULL, NULL, '2021-01-22', NULL, NULL, NULL);

-- ----------------------------
-- View structure for v_gia
-- ----------------------------
DROP VIEW IF EXISTS `v_gia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_gia` AS SELECT
	gia.MaSP, 
	gia.Gia
FROM
	gia
	INNER JOIN
	v_maxsttgia
	ON 
		gia.MaSP = v_maxsttgia.MaSP AND
		gia.STT = v_maxsttgia.`MAX(gia.STT)` ;

-- ----------------------------
-- View structure for v_khuyenmai
-- ----------------------------
DROP VIEW IF EXISTS `v_khuyenmai`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_khuyenmai` AS SELECT
	khuyenmai.MaSP, 
	khuyenmai.MucGiamGia
FROM
	khuyenmai
	INNER JOIN
	v_maxmakm
	ON 
		khuyenmai.MaSP = v_maxmakm.MaSP AND
		khuyenmai.MaKM = v_maxmakm.`MAX(khuyenmai.MaKM)` ;

-- ----------------------------
-- View structure for v_listing
-- ----------------------------
DROP VIEW IF EXISTS `v_listing`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_listing` AS SELECT
	product.ID, 
	product.Ten, 
	product.SoSaoDanhGia, 
	product.MainImg, 
	bonho.RAM, 
	bonho.OCung, 
	v_khuyenmai.MucGiamGia, 
	v_gia.Gia, 
	product.TrangThai, 
	product.SLDaBan
FROM
	product
	INNER JOIN
	bonho
	ON 
		product.MaBoNho = bonho.ID
	INNER JOIN
	v_khuyenmai
	ON 
		product.ID = v_khuyenmai.MaSP
	INNER JOIN
	v_gia
	ON 
		product.ID = v_gia.MaSP ;

-- ----------------------------
-- View structure for v_maxmakm
-- ----------------------------
DROP VIEW IF EXISTS `v_maxmakm`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_maxmakm` AS SELECT
	khuyenmai.MaSP, 
	MAX(khuyenmai.MaKM)
FROM
	khuyenmai
GROUP BY
	khuyenmai.MaSP ;

-- ----------------------------
-- View structure for v_maxsttgia
-- ----------------------------
DROP VIEW IF EXISTS `v_maxsttgia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_maxsttgia` AS SELECT
	gia.MaSP, 
	MAX(gia.STT)
FROM
	gia
GROUP BY
	gia.MaSP ;

SET FOREIGN_KEY_CHECKS = 1;
