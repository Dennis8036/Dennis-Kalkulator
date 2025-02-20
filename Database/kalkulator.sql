/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : kalkulator

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 20/02/2025 15:11:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 384 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (1, 1, 'User melakukan Penghapusan seluruh data activity', '2025-02-03 09:11:24');
INSERT INTO `tb_activity` VALUES (2, 1, 'User membuka Log Activity', '2025-02-03 09:11:25');
INSERT INTO `tb_activity` VALUES (3, 1, 'User membuka Dashboard', '2025-02-03 09:11:27');
INSERT INTO `tb_activity` VALUES (4, 1, 'User membuka Dashboard', '2025-02-03 09:45:27');
INSERT INTO `tb_activity` VALUES (5, 1, 'User membuka halaman pesanan', '2025-02-03 09:45:30');
INSERT INTO `tb_activity` VALUES (6, 1, 'User membuka Daftar Menu', '2025-02-03 09:45:37');
INSERT INTO `tb_activity` VALUES (7, 1, 'User membuka halaman kategori', '2025-02-03 09:45:39');
INSERT INTO `tb_activity` VALUES (8, 1, 'User membuka halaman laporan', '2025-02-03 09:45:40');
INSERT INTO `tb_activity` VALUES (9, 1, 'User membuka view meja', '2025-02-03 09:45:41');
INSERT INTO `tb_activity` VALUES (10, 1, 'User membuka Dashboard', '2025-02-03 09:45:46');
INSERT INTO `tb_activity` VALUES (11, 1, 'User membuka Dashboard', '2025-02-03 09:56:25');
INSERT INTO `tb_activity` VALUES (12, 1, 'User membuka halaman pesanan', '2025-02-03 09:56:28');
INSERT INTO `tb_activity` VALUES (13, 1, 'User membuka Dashboard', '2025-02-03 09:58:21');
INSERT INTO `tb_activity` VALUES (14, 1, 'User membuka halaman Setting', '2025-02-03 09:59:22');
INSERT INTO `tb_activity` VALUES (15, 1, 'User membuka halaman Setting', '2025-02-03 09:59:28');
INSERT INTO `tb_activity` VALUES (16, 1, 'User membuka halaman Setting', '2025-02-03 09:59:45');
INSERT INTO `tb_activity` VALUES (17, 1, 'User membuka view User', '2025-02-03 09:59:47');
INSERT INTO `tb_activity` VALUES (18, 1, 'User membuka view User', '2025-02-03 10:00:06');
INSERT INTO `tb_activity` VALUES (19, 1, 'User membuka halaman Setting', '2025-02-03 10:00:08');
INSERT INTO `tb_activity` VALUES (20, 1, 'User membuka halaman Setting', '2025-02-03 10:00:18');
INSERT INTO `tb_activity` VALUES (21, 1, 'User membuka halaman Setting', '2025-02-03 10:01:22');
INSERT INTO `tb_activity` VALUES (22, 1, 'User membuka halaman Setting', '2025-02-03 10:01:30');
INSERT INTO `tb_activity` VALUES (23, 1, 'User membuka Log Activity', '2025-02-03 10:01:37');
INSERT INTO `tb_activity` VALUES (24, 1, 'User membuka view User', '2025-02-03 10:01:38');
INSERT INTO `tb_activity` VALUES (25, 1, 'User membuka view User', '2025-02-03 10:02:11');
INSERT INTO `tb_activity` VALUES (26, 1, 'User membuka halaman kategori', '2025-02-03 10:04:21');
INSERT INTO `tb_activity` VALUES (27, 1, 'User membuka halaman kategori', '2025-02-03 10:04:24');
INSERT INTO `tb_activity` VALUES (28, 1, 'User membuka view User', '2025-02-03 10:05:07');
INSERT INTO `tb_activity` VALUES (29, 1, 'User membuka halaman kategori', '2025-02-03 10:05:09');
INSERT INTO `tb_activity` VALUES (30, 1, 'User melakukan Penghapusan Data Kategori', '2025-02-03 10:05:10');
INSERT INTO `tb_activity` VALUES (31, 1, 'User membuka halaman kategori', '2025-02-03 10:05:11');
INSERT INTO `tb_activity` VALUES (32, 1, 'User melakukan Penghapusan Data Kategori', '2025-02-03 10:05:12');
INSERT INTO `tb_activity` VALUES (33, 1, 'User membuka halaman kategori', '2025-02-03 10:05:12');
INSERT INTO `tb_activity` VALUES (34, 1, 'User melakukan Penghapusan Data Kategori', '2025-02-03 10:05:16');
INSERT INTO `tb_activity` VALUES (35, 1, 'User membuka halaman kategori', '2025-02-03 10:05:16');
INSERT INTO `tb_activity` VALUES (36, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 10:05:32');
INSERT INTO `tb_activity` VALUES (37, 1, 'User membuka halaman kategori', '2025-02-03 10:05:33');
INSERT INTO `tb_activity` VALUES (38, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 10:05:40');
INSERT INTO `tb_activity` VALUES (39, 1, 'User membuka halaman kategori', '2025-02-03 10:05:41');
INSERT INTO `tb_activity` VALUES (40, 1, 'User melakukan Pengeditan Kategori', '2025-02-03 10:05:46');
INSERT INTO `tb_activity` VALUES (41, 1, 'User membuka halaman kategori', '2025-02-03 10:05:47');
INSERT INTO `tb_activity` VALUES (42, 1, 'User melakukan Pengeditan Kategori', '2025-02-03 10:05:53');
INSERT INTO `tb_activity` VALUES (43, 1, 'User membuka halaman kategori', '2025-02-03 10:05:53');
INSERT INTO `tb_activity` VALUES (44, 1, 'User membuka view User', '2025-02-03 10:06:26');
INSERT INTO `tb_activity` VALUES (45, 1, 'User membuka view meja', '2025-02-03 10:06:27');
INSERT INTO `tb_activity` VALUES (46, 1, 'User membuka halaman kategori', '2025-02-03 10:06:30');
INSERT INTO `tb_activity` VALUES (47, 1, 'User membuka halaman laporan', '2025-02-03 10:06:34');
INSERT INTO `tb_activity` VALUES (48, 1, 'User membuka halaman kategori', '2025-02-03 10:07:33');
INSERT INTO `tb_activity` VALUES (49, 1, 'User membuka view User', '2025-02-03 10:07:44');
INSERT INTO `tb_activity` VALUES (50, 1, 'User melakukan Pengeditan Data User', '2025-02-03 10:08:12');
INSERT INTO `tb_activity` VALUES (51, 1, 'User membuka view User', '2025-02-03 10:08:12');
INSERT INTO `tb_activity` VALUES (52, 1, 'User melakukan Penghapusan Data User', '2025-02-03 10:08:14');
INSERT INTO `tb_activity` VALUES (53, 1, 'User membuka view User', '2025-02-03 10:08:14');
INSERT INTO `tb_activity` VALUES (54, 1, 'User membuka view User', '2025-02-03 10:10:30');
INSERT INTO `tb_activity` VALUES (55, 1, 'User masuk ke profile', '2025-02-03 10:10:36');
INSERT INTO `tb_activity` VALUES (56, 1, 'User melakukan Pengeditan Data User', '2025-02-03 10:10:55');
INSERT INTO `tb_activity` VALUES (57, 1, 'User membuka view User', '2025-02-03 10:10:56');
INSERT INTO `tb_activity` VALUES (58, 1, 'User membuka Log Activity', '2025-02-03 10:10:58');
INSERT INTO `tb_activity` VALUES (59, 1, 'User membuka halaman Setting', '2025-02-03 10:11:00');
INSERT INTO `tb_activity` VALUES (60, 1, 'User membuka Dashboard', '2025-02-03 10:11:02');
INSERT INTO `tb_activity` VALUES (61, 1, 'User membuka view User', '2025-02-03 10:11:08');
INSERT INTO `tb_activity` VALUES (62, 1, 'User membuka Dashboard', '2025-02-03 12:19:23');
INSERT INTO `tb_activity` VALUES (63, 1, 'User membuka halaman pesanan', '2025-02-03 12:20:19');
INSERT INTO `tb_activity` VALUES (64, 1, 'User membuka view User', '2025-02-03 12:20:20');
INSERT INTO `tb_activity` VALUES (65, 1, 'User membuka Log Activity', '2025-02-03 12:20:22');
INSERT INTO `tb_activity` VALUES (66, 1, 'User membuka Log Activity', '2025-02-03 12:21:45');
INSERT INTO `tb_activity` VALUES (67, 1, 'User membuka halaman Setting', '2025-02-03 12:21:47');
INSERT INTO `tb_activity` VALUES (68, 1, 'User membuka Log Activity', '2025-02-03 12:21:49');
INSERT INTO `tb_activity` VALUES (69, 1, 'User membuka view User', '2025-02-03 12:21:50');
INSERT INTO `tb_activity` VALUES (70, 1, 'User membuka Dashboard', '2025-02-03 12:21:53');
INSERT INTO `tb_activity` VALUES (71, 1, 'User membuka view User', '2025-02-03 12:21:55');
INSERT INTO `tb_activity` VALUES (72, 1, 'User melakukan logout', '2025-02-03 12:21:59');
INSERT INTO `tb_activity` VALUES (73, 3, 'User membuka Dashboard', '2025-02-03 12:23:12');
INSERT INTO `tb_activity` VALUES (74, 3, 'User masuk ke profile', '2025-02-03 12:23:14');
INSERT INTO `tb_activity` VALUES (75, 3, 'User masuk ke profile', '2025-02-03 12:23:20');
INSERT INTO `tb_activity` VALUES (76, 3, 'Mengedit Foto', '2025-02-03 12:23:25');
INSERT INTO `tb_activity` VALUES (77, 3, 'User masuk ke profile', '2025-02-03 12:23:25');
INSERT INTO `tb_activity` VALUES (78, 3, 'User membuka Dashboard', '2025-02-03 12:23:28');
INSERT INTO `tb_activity` VALUES (79, 3, 'User membuka halaman kategori', '2025-02-03 12:23:30');
INSERT INTO `tb_activity` VALUES (80, 3, 'User melakukan logout', '2025-02-03 12:23:35');
INSERT INTO `tb_activity` VALUES (81, 1, 'User membuka Dashboard', '2025-02-03 12:23:45');
INSERT INTO `tb_activity` VALUES (82, 1, 'User membuka view User', '2025-02-03 12:23:49');
INSERT INTO `tb_activity` VALUES (83, 1, 'User membuka halaman kategori', '2025-02-03 12:25:17');
INSERT INTO `tb_activity` VALUES (84, 1, 'User membuka Log Activity', '2025-02-03 12:25:19');
INSERT INTO `tb_activity` VALUES (85, 1, 'User membuka halaman Setting', '2025-02-03 12:25:20');
INSERT INTO `tb_activity` VALUES (86, 1, 'User membuka Dashboard', '2025-02-03 12:25:25');
INSERT INTO `tb_activity` VALUES (87, 1, 'User membuka Dashboard', '2025-02-03 12:25:30');
INSERT INTO `tb_activity` VALUES (88, 1, 'User membuka Dashboard', '2025-02-03 12:25:33');
INSERT INTO `tb_activity` VALUES (89, 1, 'User membuka view User', '2025-02-03 12:25:35');
INSERT INTO `tb_activity` VALUES (90, 1, 'User membuka halaman kategori', '2025-02-03 12:26:00');
INSERT INTO `tb_activity` VALUES (91, 1, 'User membuka Dashboard', '2025-02-03 12:26:01');
INSERT INTO `tb_activity` VALUES (92, 1, 'User membuka halaman kategori', '2025-02-03 12:26:03');
INSERT INTO `tb_activity` VALUES (93, 1, 'User membuka view User', '2025-02-03 12:26:04');
INSERT INTO `tb_activity` VALUES (94, 1, 'User membuka Log Activity', '2025-02-03 12:26:06');
INSERT INTO `tb_activity` VALUES (95, 1, 'User membuka halaman Setting', '2025-02-03 12:26:07');
INSERT INTO `tb_activity` VALUES (96, 1, 'User membuka view User', '2025-02-03 12:26:08');
INSERT INTO `tb_activity` VALUES (97, 1, 'User membuka halaman kategori', '2025-02-03 12:26:10');
INSERT INTO `tb_activity` VALUES (98, 1, 'User membuka view User', '2025-02-03 12:38:26');
INSERT INTO `tb_activity` VALUES (99, 1, 'User membuka Log Activity', '2025-02-03 12:38:28');
INSERT INTO `tb_activity` VALUES (100, 1, 'User membuka halaman Setting', '2025-02-03 12:38:29');
INSERT INTO `tb_activity` VALUES (101, 1, 'User membuka halaman kategori', '2025-02-03 12:38:31');
INSERT INTO `tb_activity` VALUES (102, 1, 'User membuka Dashboard', '2025-02-03 12:38:32');
INSERT INTO `tb_activity` VALUES (103, 1, 'User membuka view User', '2025-02-03 12:40:23');
INSERT INTO `tb_activity` VALUES (104, 1, 'User membuka Dashboard', '2025-02-03 12:40:34');
INSERT INTO `tb_activity` VALUES (105, 1, 'User membuka Dashboard', '2025-02-03 12:42:24');
INSERT INTO `tb_activity` VALUES (106, 1, 'User membuka view User', '2025-02-03 12:43:40');
INSERT INTO `tb_activity` VALUES (107, 1, 'User membuka Dashboard', '2025-02-03 12:43:43');
INSERT INTO `tb_activity` VALUES (108, 1, 'User membuka view User', '2025-02-03 12:43:52');
INSERT INTO `tb_activity` VALUES (109, 1, 'User membuka view User', '2025-02-03 12:44:27');
INSERT INTO `tb_activity` VALUES (110, 1, 'User membuka Dashboard', '2025-02-03 12:44:30');
INSERT INTO `tb_activity` VALUES (111, 1, 'User membuka view User', '2025-02-03 12:44:33');
INSERT INTO `tb_activity` VALUES (112, 1, 'User membuka view User', '2025-02-03 12:44:37');
INSERT INTO `tb_activity` VALUES (113, 1, 'User membuka view User', '2025-02-03 12:45:26');
INSERT INTO `tb_activity` VALUES (114, 1, 'User membuka Dashboard', '2025-02-03 12:45:28');
INSERT INTO `tb_activity` VALUES (115, 1, 'User membuka view User', '2025-02-03 12:45:32');
INSERT INTO `tb_activity` VALUES (116, 1, 'User membuka view User', '2025-02-03 12:45:40');
INSERT INTO `tb_activity` VALUES (117, 1, 'User membuka Dashboard', '2025-02-03 12:45:42');
INSERT INTO `tb_activity` VALUES (118, 1, 'User membuka view User', '2025-02-03 12:45:48');
INSERT INTO `tb_activity` VALUES (119, 1, 'User membuka view User', '2025-02-03 12:46:27');
INSERT INTO `tb_activity` VALUES (120, 1, 'User membuka Dashboard', '2025-02-03 12:46:34');
INSERT INTO `tb_activity` VALUES (121, 1, 'User membuka view User', '2025-02-03 12:46:38');
INSERT INTO `tb_activity` VALUES (122, 1, 'User membuka Dashboard', '2025-02-03 12:46:48');
INSERT INTO `tb_activity` VALUES (123, 1, 'User membuka Dashboard', '2025-02-03 12:46:51');
INSERT INTO `tb_activity` VALUES (124, 1, 'User membuka Dashboard', '2025-02-03 12:46:54');
INSERT INTO `tb_activity` VALUES (125, 1, 'User membuka Dashboard', '2025-02-03 12:47:04');
INSERT INTO `tb_activity` VALUES (126, 1, 'User membuka Dashboard', '2025-02-03 12:47:33');
INSERT INTO `tb_activity` VALUES (127, 1, 'User membuka Dashboard', '2025-02-03 12:47:40');
INSERT INTO `tb_activity` VALUES (128, 1, 'User membuka Dashboard', '2025-02-03 12:47:43');
INSERT INTO `tb_activity` VALUES (129, 1, 'User membuka Dashboard', '2025-02-03 12:47:47');
INSERT INTO `tb_activity` VALUES (130, 1, 'User membuka Dashboard', '2025-02-03 12:48:50');
INSERT INTO `tb_activity` VALUES (131, 1, 'User membuka Dashboard', '2025-02-03 12:48:54');
INSERT INTO `tb_activity` VALUES (132, 1, 'User membuka Dashboard', '2025-02-03 12:48:58');
INSERT INTO `tb_activity` VALUES (133, 1, 'User membuka Dashboard', '2025-02-03 12:49:01');
INSERT INTO `tb_activity` VALUES (134, 1, 'User membuka Dashboard', '2025-02-03 12:49:36');
INSERT INTO `tb_activity` VALUES (135, 1, 'User membuka Dashboard', '2025-02-03 12:50:12');
INSERT INTO `tb_activity` VALUES (136, 1, 'User membuka Dashboard', '2025-02-03 12:50:14');
INSERT INTO `tb_activity` VALUES (137, 1, 'User membuka Dashboard', '2025-02-03 12:50:16');
INSERT INTO `tb_activity` VALUES (138, 1, 'User membuka Dashboard', '2025-02-03 12:50:19');
INSERT INTO `tb_activity` VALUES (139, 1, 'User membuka Dashboard', '2025-02-03 12:50:47');
INSERT INTO `tb_activity` VALUES (140, 1, 'User membuka Dashboard', '2025-02-03 12:52:22');
INSERT INTO `tb_activity` VALUES (141, 1, 'User membuka Dashboard', '2025-02-03 12:52:29');
INSERT INTO `tb_activity` VALUES (142, 1, 'User membuka Dashboard', '2025-02-03 12:52:49');
INSERT INTO `tb_activity` VALUES (143, 1, 'User membuka Dashboard', '2025-02-03 12:54:42');
INSERT INTO `tb_activity` VALUES (144, 1, 'User membuka Dashboard', '2025-02-03 12:54:53');
INSERT INTO `tb_activity` VALUES (145, 1, 'User membuka Dashboard', '2025-02-03 12:54:58');
INSERT INTO `tb_activity` VALUES (146, 1, 'User membuka Dashboard', '2025-02-03 12:54:59');
INSERT INTO `tb_activity` VALUES (147, 1, 'User membuka Dashboard', '2025-02-03 12:55:02');
INSERT INTO `tb_activity` VALUES (148, 1, 'User membuka view User', '2025-02-03 12:55:06');
INSERT INTO `tb_activity` VALUES (149, 1, 'User membuka view User', '2025-02-03 13:00:08');
INSERT INTO `tb_activity` VALUES (150, 1, 'User membuka Log Activity', '2025-02-03 13:00:08');
INSERT INTO `tb_activity` VALUES (151, 1, 'User membuka halaman Setting', '2025-02-03 13:00:09');
INSERT INTO `tb_activity` VALUES (152, 1, 'User membuka view User', '2025-02-03 13:00:11');
INSERT INTO `tb_activity` VALUES (153, 1, 'User membuka halaman kategori', '2025-02-03 13:00:13');
INSERT INTO `tb_activity` VALUES (154, 1, 'User membuka Daftar Menu', '2025-02-03 13:00:14');
INSERT INTO `tb_activity` VALUES (155, 1, 'User membuka view User', '2025-02-03 13:00:50');
INSERT INTO `tb_activity` VALUES (156, 1, 'User membuka halaman kategori', '2025-02-03 13:00:53');
INSERT INTO `tb_activity` VALUES (157, 1, 'User membuka halaman kategori', '2025-02-03 13:01:38');
INSERT INTO `tb_activity` VALUES (158, 1, 'User membuka view User', '2025-02-03 13:01:59');
INSERT INTO `tb_activity` VALUES (159, 1, 'User membuka Log Activity', '2025-02-03 13:02:00');
INSERT INTO `tb_activity` VALUES (160, 1, 'User membuka halaman Setting', '2025-02-03 13:02:01');
INSERT INTO `tb_activity` VALUES (161, 1, 'User masuk ke profile', '2025-02-03 13:02:04');
INSERT INTO `tb_activity` VALUES (162, 1, 'User membuka Dashboard', '2025-02-03 13:02:07');
INSERT INTO `tb_activity` VALUES (163, 1, 'User masuk ke profile', '2025-02-03 13:02:10');
INSERT INTO `tb_activity` VALUES (164, 1, 'Mengedit Foto', '2025-02-03 13:02:19');
INSERT INTO `tb_activity` VALUES (165, 1, 'User masuk ke profile', '2025-02-03 13:02:19');
INSERT INTO `tb_activity` VALUES (166, 1, 'User masuk ke profile', '2025-02-03 13:02:26');
INSERT INTO `tb_activity` VALUES (167, 1, 'User membuka Log Activity', '2025-02-03 13:02:31');
INSERT INTO `tb_activity` VALUES (168, 1, 'User membuka view User', '2025-02-03 13:02:33');
INSERT INTO `tb_activity` VALUES (169, 1, 'User membuka view User', '2025-02-03 13:03:12');
INSERT INTO `tb_activity` VALUES (170, 1, 'User membuka view User', '2025-02-03 13:08:16');
INSERT INTO `tb_activity` VALUES (171, 1, 'User membuka Log Activity', '2025-02-03 13:08:17');
INSERT INTO `tb_activity` VALUES (172, 1, 'User membuka halaman Setting', '2025-02-03 13:08:18');
INSERT INTO `tb_activity` VALUES (173, 1, 'User membuka view User', '2025-02-03 13:08:20');
INSERT INTO `tb_activity` VALUES (174, 1, 'User membuka view User', '2025-02-03 13:09:54');
INSERT INTO `tb_activity` VALUES (175, 1, 'User membuka Dashboard', '2025-02-03 13:09:56');
INSERT INTO `tb_activity` VALUES (176, 1, 'User membuka view User', '2025-02-03 13:09:58');
INSERT INTO `tb_activity` VALUES (177, 1, 'User membuka halaman kategori', '2025-02-03 13:10:05');
INSERT INTO `tb_activity` VALUES (178, 1, 'User membuka view User', '2025-02-03 13:13:56');
INSERT INTO `tb_activity` VALUES (179, 1, 'User membuka halaman kategori', '2025-02-03 13:13:57');
INSERT INTO `tb_activity` VALUES (180, 1, 'User membuka Dashboard', '2025-02-03 13:13:59');
INSERT INTO `tb_activity` VALUES (181, 1, 'User membuka view User', '2025-02-03 13:14:50');
INSERT INTO `tb_activity` VALUES (182, 1, 'User membuka halaman kategori', '2025-02-03 13:14:51');
INSERT INTO `tb_activity` VALUES (183, 1, 'User membuka halaman Setting', '2025-02-03 13:16:17');
INSERT INTO `tb_activity` VALUES (184, 1, 'User membuka halaman Setting', '2025-02-03 13:16:53');
INSERT INTO `tb_activity` VALUES (185, 1, 'User membuka halaman Setting', '2025-02-03 13:17:12');
INSERT INTO `tb_activity` VALUES (186, 1, 'User membuka halaman Setting', '2025-02-03 13:17:17');
INSERT INTO `tb_activity` VALUES (187, 1, 'User membuka halaman Setting', '2025-02-03 13:17:21');
INSERT INTO `tb_activity` VALUES (188, 1, 'User membuka halaman Setting', '2025-02-03 13:17:26');
INSERT INTO `tb_activity` VALUES (189, 1, 'User membuka halaman Setting', '2025-02-03 13:17:40');
INSERT INTO `tb_activity` VALUES (190, 1, 'User melakukan logout', '2025-02-03 13:17:43');
INSERT INTO `tb_activity` VALUES (191, 1, 'User membuka Dashboard', '2025-02-03 13:17:48');
INSERT INTO `tb_activity` VALUES (192, 1, 'User membuka halaman Setting', '2025-02-03 13:17:53');
INSERT INTO `tb_activity` VALUES (193, 1, 'User membuka Log Activity', '2025-02-03 13:17:54');
INSERT INTO `tb_activity` VALUES (194, 1, 'User membuka view User', '2025-02-03 13:17:57');
INSERT INTO `tb_activity` VALUES (195, 1, 'User membuka halaman kategori', '2025-02-03 13:18:01');
INSERT INTO `tb_activity` VALUES (196, 1, 'User membuka halaman pesanan', '2025-02-03 13:18:04');
INSERT INTO `tb_activity` VALUES (197, 1, 'User membuka halaman kategori', '2025-02-03 13:35:24');
INSERT INTO `tb_activity` VALUES (198, 1, 'User membuka halaman kategori', '2025-02-03 13:36:15');
INSERT INTO `tb_activity` VALUES (199, 1, 'User membuka view User', '2025-02-03 13:36:18');
INSERT INTO `tb_activity` VALUES (200, 1, 'User membuka Log Activity', '2025-02-03 13:36:19');
INSERT INTO `tb_activity` VALUES (201, 1, 'User membuka halaman kategori', '2025-02-03 13:36:21');
INSERT INTO `tb_activity` VALUES (202, 1, 'User membuka Dashboard', '2025-02-03 13:36:23');
INSERT INTO `tb_activity` VALUES (203, 1, 'User membuka Dashboard', '2025-02-03 13:41:58');
INSERT INTO `tb_activity` VALUES (204, 1, 'User membuka Dashboard', '2025-02-03 13:44:36');
INSERT INTO `tb_activity` VALUES (205, 1, 'User membuka Dashboard', '2025-02-03 13:44:42');
INSERT INTO `tb_activity` VALUES (206, 1, 'User membuka Dashboard', '2025-02-03 13:47:58');
INSERT INTO `tb_activity` VALUES (207, 1, 'User membuka Daftar Menu', '2025-02-03 13:48:28');
INSERT INTO `tb_activity` VALUES (208, 1, 'User membuka view User', '2025-02-03 13:48:33');
INSERT INTO `tb_activity` VALUES (209, 1, 'User membuka Dashboard', '2025-02-03 19:15:59');
INSERT INTO `tb_activity` VALUES (210, 1, 'User membuka Dashboard', '2025-02-03 19:17:07');
INSERT INTO `tb_activity` VALUES (211, 1, 'User membuka Daftar Menu', '2025-02-03 19:17:10');
INSERT INTO `tb_activity` VALUES (212, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:17:12');
INSERT INTO `tb_activity` VALUES (213, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:20:04');
INSERT INTO `tb_activity` VALUES (214, 1, 'User membuka Daftar Menu', '2025-02-03 19:20:11');
INSERT INTO `tb_activity` VALUES (215, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:20:13');
INSERT INTO `tb_activity` VALUES (216, 1, 'User Menambahkan Rumus', '2025-02-03 19:20:30');
INSERT INTO `tb_activity` VALUES (217, 1, 'User membuka Daftar Menu', '2025-02-03 19:20:31');
INSERT INTO `tb_activity` VALUES (218, 1, 'User melakukan Penghapusan Data Rumus', '2025-02-03 19:20:33');
INSERT INTO `tb_activity` VALUES (219, 1, 'User membuka Daftar Menu', '2025-02-03 19:20:34');
INSERT INTO `tb_activity` VALUES (220, 1, 'User membuka halaman kategori', '2025-02-03 19:21:09');
INSERT INTO `tb_activity` VALUES (221, 1, 'User membuka halaman kategori', '2025-02-03 19:21:49');
INSERT INTO `tb_activity` VALUES (222, 1, 'User membuka Daftar Menu', '2025-02-03 19:21:53');
INSERT INTO `tb_activity` VALUES (223, 1, 'User membuka Daftar Menu', '2025-02-03 19:24:23');
INSERT INTO `tb_activity` VALUES (224, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:24:29');
INSERT INTO `tb_activity` VALUES (225, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:25:04');
INSERT INTO `tb_activity` VALUES (226, 1, 'User membuka Daftar Menu', '2025-02-03 19:25:06');
INSERT INTO `tb_activity` VALUES (227, 1, 'User membuka Daftar Menu', '2025-02-03 19:25:34');
INSERT INTO `tb_activity` VALUES (228, 1, 'User membuka Daftar Menu', '2025-02-03 19:27:07');
INSERT INTO `tb_activity` VALUES (229, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:27:17');
INSERT INTO `tb_activity` VALUES (230, 1, 'User membuka Daftar Menu', '2025-02-03 19:27:18');
INSERT INTO `tb_activity` VALUES (231, 1, 'User membuka Daftar Menu', '2025-02-03 19:27:40');
INSERT INTO `tb_activity` VALUES (232, 1, 'User membuka Daftar Menu', '2025-02-03 19:27:58');
INSERT INTO `tb_activity` VALUES (233, 1, 'User membuka Daftar Menu', '2025-02-03 19:28:03');
INSERT INTO `tb_activity` VALUES (234, 1, 'User membuka Daftar Menu', '2025-02-03 19:28:07');
INSERT INTO `tb_activity` VALUES (235, 1, 'User membuka Daftar Menu', '2025-02-03 19:28:22');
INSERT INTO `tb_activity` VALUES (236, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:28:25');
INSERT INTO `tb_activity` VALUES (237, 1, 'User membuka Daftar Menu', '2025-02-03 19:28:58');
INSERT INTO `tb_activity` VALUES (238, 1, 'User membuka Daftar Menu', '2025-02-03 19:29:29');
INSERT INTO `tb_activity` VALUES (239, 1, 'User membuka Daftar Menu', '2025-02-03 19:29:35');
INSERT INTO `tb_activity` VALUES (240, 1, 'User membuka Daftar Menu', '2025-02-03 19:30:13');
INSERT INTO `tb_activity` VALUES (241, 1, 'User membuka Daftar Menu', '2025-02-03 19:30:30');
INSERT INTO `tb_activity` VALUES (242, 1, 'User membuka Daftar Menu', '2025-02-03 19:31:46');
INSERT INTO `tb_activity` VALUES (243, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:31:48');
INSERT INTO `tb_activity` VALUES (244, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:32:06');
INSERT INTO `tb_activity` VALUES (245, 1, 'User membuka Daftar Menu', '2025-02-03 19:32:09');
INSERT INTO `tb_activity` VALUES (246, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:04');
INSERT INTO `tb_activity` VALUES (247, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:14');
INSERT INTO `tb_activity` VALUES (248, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:22');
INSERT INTO `tb_activity` VALUES (249, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:27');
INSERT INTO `tb_activity` VALUES (250, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:33');
INSERT INTO `tb_activity` VALUES (251, 1, 'User membuka Daftar Menu', '2025-02-03 19:34:41');
INSERT INTO `tb_activity` VALUES (252, 1, 'User membuka Daftar Menu', '2025-02-03 19:38:19');
INSERT INTO `tb_activity` VALUES (253, 1, 'User membuka Daftar Menu', '2025-02-03 19:39:41');
INSERT INTO `tb_activity` VALUES (254, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:39:45');
INSERT INTO `tb_activity` VALUES (255, 1, 'User membuka Daftar Menu', '2025-02-03 19:39:46');
INSERT INTO `tb_activity` VALUES (256, 1, 'User membuka Daftar Menu', '2025-02-03 19:41:20');
INSERT INTO `tb_activity` VALUES (257, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:41:27');
INSERT INTO `tb_activity` VALUES (258, 1, 'User membuka Daftar Menu', '2025-02-03 19:41:27');
INSERT INTO `tb_activity` VALUES (259, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:41:32');
INSERT INTO `tb_activity` VALUES (260, 1, 'User membuka Daftar Menu', '2025-02-03 19:41:32');
INSERT INTO `tb_activity` VALUES (261, 1, 'User membuka halaman kategori', '2025-02-03 19:41:44');
INSERT INTO `tb_activity` VALUES (262, 1, 'User membuka Daftar Menu', '2025-02-03 19:41:47');
INSERT INTO `tb_activity` VALUES (263, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:42:42');
INSERT INTO `tb_activity` VALUES (264, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 19:43:00');
INSERT INTO `tb_activity` VALUES (265, 1, 'User membuka halaman kategori', '2025-02-03 19:43:46');
INSERT INTO `tb_activity` VALUES (266, 1, 'User membuka Daftar Menu', '2025-02-03 19:43:52');
INSERT INTO `tb_activity` VALUES (267, 1, 'User membuka halaman kategori', '2025-02-03 19:43:54');
INSERT INTO `tb_activity` VALUES (268, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 19:44:06');
INSERT INTO `tb_activity` VALUES (269, 1, 'User membuka halaman kategori', '2025-02-03 19:44:07');
INSERT INTO `tb_activity` VALUES (270, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 19:44:20');
INSERT INTO `tb_activity` VALUES (271, 1, 'User membuka halaman kategori', '2025-02-03 19:44:21');
INSERT INTO `tb_activity` VALUES (272, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 19:44:27');
INSERT INTO `tb_activity` VALUES (273, 1, 'User membuka halaman kategori', '2025-02-03 19:44:28');
INSERT INTO `tb_activity` VALUES (274, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 19:44:31');
INSERT INTO `tb_activity` VALUES (275, 1, 'User membuka halaman kategori', '2025-02-03 19:44:33');
INSERT INTO `tb_activity` VALUES (276, 1, 'User Melakukan Penambahan Kategori', '2025-02-03 19:44:38');
INSERT INTO `tb_activity` VALUES (277, 1, 'User membuka halaman kategori', '2025-02-03 19:44:39');
INSERT INTO `tb_activity` VALUES (278, 1, 'User membuka Daftar Menu', '2025-02-03 19:44:49');
INSERT INTO `tb_activity` VALUES (279, 1, 'User membuka Daftar Menu', '2025-02-03 19:45:41');
INSERT INTO `tb_activity` VALUES (280, 1, 'User melakukan Penghapusan Data Rumus', '2025-02-03 19:45:52');
INSERT INTO `tb_activity` VALUES (281, 1, 'User membuka Daftar Menu', '2025-02-03 19:45:53');
INSERT INTO `tb_activity` VALUES (282, 1, 'User membuka Daftar Menu', '2025-02-03 19:47:06');
INSERT INTO `tb_activity` VALUES (283, 1, 'User membuka Daftar Menu', '2025-02-03 19:50:23');
INSERT INTO `tb_activity` VALUES (284, 1, 'User membuka Daftar Menu', '2025-02-03 19:51:41');
INSERT INTO `tb_activity` VALUES (285, 1, 'User membuka Daftar Menu', '2025-02-03 19:53:11');
INSERT INTO `tb_activity` VALUES (286, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:53:33');
INSERT INTO `tb_activity` VALUES (287, 1, 'User membuka Daftar Menu', '2025-02-03 19:53:34');
INSERT INTO `tb_activity` VALUES (288, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:53:52');
INSERT INTO `tb_activity` VALUES (289, 1, 'User membuka Daftar Menu', '2025-02-03 19:53:53');
INSERT INTO `tb_activity` VALUES (290, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:54:26');
INSERT INTO `tb_activity` VALUES (291, 1, 'User membuka Daftar Menu', '2025-02-03 19:54:27');
INSERT INTO `tb_activity` VALUES (292, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:54:37');
INSERT INTO `tb_activity` VALUES (293, 1, 'User membuka Daftar Menu', '2025-02-03 19:54:38');
INSERT INTO `tb_activity` VALUES (294, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:55:56');
INSERT INTO `tb_activity` VALUES (295, 1, 'User membuka Daftar Menu', '2025-02-03 19:55:57');
INSERT INTO `tb_activity` VALUES (296, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:56:10');
INSERT INTO `tb_activity` VALUES (297, 1, 'User membuka Daftar Menu', '2025-02-03 19:56:11');
INSERT INTO `tb_activity` VALUES (298, 1, 'User membuka Daftar Menu', '2025-02-03 19:56:43');
INSERT INTO `tb_activity` VALUES (299, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:57:20');
INSERT INTO `tb_activity` VALUES (300, 1, 'User membuka Daftar Menu', '2025-02-03 19:57:20');
INSERT INTO `tb_activity` VALUES (301, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:57:31');
INSERT INTO `tb_activity` VALUES (302, 1, 'User membuka Daftar Menu', '2025-02-03 19:57:31');
INSERT INTO `tb_activity` VALUES (303, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:58:03');
INSERT INTO `tb_activity` VALUES (304, 1, 'User membuka Daftar Menu', '2025-02-03 19:58:03');
INSERT INTO `tb_activity` VALUES (305, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:58:15');
INSERT INTO `tb_activity` VALUES (306, 1, 'User membuka Daftar Menu', '2025-02-03 19:58:16');
INSERT INTO `tb_activity` VALUES (307, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:58:54');
INSERT INTO `tb_activity` VALUES (308, 1, 'User membuka Daftar Menu', '2025-02-03 19:58:55');
INSERT INTO `tb_activity` VALUES (309, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:59:10');
INSERT INTO `tb_activity` VALUES (310, 1, 'User membuka Daftar Menu', '2025-02-03 19:59:10');
INSERT INTO `tb_activity` VALUES (311, 1, 'User melakukan Pengeditan Rumus', '2025-02-03 19:59:44');
INSERT INTO `tb_activity` VALUES (312, 1, 'User membuka Daftar Menu', '2025-02-03 19:59:45');
INSERT INTO `tb_activity` VALUES (313, 1, 'User membuka Daftar Menu', '2025-02-03 20:00:46');
INSERT INTO `tb_activity` VALUES (314, 1, 'User membuka Daftar Menu', '2025-02-03 20:02:14');
INSERT INTO `tb_activity` VALUES (315, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-03 20:02:32');
INSERT INTO `tb_activity` VALUES (316, 1, 'User membuka Daftar Menu', '2025-02-03 20:02:42');
INSERT INTO `tb_activity` VALUES (317, 1, 'User membuka Daftar Menu', '2025-02-03 20:02:50');
INSERT INTO `tb_activity` VALUES (318, 1, 'User membuka Daftar Menu', '2025-02-03 20:02:59');
INSERT INTO `tb_activity` VALUES (319, 1, 'User membuka Daftar Menu', '2025-02-03 20:03:39');
INSERT INTO `tb_activity` VALUES (320, 1, 'User membuka Daftar Menu', '2025-02-03 20:04:06');
INSERT INTO `tb_activity` VALUES (321, 1, 'User membuka Daftar Menu', '2025-02-03 20:04:29');
INSERT INTO `tb_activity` VALUES (322, 1, 'User membuka Dashboard', '2025-02-04 19:07:09');
INSERT INTO `tb_activity` VALUES (323, 1, 'User membuka Daftar Menu', '2025-02-04 19:07:13');
INSERT INTO `tb_activity` VALUES (324, 1, 'User membuka Daftar Menu', '2025-02-04 19:09:29');
INSERT INTO `tb_activity` VALUES (325, 1, 'User membuka Daftar Menu', '2025-02-04 19:11:04');
INSERT INTO `tb_activity` VALUES (326, 1, 'User membuka Daftar Menu', '2025-02-04 19:11:26');
INSERT INTO `tb_activity` VALUES (327, 1, 'User membuka Daftar Menu', '2025-02-04 19:11:56');
INSERT INTO `tb_activity` VALUES (328, 1, 'User membuka Daftar Menu', '2025-02-04 19:12:17');
INSERT INTO `tb_activity` VALUES (329, 1, 'User membuka Daftar Menu', '2025-02-04 19:12:23');
INSERT INTO `tb_activity` VALUES (330, 1, 'User membuka Daftar Menu', '2025-02-04 19:12:38');
INSERT INTO `tb_activity` VALUES (331, 1, 'User membuka Daftar Menu', '2025-02-04 19:12:52');
INSERT INTO `tb_activity` VALUES (332, 1, 'User membuka Daftar Menu', '2025-02-04 19:13:24');
INSERT INTO `tb_activity` VALUES (333, 1, 'User membuka Daftar Menu', '2025-02-04 19:14:36');
INSERT INTO `tb_activity` VALUES (334, 1, 'User membuka Daftar Menu', '2025-02-04 19:14:52');
INSERT INTO `tb_activity` VALUES (335, 1, 'User membuka Daftar Menu', '2025-02-04 19:15:00');
INSERT INTO `tb_activity` VALUES (336, 1, 'User membuka halaman kategori', '2025-02-04 19:16:36');
INSERT INTO `tb_activity` VALUES (337, 1, 'User membuka Daftar Menu', '2025-02-04 19:16:38');
INSERT INTO `tb_activity` VALUES (338, 1, 'User membuka halaman kategori', '2025-02-04 19:16:40');
INSERT INTO `tb_activity` VALUES (339, 1, 'User membuka Daftar Menu', '2025-02-04 19:16:41');
INSERT INTO `tb_activity` VALUES (340, 1, 'User membuka halaman kategori', '2025-02-04 19:17:05');
INSERT INTO `tb_activity` VALUES (341, 1, 'User membuka Daftar Menu', '2025-02-04 19:17:09');
INSERT INTO `tb_activity` VALUES (342, 1, 'User membuka halaman kategori', '2025-02-04 19:17:34');
INSERT INTO `tb_activity` VALUES (343, 1, 'User melakukan logout', '2025-02-04 19:17:54');
INSERT INTO `tb_activity` VALUES (344, 1, 'User membuka Dashboard', '2025-02-04 19:23:12');
INSERT INTO `tb_activity` VALUES (345, 1, 'User membuka Daftar Menu', '2025-02-04 19:23:17');
INSERT INTO `tb_activity` VALUES (346, 1, 'User membuka halaman kategori', '2025-02-04 19:23:34');
INSERT INTO `tb_activity` VALUES (347, 1, 'User membuka Daftar Menu', '2025-02-04 19:23:42');
INSERT INTO `tb_activity` VALUES (348, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-04 19:23:45');
INSERT INTO `tb_activity` VALUES (349, 1, 'User melakukan logout', '2025-02-04 19:25:09');
INSERT INTO `tb_activity` VALUES (350, 1, 'User membuka Dashboard', '2025-02-04 19:25:56');
INSERT INTO `tb_activity` VALUES (351, 1, 'User membuka halaman kategori', '2025-02-04 19:26:00');
INSERT INTO `tb_activity` VALUES (352, 1, 'User membuka Daftar Menu', '2025-02-04 19:26:14');
INSERT INTO `tb_activity` VALUES (353, 1, 'User membuka Form Penambahan Data Rumus', '2025-02-04 19:26:19');
INSERT INTO `tb_activity` VALUES (354, 1, 'User membuka view User', '2025-02-04 19:27:28');
INSERT INTO `tb_activity` VALUES (355, 1, 'User membuka Log Activity', '2025-02-04 19:27:33');
INSERT INTO `tb_activity` VALUES (356, 1, 'User membuka halaman Setting', '2025-02-04 19:27:39');
INSERT INTO `tb_activity` VALUES (357, 1, 'User masuk ke profile', '2025-02-04 19:27:47');
INSERT INTO `tb_activity` VALUES (358, 1, 'User membuka Dashboard', '2025-02-04 19:27:51');
INSERT INTO `tb_activity` VALUES (359, 1, 'User melakukan logout', '2025-02-04 19:27:53');
INSERT INTO `tb_activity` VALUES (360, 1, 'User membuka Dashboard', '2025-02-18 11:06:20');
INSERT INTO `tb_activity` VALUES (361, 1, 'User membuka Daftar Menu', '2025-02-18 11:06:24');
INSERT INTO `tb_activity` VALUES (362, 1, 'User membuka halaman kategori', '2025-02-18 11:07:04');
INSERT INTO `tb_activity` VALUES (363, 1, 'User membuka view User', '2025-02-18 11:07:19');
INSERT INTO `tb_activity` VALUES (364, 1, 'User melakukan Reset Password', '2025-02-18 11:07:35');
INSERT INTO `tb_activity` VALUES (365, 1, 'User membuka view User', '2025-02-18 11:07:36');
INSERT INTO `tb_activity` VALUES (366, 1, 'User melakukan Reset Password', '2025-02-18 11:08:11');
INSERT INTO `tb_activity` VALUES (367, 1, 'User membuka view User', '2025-02-18 11:08:11');
INSERT INTO `tb_activity` VALUES (368, 1, 'User melakukan Reset Password', '2025-02-18 11:08:16');
INSERT INTO `tb_activity` VALUES (369, 1, 'User membuka view User', '2025-02-18 11:08:17');
INSERT INTO `tb_activity` VALUES (370, 1, 'User melakukan Reset Password', '2025-02-18 11:08:24');
INSERT INTO `tb_activity` VALUES (371, 1, 'User membuka view User', '2025-02-18 11:08:24');
INSERT INTO `tb_activity` VALUES (372, 1, 'User melakukan Reset Password', '2025-02-18 11:09:44');
INSERT INTO `tb_activity` VALUES (373, 1, 'User membuka view User', '2025-02-18 11:09:44');
INSERT INTO `tb_activity` VALUES (374, 1, 'User melakukan Reset Password', '2025-02-18 11:09:52');
INSERT INTO `tb_activity` VALUES (375, 1, 'User membuka view User', '2025-02-18 11:09:52');
INSERT INTO `tb_activity` VALUES (376, 1, 'User melakukan logout', '2025-02-18 11:10:01');
INSERT INTO `tb_activity` VALUES (377, 1, 'User membuka Dashboard', '2025-02-18 11:10:09');
INSERT INTO `tb_activity` VALUES (378, 1, 'Mengubah Password', '2025-02-18 11:10:13');
INSERT INTO `tb_activity` VALUES (379, 1, 'Mengubah Password', '2025-02-18 11:10:25');
INSERT INTO `tb_activity` VALUES (380, 1, 'Mengubah Password', '2025-02-18 11:10:37');
INSERT INTO `tb_activity` VALUES (381, 1, 'User membuka Dashboard', '2025-02-18 11:10:55');
INSERT INTO `tb_activity` VALUES (382, 1, 'User membuka Log Activity', '2025-02-18 11:11:02');
INSERT INTO `tb_activity` VALUES (383, 1, 'User masuk ke profile', '2025-02-18 11:11:09');

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'Matematika', 'mtk.png', 'mtk.png', 'mtk.png');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `delete_at` datetime(0) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `update_by` int(11) NULL DEFAULT NULL,
  `delete_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', '1', 'face1.jpg', '2025-01-13 09:38:58', '2025-02-18 11:10:47', NULL, NULL, 1, NULL);
INSERT INTO `tb_user` VALUES (3, 'Pengguna', 'c81e728d9d4c2f636f067f89cc14862c', 'user@gmail.com', '2', '1726230005_28d6e9ea0ca83d2be479.jpg', '2025-01-13 09:46:00', '2025-02-03 10:10:55', NULL, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
