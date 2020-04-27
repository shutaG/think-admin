# Host: localhost  (Version: 5.7.26)
# Date: 2020-03-01 21:53:31
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "blog_article"
#

DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `deleteTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "blog_article"
#

INSERT INTO `blog_article` VALUES (1,'12','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>','/upload/20190408/2706ca3fa2d0745e17dbb9793549714f.png','6','1899-12-30 08:00:00','2019-04-08 21:41:27',1,NULL),(2,NULL,'',NULL,NULL,'2019-02-24 14:40:24','2019-02-24 14:40:24',NULL,NULL),(3,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:45:19','2019-02-24 14:45:19',NULL,NULL),(4,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:46:02','2019-02-24 14:46:02',NULL,NULL),(5,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:46:54','2019-02-24 14:46:54',NULL,NULL),(6,'1111','222','','1','2019-02-24 15:05:46','2019-02-24 15:05:46',NULL,NULL),(7,'1','2222','/upload/20190224/037957d667cc1f6103913bd3a68b62cb.jpg','6','2019-02-24 15:18:31','2019-02-24 15:18:31',NULL,'2020-02-29 21:16:41'),(8,'12','22222','/upload/20190224/d4f7a5a1cc6c266efb193fc03348a9a5.jpg','6','2019-02-24 15:20:09','2020-02-19 12:17:10',NULL,'2020-02-19 12:17:10');

#
# Structure for table "db_log"
#

DROP TABLE IF EXISTS `db_log`;
CREATE TABLE `db_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL COMMENT '模型名',
  `url` varchar(255) NOT NULL COMMENT '访问地址',
  `action` varchar(255) NOT NULL COMMENT '操作',
  `sql` text NOT NULL COMMENT 'sql',
  `user_id` int(11) NOT NULL COMMENT '操作员id',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "db_log"
#

INSERT INTO `db_log` VALUES (1,'','/admin/auth/login','登录','',1,1583068814),(2,'','/admin/auth/login','登录','',1,1583069073);

#
# Structure for table "dept"
#

DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) NOT NULL COMMENT '部门名称',
  `dept_pid` int(11) NOT NULL COMMENT '上级部门',
  `dept_status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "dept"
#

INSERT INTO `dept` VALUES (1,'Ant-Design',0,1),(2,'深圳总公司',1,1),(3,'北京总公司',1,1),(4,'设计部',2,1),(5,'运营部',2,1),(6,'研发部',3,1),(7,'销售部',3,1);

#
# Structure for table "log"
#

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户标识',
  `action` varchar(255) NOT NULL COMMENT '操作',
  `url` varchar(255) NOT NULL COMMENT '访问地址',
  `ip` varchar(15) NOT NULL COMMENT '访问ip',
  `user_agent` varchar(255) NOT NULL COMMENT '访问者user_agnet',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "log"
#

INSERT INTO `log` VALUES (1,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36',1581909618,1581909618),(2,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36',1581917098,1581917098),(3,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583069242,1583069242),(4,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0',1583069399,1583069399),(5,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583070096,1583070096),(6,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583070101,1583070101),(7,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583070133,1583070133),(8,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583070541,1583070541),(9,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583070666,1583070666);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (20191217060229,'Permission','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060230,'Dept','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060256,'Role','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060327,'RolePermissionAccess','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060357,'User','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060458,'UserRoleAccess','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060620,'Log','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191217060648,'DbLog','2020-02-16 19:16:49','2020-02-16 19:16:49',0),(20191218051507,'CreateData','2020-02-16 19:16:49','2020-02-16 19:16:50',0),(20200109074431,'RoleDeptAccess','2020-02-16 19:16:50','2020-02-16 19:16:50',0),(20200119055958,'Post','2020-02-16 19:16:50','2020-02-16 19:16:50',0),(20200119060019,'UserPostAccess','2020-02-16 19:16:50','2020-02-16 19:16:50',0);

#
# Structure for table "permission"
#

DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '规则名称',
  `title` varchar(100) NOT NULL COMMENT '名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级标识',
  `type` varchar(6) NOT NULL COMMENT '类别',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT 'path',
  `redirect` varchar(100) NOT NULL DEFAULT '' COMMENT 'redirect',
  `component` varchar(100) NOT NULL DEFAULT '' COMMENT 'component',
  `icon` varchar(30) NOT NULL DEFAULT '' COMMENT 'icon',
  `permission` varchar(100) NOT NULL DEFAULT '' COMMENT 'permission',
  `keepAlive` int(11) NOT NULL DEFAULT '0' COMMENT 'keepAlive',
  `hidden` int(11) NOT NULL DEFAULT '0' COMMENT 'hidden',
  `hideChildrenInMenu` int(11) NOT NULL DEFAULT '0' COMMENT 'hideChildrenInMenu',
  `visable` int(11) NOT NULL DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

#
# Data for table "permission"
#

INSERT INTO `permission` VALUES (1,'Index','首页',0,'path',1,'/','/dashboard/workplace','BasicLayout','','',0,0,0,1),(2,'Dashboard','仪表盘',1,'path',1,'/dashboard','/dashboard/workplace','RouteView','dashboard','Analysis,Workspace',0,0,0,1),(3,'System','系统管理',1,'path',1,'/system','/system/permission','PageView','slack','Permission,Role,Account,Dept',0,0,0,1),(4,'Log','日志管理',1,'path',1,'/log','/log/account','PageView','file-text','LogAccount,LogDb',0,0,0,1),(5,'Profile','个人页',1,'path',1,'/account','/account/center','RouteView','user','ProfileAccount,ProfileSetting',0,0,0,1),(6,'Test','权限测试',1,'path',1,'/test','/test/not_ajax','RouteView','user','TestNotAjax',0,0,0,1),(7,'Analysis','分析页',2,'menu',1,'/dashboard/analysis','','Analysis','','Analysis',0,0,0,1),(8,'Workspace','工作台',2,'menu',1,'/dashboard/workplace','','Workplace','','Workspace',0,0,0,1),(9,'Permission','菜单管理',3,'menu',1,'/system/permission','','Permission','','Permission',0,0,0,1),(10,'Role','角色管理',3,'menu',1,'/system/role','','Role','','Role',0,0,0,1),(11,'Account','管理员管理',3,'menu',1,'/system/user','','Account','','Account',0,0,0,1),(12,'Dept','部门管理',3,'menu',1,'/system/Dept','','Dept','','Dept',0,0,0,1),(13,'Post','岗位管理',3,'menu',1,'/system/post','','Post','','Post',0,0,0,1),(14,'LogAccount','管理员日志',4,'menu',1,'/log/account','','LogAccount','','LogAccount',0,0,0,1),(15,'LogDb','数据库日志',4,'menu',1,'/log/db','','LogDb','','LogDb',0,0,0,1),(16,'ProfileAccount','个人中心',5,'menu',1,'/account/center','','Center','','ProfileAccount',0,0,0,1),(17,'ProfileSetting','个人设置',5,'menu',1,'/account/settings','/account/settings/base','Settings','','ProfileSetting',0,0,1,1),(18,'PermissionAdd','添加',9,'action',1,'','','','','',0,0,0,1),(19,'PermissionUpdate','更新',9,'action',1,'','','','','',0,0,0,1),(20,'PermissionDelete','删除',9,'action',1,'','','','','',0,0,0,1),(21,'RoleAdd','添加',10,'action',1,'','','','','',0,0,0,1),(22,'RoleUpdate','更新',10,'action',1,'','','','','',0,0,0,1),(23,'RoleDelete','删除',10,'action',1,'','','','','',0,0,0,1),(24,'AccountAdd','添加',11,'action',1,'','','','','',0,0,0,1),(25,'AccountUpdate','更新',11,'action',1,'','','','','',0,0,0,1),(26,'AccountDelete','删除',11,'action',1,'','','','','',0,0,0,1),(27,'DeptAdd','添加',12,'action',1,'','','','','',0,0,0,1),(28,'DeptUpdate','更新',12,'action',1,'','','','','',0,0,0,1),(29,'DeptDelete','删除',12,'action',1,'','','','','',0,0,0,1),(30,'PostAdd','添加',13,'action',1,'','','','','',0,0,0,1),(31,'PostUpdate','更新',13,'action',1,'','','','','',0,0,0,1),(32,'PostDelete','删除',13,'action',1,'','','','','',0,0,0,1),(33,'LogAccountDelete','删除',14,'action',1,'','','','','',0,0,0,1),(34,'LogDbDelete','删除',15,'action',1,'','','','','',0,0,0,1),(35,'BaseSettings','基本设置',17,'menu',1,'/account/settings/base','','BaseSettings','','',0,0,0,1),(36,'SecuritySettings','安全设置',17,'menu',1,'/account/settings/security','','SecuritySettings','','',0,0,0,1),(37,'TestNotAjax','无异步权限页',6,'menu',1,'/test/not_ajax','','TestNotAjax','','TestNotAjax',0,0,0,1),(40,'Blog','博客管理',1,'path',1,'/blog','/blog/list','PageView','user','',0,0,0,1),(42,'ArticleList','文章管理',40,'menu',1,'/blog/list','','BlogList','','',0,0,0,1);

#
# Structure for table "post"
#

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `postName` varchar(100) NOT NULL COMMENT '岗位名称',
  `postCode` varchar(50) NOT NULL COMMENT '岗位标识',
  `postSort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',
  `createTime` int(11) NOT NULL COMMENT '创建时间',
  `updateTime` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "post"
#


#
# Structure for table "role"
#

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '角色唯一标识',
  `title` varchar(100) NOT NULL COMMENT '角色名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级标识',
  `mode` int(11) NOT NULL DEFAULT '3' COMMENT '数据权限类型',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "role"
#

INSERT INTO `role` VALUES (1,'root','根',0,3,1);

#
# Structure for table "role_dept_access"
#

DROP TABLE IF EXISTS `role_dept_access`;
CREATE TABLE `role_dept_access` (
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `dept_id` int(11) NOT NULL COMMENT '部门主键',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "role_dept_access"
#


#
# Structure for table "role_permission_access"
#

DROP TABLE IF EXISTS `role_permission_access`;
CREATE TABLE `role_permission_access` (
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `permission_id` int(11) NOT NULL COMMENT '规则主键',
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "role_permission_access"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '用户唯一标识（登录名）',
  `password` varchar(255) NOT NULL COMMENT '登录密码',
  `hash` varchar(11) NOT NULL COMMENT '加密hash',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `dept_id` int(11) NOT NULL DEFAULT '3' COMMENT '部门标识',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'admin','$2y$10$DljgcoG.aka21DfEwNDNfeAkB6Z9iLedhADVj5HXjRkJNJ78r475y','8vHr6Omu7B','Serati Ma',0,1,'storage/topic/avatar.png','SeratiMa@aliyun.com',1581851810,1581851810);

#
# Structure for table "user_post_access"
#

DROP TABLE IF EXISTS `user_post_access`;
CREATE TABLE `user_post_access` (
  `user_id` int(11) NOT NULL COMMENT '用户主键',
  `post_id` int(11) NOT NULL COMMENT '岗位主键',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_post_access"
#


#
# Structure for table "user_role_access"
#

DROP TABLE IF EXISTS `user_role_access`;
CREATE TABLE `user_role_access` (
  `user_id` int(11) NOT NULL COMMENT '用户主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_role_access"
#

