/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : keg

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 14/05/2021 20:49:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `u_id` bigint(15) NULL DEFAULT NULL,
  `u_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_sex` tinyint(1) NULL DEFAULT NULL,
  `u_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_grade` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_trait` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `u_status` int(1) NULL DEFAULT 0,
  `group_id` bigint(11) NULL DEFAULT NULL,
  `research_id` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group`(`group_id`) USING BTREE,
  INDEX `research`(`research_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`g_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`research_id`) REFERENCES `user_research` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 202021040143, '李学文', 1, 'lixuewen', '1234', '15226039562', 'li@qq.com', '研一', '擅长推荐', 1, 1, 1);
INSERT INTO `user` VALUES (3, 202021040148, '房小涵', 1, 'fangxiaohan', '1234', '15226039562', 'li@qq.com', '研一', '擅长NLP', 1, 2, 3);
INSERT INTO `user` VALUES (4, 202021040159, '寇肖萌', 0, 'kouxiaomeng', '1234', '15226039562', 'li@qq.com', '研一', '擅长推荐', 1, 1, 2);
INSERT INTO `user` VALUES (5, 202021040186, '于凯', 1, 'yukai', '1234', '13103358874', 'yukai@163.com', '研一', '喜欢分布式', 0, 2, 1);
INSERT INTO `user` VALUES (6, 202021040186, '于凯', 1, 'yukai', '1234', '13103358874', 'yukai@163.com', '研一', '喜欢分布式', 1, 2, 1);
INSERT INTO `user` VALUES (7, 202021040186, '于凯', 1, 'yukai', '1234', '13103358874', 'yukai@163.com', '研一', '喜欢分布式', 1, 2, 1);
INSERT INTO `user` VALUES (8, 202021040186, '于凯', 1, 'yukai', '1234', '13103358874', 'yukai@163.com', '研一', '喜欢分布式', 1, 2, 1);
INSERT INTO `user` VALUES (9, NULL, 'kk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO `user` VALUES (10, NULL, 'dd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `user` VALUES (11, NULL, 'ss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `user` VALUES (12, NULL, 'ee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO `user` VALUES (13, NULL, 'ww', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 1);
INSERT INTO `user` VALUES (14, NULL, 'sss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 3);
INSERT INTO `user` VALUES (15, NULL, 'gg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3);

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `g_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`g_id`) USING BTREE,
  INDEX `group_name`(`g_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, '万瑶论文组');
INSERT INTO `user_group` VALUES (3, '全部');
INSERT INTO `user_group` VALUES (2, '王珅论文组');

-- ----------------------------
-- Table structure for user_research
-- ----------------------------
DROP TABLE IF EXISTS `user_research`;
CREATE TABLE `user_research`  (
  `r_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_research
-- ----------------------------
INSERT INTO `user_research` VALUES (1, 'NLP');
INSERT INTO `user_research` VALUES (2, '推荐系统');
INSERT INTO `user_research` VALUES (3, '分布式');
INSERT INTO `user_research` VALUES (4, '全部');

SET FOREIGN_KEY_CHECKS = 1;
