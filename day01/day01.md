## day01 作业

星空:
麻烦 志哥看看

志哥:
utf8mb4_0900_ai_ci 这个用默认的

志哥:
时间用long

志哥:
表名 统一用`user`就可以

志哥:
所有字段不允许为空 都加默认值

星空:
long  不是对应数据库中 INTEGER UNSIGNED

志哥:
bigint

```mysql
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `avatar` varchar(256) NOT NULL DEFAULT '' COMMENT '头像',
  `user_name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(16) NOT NULL DEFAULT '' COMMENT '用户密码',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT '邮箱',
  `create_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '最后登陆时间',
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否删除(0-否1-是)',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否禁用状态标识符(0-否1-是)',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`),
  KEY `u_idx_user_name` (`user_name`),
  KEY `u_idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='用户表';
```

