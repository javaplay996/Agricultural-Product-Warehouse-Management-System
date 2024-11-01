/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - nongchanpincangkuguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nongchanpincangkuguanli` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nongchanpincangkuguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-10 17:37:17'),(2,'sex_types','性别',2,'女',NULL,'2021-03-10 17:37:17'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-10 17:37:17'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-10 17:37:17'),(5,'goods_types','物资类型',1,'粮油',NULL,'2021-03-10 17:37:17'),(6,'goods_types','物资类型',2,'果蔬',NULL,'2021-03-10 17:37:17'),(7,'goods_types','物资类型',3,'花卉',NULL,'2021-03-10 17:37:17'),(8,'goods_types','物资类型',4,'林产品',NULL,'2021-03-10 17:37:17'),(9,'goods_types','物资类型',5,'畜禽产品',NULL,'2021-03-10 17:37:17'),(10,'goods_types','物资类型',6,'水产品',NULL,'2021-03-10 17:37:17'),(11,'order_types','订单类型',1,'出库',NULL,'2021-03-10 17:37:17'),(12,'order_types','订单类型',2,'入库',NULL,'2021-03-10 17:37:17'),(13,'caozuo_types','操作类型',1,'已操作',NULL,'2021-03-10 17:37:17'),(14,'caozuo_types','操作类型',2,'未操作',NULL,'2021-03-10 17:37:17'),(15,'entrust_types','委托物资状态',1,'不同意',NULL,'2021-03-10 17:37:17'),(16,'entrust_types','委托物资状态',2,'同意',NULL,'2021-03-10 17:37:17'),(18,'goods_types','物资类型',8,'8',NULL,'2021-03-11 18:01:32'),(19,'goods_types','物资类型',9,'是',NULL,'2021-03-11 21:05:55');

/*Table structure for table `entrust_in_out_order` */

DROP TABLE IF EXISTS `entrust_in_out_order`;

CREATE TABLE `entrust_in_out_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `order_name` varchar(200) DEFAULT NULL COMMENT '订单名  Search111 ',
  `order_types` int(11) DEFAULT NULL COMMENT '委托类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '委托时间  Search111 ',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名  Search111 ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `caozuo_types` int(11) DEFAULT NULL COMMENT '操作类型  Search111 ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='委托出入库订单';

/*Data for the table `entrust_in_out_order` */

insert  into `entrust_in_out_order`(`id`,`yonghu_id`,`order_name`,`order_types`,`insert_time`,`caozuo_name`,`caozuo_table`,`caozuo_types`,`update_time`,`create_time`) values (11,1,'出库3',1,'2021-03-11 17:32:34','admin1','users',1,'2021-03-11 17:33:27','2021-03-11 17:32:34'),(12,1,'出库4',1,'2021-03-11 17:32:48','admin1','users',1,'2021-03-11 17:33:35','2021-03-11 17:32:48'),(13,1,'出5',1,'2021-03-11 17:34:43','admin1','users',1,'2021-03-11 17:35:18','2021-03-11 17:34:43'),(14,1,'出6',1,'2021-03-11 17:35:02',NULL,NULL,2,NULL,'2021-03-11 17:35:02'),(15,2,'2的委托入库',2,'2021-03-11 20:54:31',NULL,NULL,2,NULL,'2021-03-11 20:54:31'),(16,2,'2的第一次委托出库',1,'2021-03-11 20:55:09','admin','users',1,'2021-03-11 21:03:51','2021-03-11 20:55:09');

/*Table structure for table `entrust_in_out_order_list` */

DROP TABLE IF EXISTS `entrust_in_out_order_list`;

CREATE TABLE `entrust_in_out_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `entrust_in_out_order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '物资表id',
  `order_number` int(11) DEFAULT NULL COMMENT '数量  Search111 ',
  `entrust_types` int(11) DEFAULT NULL COMMENT '状态  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='委托出入库订单详情';

/*Data for the table `entrust_in_out_order_list` */

insert  into `entrust_in_out_order_list`(`id`,`entrust_in_out_order_id`,`goods_id`,`order_number`,`entrust_types`,`create_time`) values (19,11,2,98,2,'2021-03-11 17:32:34'),(20,11,4,10,1,'2021-03-11 17:32:34'),(21,12,2,3,1,'2021-03-11 17:32:48'),(22,13,2,4,2,'2021-03-11 17:34:43'),(23,14,2,4,1,'2021-03-11 17:35:02'),(24,14,3,1,1,'2021-03-11 17:35:02'),(25,15,3,9,1,'2021-03-11 20:54:31'),(26,15,4,1,1,'2021-03-11 20:54:31'),(27,16,3,1,1,'2021-03-11 20:55:09'),(28,16,4,10,2,'2021-03-11 20:55:09');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名字 Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '物品种类  Search111 ',
  `goods_number` int(11) DEFAULT NULL COMMENT '物资数量  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `goods_content` varchar(200) DEFAULT NULL COMMENT '物资详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`goods_content`,`flag`,`create_time`) values (1,'草鱼',6,10,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615374889227.jpg','条','草鱼的详情\r\n',1,'2021-03-10 19:15:02'),(2,'鲫鱼',6,1,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615374909294.jpg','条','鲫鱼的详情\r\n',2,'2021-03-10 19:15:30'),(3,'青鱼',6,2,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615374938915.jpg','条','青鱼的详情\r\n',1,'2021-03-10 19:15:55'),(4,'小麦',6,20,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615374963298.jpg','斤','小麦的详情\r\n',1,'2021-03-10 19:16:18'),(5,'西红柿',5,90,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615467571981.jpg','个','西红柿的详情\r\n',1,'2021-03-11 20:59:40');

/*Table structure for table `in_out_order` */

DROP TABLE IF EXISTS `in_out_order`;

CREATE TABLE `in_out_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_name` varchar(200) DEFAULT NULL COMMENT '订单名  Search111 ',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名  Search111 ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `order_types` int(11) DEFAULT NULL COMMENT '类型  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '出入库时间  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='出入库订单';

/*Data for the table `in_out_order` */

insert  into `in_out_order`(`id`,`order_name`,`caozuo_name`,`caozuo_table`,`order_types`,`insert_time`,`create_time`) values (7,'第一次入库','admin1','users',2,'2021-03-10 20:59:07','2021-03-10 20:59:07'),(8,'第一次出库','admin1','users',1,'2021-03-10 21:11:50','2021-03-10 21:11:50'),(9,'第二次出库','admin1','users',1,'2021-03-10 21:15:05','2021-03-10 21:15:05'),(10,'第二次入库','admin1','users',2,'2021-03-10 21:21:13','2021-03-10 21:21:13'),(11,'入库两件每个都为1','admin1','users',2,'2021-03-11 10:01:34','2021-03-11 10:01:34'),(12,'入库1','admin','users',2,'2021-03-11 21:01:49','2021-03-11 21:01:49'),(13,'出库1','admin','users',1,'2021-03-11 21:02:24','2021-03-11 21:02:24');

/*Table structure for table `in_out_order_list` */

DROP TABLE IF EXISTS `in_out_order_list`;

CREATE TABLE `in_out_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `in_out_order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '物资表id',
  `order_number` int(11) DEFAULT NULL COMMENT '数量  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='出入库订单详情';

/*Data for the table `in_out_order_list` */

insert  into `in_out_order_list`(`id`,`in_out_order_id`,`goods_id`,`order_number`,`create_time`) values (7,7,3,2,'2021-03-10 20:59:07'),(8,7,4,1,'2021-03-10 20:59:07'),(9,8,4,1,'2021-03-10 21:11:50'),(10,9,3,6,'2021-03-10 21:15:05'),(11,9,4,6,'2021-03-10 21:15:05'),(12,10,3,4,'2021-03-10 21:21:13'),(13,10,4,6,'2021-03-10 21:21:13'),(14,11,3,1,'2021-03-11 10:01:34'),(15,11,4,1,'2021-03-11 10:01:34'),(16,12,4,5,'2021-03-11 21:01:49'),(17,12,5,2,'2021-03-11 21:01:49'),(18,13,4,10,'2021-03-11 21:02:24'),(19,13,5,10,'2021-03-11 21:02:24');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'留言信息1','留言人1','2021-03-10 17:37:17','回复内容1','回复人1','2021-03-10 17:37:17'),(8,'留言信息2','留言人2','2021-03-10 17:37:17',NULL,NULL,NULL),(9,'98787','999','2021-03-11 20:32:09',NULL,NULL,NULL),(16,'87','a3','2021-03-11 20:48:38',NULL,NULL,NULL),(17,'888','a2',NULL,'好的','admin','2021-03-11 21:05:31');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (38,3,'a3','yonghu','用户','fpmedlwjnxansc378349n1thenx07r5y','2021-03-11 20:48:31','2021-03-11 21:48:32'),(39,6,'admin','users','管理员','nw4pseqt8in1d7nwslwq0sx2u9vj33xz','2021-03-11 20:49:31','2021-03-11 21:58:30'),(40,2,'a2','yonghu','用户','5x5druij1iov6uks77j0nas34c5gbijs','2021-03-11 20:52:01','2021-03-11 21:53:32'),(41,5,'a5','yonghu','用户','uelss2ykk2qpw9xh44ek81exj6scougy','2021-03-11 20:58:12','2021-03-11 21:58:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','张1','17703789991','410224199610232011',2,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615426892892.jpg','汉',2,'浙江温州','2021-03-11 09:41:39'),(2,'a2','123456','张2','17703789993','410224199610232013',1,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615465443770.jpg','汉',2,'河南开封',NULL),(3,'a3','123456','张三','17703789993','410224199610232013',2,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615465780612.jpg','汉',2,'审犯罪',NULL),(4,'a4','a4','a4','17703789994','410224199610232014',2,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615465902961.jpg','汉',2,'河南开封',NULL),(5,'a5','123456','张4','17703789995','410224199610232015',2,'http://localhost:8080/nongchanpincangkuguanli/file/download?fileName=1615467428002.jpg','汉1',2,'浙江温州',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
