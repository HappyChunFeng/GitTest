/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.27 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `test`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`password`) values (1,'duchungfeng','duchunfeng'),(7,'花无缺','123'),(8,'花无缺','123'),(9,'花无缺','123'),(10,'花无缺','123'),(11,'花无缺','123');

/*Table structure for table `eb_card_bin_info` */

DROP TABLE IF EXISTS `eb_card_bin_info`;

CREATE TABLE `eb_card_bin_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `CARD_BIN_NO` varchar(10) DEFAULT NULL COMMENT '卡BIN号码',
  `CARD_TYP_CD` varchar(20) DEFAULT NULL COMMENT '卡类型代码',
  `BNK_CTGY_CD` varchar(10) DEFAULT NULL COMMENT '行别代码',
  `BANK_IBANK_BNK_NO` varchar(20) DEFAULT NULL COMMENT '银行联行行号',
  `BANK_NM` varchar(40) DEFAULT NULL COMMENT '银行名称',
  `MODFY_TM` varchar(20) DEFAULT NULL COMMENT '修改时间',
  `SPME_ALBT` varchar(20) DEFAULT NULL COMMENT '首字母',
  `BANK_STUS_CD` varchar(2) DEFAULT NULL COMMENT '银行状态代码',
  `REMRK_1` varchar(20) DEFAULT NULL COMMENT '备注1',
  `REMRK_2` varchar(20) DEFAULT NULL COMMENT '备注2',
  `ADMIN_CMPRMNT_CD` varchar(10) DEFAULT NULL COMMENT '行政区划代码',
  `HOT_BNK` varchar(20) DEFAULT NULL COMMENT '热门银行',
  `LGO_ADDRESS` varchar(20) DEFAULT NULL COMMENT '目录地址',
  `BIN_TYP` varchar(2) DEFAULT NULL COMMENT '卡Bin类型 1本行对私卡bin、2本行对公卡bin、3他行对私卡bin、4他行对公卡bin',
  `BNK_TYP` varchar(1) DEFAULT NULL COMMENT '银行类型1总行 2分行',
  `PARE_BNK_ID` int(11) DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='渠道费用信息表';

/*Data for the table `eb_card_bin_info` */

insert  into `eb_card_bin_info`(`ID`,`CARD_BIN_NO`,`CARD_TYP_CD`,`BNK_CTGY_CD`,`BANK_IBANK_BNK_NO`,`BANK_NM`,`MODFY_TM`,`SPME_ALBT`,`BANK_STUS_CD`,`REMRK_1`,`REMRK_2`,`ADMIN_CMPRMNT_CD`,`HOT_BNK`,`LGO_ADDRESS`,`BIN_TYP`,`BNK_TYP`,`PARE_BNK_ID`) values (1,'646465','22','01','104100000004','中国银行',NULL,'Z','01',NULL,NULL,NULL,'1','广东广州','1','1',NULL),(4,'646464','104100000004',NULL,'104581004010','中国银行广州珠江支行',NULL,'Z','01',NULL,NULL,'01001',NULL,NULL,'1','2',1),(7,NULL,NULL,NULL,'308584000013','招商银行',NULL,'Z','01',NULL,NULL,NULL,'1',NULL,'2','1',NULL),(8,NULL,NULL,NULL,'308581002013','招商银行股份有限公司广州分行',NULL,'Z','01',NULL,NULL,'01001',NULL,NULL,'2','2',7),(9,NULL,NULL,NULL,'308581002021','招商银行股份有限公司广州天河支行',NULL,'Z','01',NULL,NULL,'01001',NULL,NULL,'2','2',7),(10,NULL,NULL,NULL,'308584001016','招商银行深圳分行',NULL,'Z','01',NULL,NULL,'01003',NULL,NULL,'2','2',7),(11,NULL,NULL,NULL,'104584000003','中国银行深圳市分行',NULL,'Z','01',NULL,NULL,'01003',NULL,NULL,'1','2',1);

/*Table structure for table `eb_city_info` */

DROP TABLE IF EXISTS `eb_city_info`;

CREATE TABLE `eb_city_info` (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `ADMIN_CMPRMNT_CD` varchar(10) DEFAULT NULL COMMENT '行政区划代码',
  `CITY_NM` varchar(20) DEFAULT NULL COMMENT '城市名称',
  `CITY_CATEG_CD` varchar(10) DEFAULT NULL COMMENT '城市类别代码',
  `SPR_CITY_ADMIN_CMPRMNT_CD` varchar(10) DEFAULT NULL COMMENT '上级城市行政区划代码',
  `REMRK_1` varchar(20) DEFAULT NULL COMMENT '备注1',
  `REMRK_2` varchar(20) DEFAULT NULL COMMENT '备注2',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='渠道费用信息表';

/*Data for the table `eb_city_info` */

insert  into `eb_city_info`(`ID`,`ADMIN_CMPRMNT_CD`,`CITY_NM`,`CITY_CATEG_CD`,`SPR_CITY_ADMIN_CMPRMNT_CD`,`REMRK_1`,`REMRK_2`) values (1,'01','广东','1','',NULL,NULL),(2,'02','浙江','1',NULL,NULL,NULL),(3,'03','江苏','1',NULL,NULL,NULL),(4,'01001','广州','2','01',NULL,NULL),(5,'01002','佛山','2','01',NULL,NULL),(6,'01003','深圳','2','01',NULL,NULL),(7,'01004','东莞','2','01',NULL,NULL),(8,'02001','杭州','2','02',NULL,NULL),(9,'02002','宁波','2','02',NULL,NULL),(10,'02003','温州','2','02',NULL,NULL),(11,'03001','南京','2','03',NULL,NULL),(12,'03002','无锡','2','03',NULL,NULL);

/*Table structure for table `ifp_errorcode` */

DROP TABLE IF EXISTS `ifp_errorcode`;

CREATE TABLE `ifp_errorcode` (
  `FALSE_CD` varchar(10) NOT NULL COMMENT '错误码',
  `FALSE_INFO` text COMMENT '错误信息',
  `LANGUG` varchar(10) DEFAULT NULL COMMENT '语言',
  `GRADE_CD` varchar(1) DEFAULT NULL COMMENT '等级',
  `CHNL_NO` varchar(4) DEFAULT NULL COMMENT '渠道编号',
  `SYS_NO` varchar(4) DEFAULT NULL COMMENT '系统编号',
  `SLTN_MANR_INFO` varchar(255) DEFAULT NULL COMMENT '解决方案',
  PRIMARY KEY (`FALSE_CD`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='错误码信息';

/*Data for the table `ifp_errorcode` */

/*Table structure for table `public_id_segment` */

DROP TABLE IF EXISTS `public_id_segment`;

CREATE TABLE `public_id_segment` (
  `biz_tag` varchar(128) NOT NULL COMMENT '业务标识',
  `is_loop` tinyint(3) unsigned NOT NULL COMMENT '是否循环',
  `min_id` bigint(18) NOT NULL COMMENT '分配的id号段的最小值',
  `max_id` bigint(18) NOT NULL COMMENT '分配的id号段的最大值',
  `cur_id` bigint(20) unsigned zerofill NOT NULL COMMENT '当前id号段',
  `p_step` smallint(6) NOT NULL COMMENT '步长',
  `time_format` varchar(18) DEFAULT NULL COMMENT '拼接的时间格式',
  `default_append` varchar(50) DEFAULT NULL COMMENT '默认的拼接字符串',
  `biz_desc` varchar(256) DEFAULT NULL COMMENT '描述',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`biz_tag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='号段存储表';

/*Data for the table `public_id_segment` */

insert  into `public_id_segment`(`biz_tag`,`is_loop`,`min_id`,`max_id`,`cur_id`,`p_step`,`time_format`,`default_append`,`biz_desc`,`gmt_create`,`gmt_modified`) values ('dist_biz',1,1000,999999,00000000000000019001,1000,'yyyyMMddHHmmss','NIBS',NULL,'2020-07-10 17:52:29','2021-03-17 14:41:23'),('model_biz',1,1000,999999,00000000000000018001,1000,'yyyyMMddHHmmss','NIBS','1','2020-05-18 11:43:50','2021-03-19 16:06:56'),('ynet_snowflake',1,100000000,999999999,00000000000000000008,1000,'yyyyMMddHHmmss','NIBS',NULL,'2019-01-15 09:41:53','2020-05-19 16:48:33');

/*Table structure for table `sm_bank_date` */

DROP TABLE IF EXISTS `sm_bank_date`;

CREATE TABLE `sm_bank_date` (
  `BK_NO` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PREV_ACCT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACCT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `NEXT_ACCT_DT` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ALDY_TM` varchar(14) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `FST_EXPD_VAL` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `SEC_EXPD_VAL` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TRD_EXPD_VAL` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`BK_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `sm_bank_date` */

insert  into `sm_bank_date`(`BK_NO`,`PREV_ACCT_DT`,`ACCT_DT`,`NEXT_ACCT_DT`,`ALDY_TM`,`FST_EXPD_VAL`,`SEC_EXPD_VAL`,`TRD_EXPD_VAL`) values ('103','20181224','20181225','20181226','20210810173105',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
