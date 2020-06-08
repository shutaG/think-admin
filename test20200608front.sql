# Host: localhost  (Version: 5.7.26)
# Date: 2020-06-08 14:34:33
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
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "blog_article"
#

INSERT INTO `blog_article` VALUES (1,'12','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>','/upload/20190408/2706ca3fa2d0745e17dbb9793549714f.png','6','1899-12-30 08:00:00','2019-04-08 21:41:27',1,NULL),(2,NULL,'',NULL,NULL,'2019-02-24 14:40:24','2019-02-24 14:40:24',NULL,NULL),(3,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:45:19','2019-02-24 14:45:19',NULL,NULL),(4,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:46:02','2019-02-24 14:46:02',NULL,NULL),(5,'1111','','/upload/20190224/55cf508f9514d1f35f406a790435f412.jpg','11','2019-02-24 14:46:54','2019-02-24 14:46:54',NULL,NULL),(6,'1111','222','','1','2019-02-24 15:05:46','2019-02-24 15:05:46',NULL,NULL),(7,'1','2222','/upload/20190224/037957d667cc1f6103913bd3a68b62cb.jpg','6','2019-02-24 15:18:31','2019-02-24 15:18:31',NULL,'2020-02-29 21:16:41'),(8,'12','22222','/upload/20190224/d4f7a5a1cc6c266efb193fc03348a9a5.jpg','6','2019-02-24 15:20:09','2020-02-19 12:17:10',NULL,'2020-02-19 12:17:10'),(9,NULL,NULL,NULL,NULL,'2020-05-26 10:39:38','2020-05-26 10:39:38',NULL,NULL),(10,'1','',NULL,'1','2020-05-26 11:25:17','2020-05-26 11:25:17',NULL,NULL),(11,'1',NULL,NULL,'1','2020-05-26 11:25:36','2020-05-26 11:25:36',NULL,NULL),(12,'1','1111',NULL,'1','2020-05-26 11:32:41','2020-05-26 11:32:41',NULL,NULL),(13,'12','11',NULL,'1','2020-05-28 10:32:27','2020-05-28 10:32:27',NULL,NULL),(14,'12','111','1590634370.jpeg','1','2020-05-28 10:52:53','2020-05-28 10:52:53',NULL,NULL),(15,'123','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>','1590639102.jpeg','6','2020-05-28 12:11:45','2020-05-28 12:11:45',NULL,NULL),(16,'12','\n**11**\n1111\n![红薯.png](1)','1590745327.png','6','2020-05-29 17:42:09','2020-05-29 17:42:09',NULL,NULL),(17,'12','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>','1590745327.png','6','2020-05-29 17:42:52','2020-05-31 17:27:27',NULL,NULL),(18,'12','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>',NULL,'6','2020-05-31 17:26:46','2020-05-31 17:26:46',NULL,NULL),(19,'12','<p>&nbsp; &nbsp;3333333<img src=\"/ueditor/php/upload/image/20190407/1554569309.png\" title=\"1554569309.png\" alt=\"file_5c7c9a66564f2.png\"/></p>',NULL,'6','2020-05-31 17:27:07','2020-05-31 17:27:07',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "db_log"
#

INSERT INTO `db_log` VALUES (1,'Permission','/admin/permission','insert','INSERT INTO `permission` SET `type` = \'path\' , `pid` = 1 , `title` = \'blog\' , `name` = \'blog\' , `component` = \'BlogList\' , `path` = \'blog\' , `redirect` = \'/blog\' , `status` = 1 , `keepAlive` = 0 , `hidden` = 0 , `hideChildrenInMenu` = 0 , `permission` = \'blog,blog2\'',1,1583210477),(2,'Permission','/admin/permission','insert','INSERT INTO `permission` SET `type` = \'path\' , `pid` = 1 , `title` = \'博客管理\' , `name` = \'blog\' , `component` = \'BlogList\' , `path` = \'/blog/list\' , `redirect` = \'/blog/list\' , `status` = 1 , `keepAlive` = 0 , `hidden` = 0 , `hideChildrenInMenu` = 0',1,1583224626),(3,'Permission','/admin/permission','insert','INSERT INTO `permission` SET `type` = \'menu\' , `pid` = 50 , `title` = \'文章详情\' , `name` = \'blogArticle\' , `component` = \'BlogList\' , `path` = \'/blog/list\' , `status` = 1 , `keepAlive` = 0 , `hidden` = 0 , `hideChildrenInMenu` = 0',1,1583224758),(4,'Permission','/admin/permission','insert','INSERT INTO `permission` SET `type` = \'menu\' , `pid` = 50 , `title` = \'文章列表\' , `name` = \'bloglist\' , `component` = \'BlogList\' , `path` = \'/blog/list\' , `status` = 1 , `keepAlive` = 0 , `hidden` = 0 , `hideChildrenInMenu` = 0',1,1583322383);

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

#
# Data for table "log"
#

INSERT INTO `log` VALUES (1,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583071472,1583071472),(2,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583071621,1583071621),(3,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583071861,1583071861),(4,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583071864,1583071864),(5,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583073527,1583073527),(6,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583073926,1583073926),(7,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583074080,1583074080),(8,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583126804,1583126804),(9,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583126834,1583126834),(10,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583126922,1583126922),(11,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583126940,1583126940),(12,1,'登录','/admin/auth/login?username=admin&password=1234','127.0.0.1','PostmanRuntime/7.22.0',1583127018,1583127018),(13,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127023,1583127023),(14,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127029,1583127029),(15,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127038,1583127038),(16,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127056,1583127056),(17,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127063,1583127063),(18,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583127165,1583127165),(19,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583197978,1583197978),(20,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583224380,1583224380),(21,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583322316,1583322316),(22,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583330156,1583330156),(23,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1583767396,1583767396),(24,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1584028176,1584028176),(25,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1587988683,1587988683),(26,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1588832448,1588832448),(27,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590054234,1590054234),(28,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590458077,1590458077),(29,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590562879,1590562879),(30,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590745249,1590745249),(31,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko',1590913073,1590913073),(32,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590913315,1590913315),(33,1,'登录','/admin/auth/login','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',1590916118,1590916118);

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

INSERT INTO `migrations` VALUES (20191217060229,'Permission','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060230,'Dept','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060256,'Role','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060327,'RolePermissionAccess','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060357,'User','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060458,'UserRoleAccess','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060620,'Log','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20191217060648,'DbLog','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20200109074431,'RoleDeptAccess','2020-03-01 21:59:24','2020-03-01 21:59:24',0),(20200119055958,'Post','2020-03-01 21:59:24','2020-03-01 21:59:25',0),(20200119060019,'UserPostAccess','2020-03-01 21:59:25','2020-03-01 21:59:25',0);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

#
# Data for table "permission"
#

INSERT INTO `permission` VALUES (1,'Index','首页',0,'path',1,'/','/dashboard/workplace','BasicLayout','','',0,0,0,1),(2,'Dashboard','仪表盘',1,'path',1,'/dashboard','/dashboard/workplace','RouteView','dashboard','Analysis,Workspace',0,0,0,1),(3,'Analysis','分析页',2,'menu',1,'/dashboard/analysis','','Analysis','','Analysis',0,0,0,1),(4,'AnalysisGet','详情',3,'action',1,'','','','','',0,0,0,1),(5,'Workspace','工作台',2,'menu',1,'/dashboard/workplace','','Workplace','','Workspace',0,0,0,1),(6,'WorkspaceGet','详情',5,'action',1,'','','','','',0,0,0,1),(7,'System','系统管理',1,'path',1,'/system','/system/permission','PageView','slack','Permission,Role,Account,Dept',0,0,0,1),(8,'Permission','菜单管理',7,'menu',1,'/system/permission','','Permission','','Permission',0,0,0,1),(9,'PermissionGet','详情',8,'action',1,'','','','','',0,0,0,1),(10,'PermissionAdd','添加',8,'action',1,'','','','','',0,0,0,1),(11,'PermissionUpdate','更新',8,'action',1,'','','','','',0,0,0,1),(12,'PermissionDelete','删除',8,'action',1,'','','','','',0,0,0,1),(13,'Role','角色管理',7,'menu',1,'/system/role','','Role','','Role',0,0,0,1),(14,'RoleGet','详情',13,'action',1,'','','','','',0,0,0,1),(15,'RoleAdd','添加',13,'action',1,'','','','','',0,0,0,1),(16,'RoleUpdate','更新',13,'action',1,'','','','','',0,0,0,1),(17,'RoleDelete','删除',13,'action',1,'','','','','',0,0,0,1),(18,'Account','管理员管理',7,'menu',1,'/system/user','','Account','','Account',0,0,0,1),(19,'AccountGet','详情',18,'action',1,'','','','','',0,0,0,1),(20,'AccountAdd','添加',18,'action',1,'','','','','',0,0,0,1),(21,'AccountUpdate','更新',18,'action',1,'','','','','',0,0,0,1),(22,'AccountDelete','删除',18,'action',1,'','','','','',0,0,0,1),(23,'Dept','部门管理',7,'menu',1,'/system/Dept','','Dept','','Dept',0,0,0,1),(24,'DeptGet','详情',23,'action',1,'','','','','',0,0,0,1),(25,'DeptAdd','添加',23,'action',1,'','','','','',0,0,0,1),(26,'DeptUpdate','更新',23,'action',1,'','','','','',0,0,0,1),(27,'DeptDelete','删除',23,'action',1,'','','','','',0,0,0,1),(28,'Post','岗位管理',7,'menu',1,'/system/post','','Post','','Post',0,0,0,1),(29,'PostGet','详情',28,'action',1,'','','','','',0,0,0,1),(30,'PostAdd','添加',28,'action',1,'','','','','',0,0,0,1),(31,'PostUpdate','更新',28,'action',1,'','','','','',0,0,0,1),(32,'PostDelete','删除',28,'action',1,'','','','','',0,0,0,1),(33,'Log','日志管理',1,'path',1,'/log','/log/account','PageView','file-text','LogAccount,LogDb',0,0,0,1),(34,'LogAccount','管理员日志',33,'menu',1,'/log/account','','LogAccount','','LogAccount',0,0,0,1),(35,'LogAccountGet','详情',34,'action',1,'','','','','',0,0,0,1),(36,'LogAccountDelete','删除',34,'action',1,'','','','','',0,0,0,1),(37,'LogDb','数据库日志',33,'menu',1,'/log/db','','LogDb','','LogDb',0,0,0,1),(38,'LogDbGet','详情',37,'action',1,'','','','','',0,0,0,1),(39,'LogDbDelete','删除',37,'action',1,'','','','','',0,0,0,1),(40,'Profile','个人页',1,'path',1,'/account','/account/center','RouteView','user','BaseSettings,SecuritySettings',0,0,0,1),(41,'ProfileAccount','个人中心',40,'menu',1,'/account/center','','Center','','',0,0,0,1),(42,'ProfileSetting','个人设置',40,'menu',1,'/account/settings','/account/settings/base','Settings','','BaseSettings,SecuritySettings',0,0,1,1),(43,'BaseSettings','基本设置',42,'menu',1,'/account/settings/base','','BaseSettings','','',0,0,0,1),(44,'SaveProfile','更新信息',43,'action',1,'','','','','',0,0,0,1),(45,'SaveAvatar','更新头像',43,'action',1,'','','','','',0,0,0,1),(46,'SecuritySettings','安全设置',42,'menu',1,'','','SecuritySettings','','',0,0,0,1),(47,'UpdateSecurityPassword','更新密码',46,'action',1,'','','','','',0,0,0,1),(50,'blog','博客管理',1,'path',1,'/blog','/blog/list','PageView','','',0,0,0,1),(51,'blogarticle','文章详情',50,'menu',1,'/blog/article1','','BlogArticle','','',0,0,0,1),(52,'bloglist','文章列表',50,'menu',1,'/blog/list','','BlogList','','',0,0,0,1);

#
# Structure for table "post"
#

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(100) NOT NULL COMMENT '岗位名称',
  `post_code` varchar(50) NOT NULL COMMENT '岗位标识',
  `post_sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`post_id`)
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

INSERT INTO `role` VALUES (1,'root','根',0,0,1);

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

INSERT INTO `user` VALUES (1,'admin','$2y$10$20dq8/YrTVlbTP4Xb4SciuEReRMJ3ajrblqmG0tteuM0fc9LLCDT6','kZFDvivT$xx','Serati Ma',0,1,'storage/topic/avatar.png','648949076@qq.com',1583071165,1583071165);

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

