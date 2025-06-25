SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ai_list
-- ----------------------------
DROP TABLE IF EXISTS `ai_list`;
CREATE TABLE `ai_list`  (
  `ai_list_id` bigint NOT NULL AUTO_INCREMENT COMMENT '物料id',
  `ai_list_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `ai_list_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `ai_list_type` int NOT NULL COMMENT '物料类型（1-人物、2、上装、3-下装、4-连体衣、5-套装）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '编辑时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `ai_user_id` bigint NOT NULL COMMENT '用户id',
  PRIMARY KEY (`ai_list_id`) USING BTREE,
  INDEX `ai_list_type`(`ai_list_type` ASC) USING BTREE,
  INDEX `ai_user_id`(`ai_user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1935256874312413186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ai_request
-- ----------------------------
DROP TABLE IF EXISTS `ai_request`;
CREATE TABLE `ai_request`  (
  `ai_request_id` bigint NOT NULL AUTO_INCREMENT COMMENT '请求id',
  `ai_task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务id',
  `ai_task_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务状态',
  `ai_system_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统唯一码',
  `ai_user_id` bigint NOT NULL COMMENT '用户id',
  `ai_response_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结果图片',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '编辑时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`ai_request_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ai_user
-- ----------------------------
DROP TABLE IF EXISTS `ai_user`;
CREATE TABLE `ai_user`  (
  `ai_user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `ai_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openId',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `edit_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '编辑时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `num` int NOT NULL DEFAULT 3 COMMENT '剩余次数',
  PRIMARY KEY (`ai_user_id`) USING BTREE,
  UNIQUE INDEX `ai_open_id`(`ai_open_id` ASC) USING BTREE,
  INDEX `ai_open_id_2`(`ai_open_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1933080838988603395 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
