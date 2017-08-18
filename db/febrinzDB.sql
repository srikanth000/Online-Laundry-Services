/*
SQLyog Community Edition- MySQL GUI v8.02 
MySQL - 5.5.54 : Database - fabrinz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`fabrinz` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fabrinz`;

/*Table structure for table `branch` */

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `location_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `branch_id` bigint(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`branch_code`),
  UNIQUE KEY `branch_id` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `branch` */

insert  into `branch`(`location_name`,`branch_name`,`branch_code`,`branch_id`) values ('Hyderabad','Ameerpet','AM1001',3),('Hyderabad','Hitech City','HC1001',4),('Secandrabad','Suchitra Circle','SC1001',1),('Secandrabad','Bowanpally','SC1002',2);

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `Item_name` varchar(50) NOT NULL,
  `Action` varchar(50) NOT NULL,
  `Cost` int(50) NOT NULL,
  `uid` int(20) NOT NULL,
  `Item_id` bigint(100) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `Item_id` (`Item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `item` */

insert  into `item`(`Item_name`,`Action`,`Cost`,`uid`,`Item_id`) values ('Jeans','Iron',10,6,1),('Jeans','Wash and Iron',30,6,2),('Jeans','Wash and Fold',20,6,3),('T-Shirt','Iron',10,6,4),('T-Shirt','Wash and Fold',20,6,5),('T-Shirt','Wash and Iron',30,6,6),('Jeans','Wash and Iron',50,6,7);

/*Table structure for table `itemlist` */

DROP TABLE IF EXISTS `itemlist`;

CREATE TABLE `itemlist` (
  `Item_Name` varchar(50) NOT NULL,
  `Item_Id` int(10) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `Item_Id` (`Item_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `itemlist` */

insert  into `itemlist`(`Item_Name`,`Item_Id`) values ('T-Shirt',1),('Jeans',2),('Kurta',3),('legi',4),('Bed- Sheet',5),('Sherwani',6);

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `location_name` varchar(50) NOT NULL,
  `location_id` bigint(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`location_name`),
  UNIQUE KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `location` */

insert  into `location`(`location_name`,`location_id`) values ('Hyderabad',1),('Secandrabad',2);

/*Table structure for table `orderlist` */

DROP TABLE IF EXISTS `orderlist`;

CREATE TABLE `orderlist` (
  `location` varchar(50) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `custname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `picuptime` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `orderid` bigint(100) NOT NULL AUTO_INCREMENT,
  `orderstatus` varchar(100) DEFAULT 'No Status',
  `orderdate` varchar(100) DEFAULT NULL,
  `tqty` bigint(100) DEFAULT NULL,
  `tamount` bigint(100) DEFAULT NULL,
  `paymode` varchar(100) DEFAULT NULL,
  `paystatus` varchar(100) DEFAULT NULL,
  `deldate` varchar(100) DEFAULT NULL,
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `orderlist` */

insert  into `orderlist`(`location`,`sid`,`custname`,`email`,`mobile`,`pin`,`address`,`picuptime`,`uid`,`orderid`,`orderstatus`,`orderdate`,`tqty`,`tamount`,`paymode`,`paystatus`,`deldate`) values ('Secandrabad','6','Raj Namdeo','raj@gmail.com','9407070876','484661','HN.106 Suchitra','12:00 PM To 04:00 PM','1',1,'Complete','2017-03-28',10,200,'Cash On Delivery (COD)','Not paid','28/03/2017'),('Secandrabad','6','Kishor  Namdeo','Kishor.umr@gmail.com','9977940694','484661','Purana Padav Umaria','08:00 AM To 12:00 PM','1',3,'Not Pick Up From Destination','2017-03-28',10,100,'Cash On Delivery (COD)','Not paid',NULL),(NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,'1',4,'Not Pick Up From Destination','2017-03-29',10,100,'Online (Pripaid)','Not paid',NULL),('Secandrabad','6','Kishor  Namdeo','Kishor.umr@gmail.com','9977940694','484661','Purana Padav Umaria','04:00 PM To 08:00 PM','1',5,'Complete','2017-03-29',150,3000,'Cash On Delivery (COD)','Paid',NULL),(NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,'1',6,'Not Pick Up From Destination','2017-03-29',50,1500,'Cash On Delivery (COD)','Not paid',NULL),('Secandrabad','6','Kishor  Namdeo','Kishor.umr@gmail.com','9977940694','484661','Purana Padav Umaria','04:00 PM To 08:00 PM','1',7,'Not Pick Up From Destination','2017-03-29',10,300,'Cash On Delivery (COD)','Not paid',NULL),('Secandrabad','6','Raj Namdeo','raj@gmail.com','9407070876','484661','3633','04:00 PM To 08:00 PM','1',8,'Complete','2017-03-29',5,50,'Cash On Delivery (COD)','null',NULL),('Secandrabad','6','anurag asati','asati@gmai.com','9407070876','484661','jabalpur','12:00 PM To 04:00 PM','1',10,'Complete','2017-03-29',10,300,'Cash On Delivery (COD)','Not paid',NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,'No Status',NULL,NULL,NULL,NULL,NULL,NULL),('Secandrabad','6','Raj Namdeo','raj@gmail.com','9407070876','484661','12542 ranjhi','12:00 PM To 04:00 PM','1',12,'Complete','2017-04-06',10,300,'Cash On Delivery (COD)','Not paid',NULL),('Secandrabad','6','Raj Namdeo','raj@gmail.com','9407070876','484661','Purana Padav ','04:00 PM To 08:00 PM','1',13,'Not Pick Up From Destination','2017-04-20',5,50,'Cash On Delivery (COD)','Not paid',NULL),('Secandrabad','6','Raj Namdeo','raj@gmail.com','9407070876','484661','HN.106 Suchitra','12:00 PM To 04:00 PM','1',14,'Not Pick Up From Destination','2017-05-26',20,400,'Cash On Delivery (COD)','Not paid',NULL),('Secandrabad','6','arjun','arjun2012@gmail.com','9977042556','484661','ranji','08:00 AM To 12:00 PM','2',15,'Complete','2017-04-25',2,60,'Cash On Delivery (COD)','Paid',NULL),('Secandrabad','6','shraddha soni','sh@gmail.com','9685204106','482004','suhgagi','04:00 PM To 08:00 PM','3',16,'Complete','2017-04-25',1,30,'Cash On Delivery (COD)','Paid',NULL);

/*Table structure for table `orderlistitem` */

DROP TABLE IF EXISTS `orderlistitem`;

CREATE TABLE `orderlistitem` (
  `Item_Name` varchar(100) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `rate` varchar(100) DEFAULT NULL,
  `qty` bigint(100) DEFAULT NULL,
  `total` bigint(100) DEFAULT NULL,
  `orderid` bigint(100) DEFAULT NULL,
  `Ino` bigint(100) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `Ino` (`Ino`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `orderlistitem` */

insert  into `orderlistitem`(`Item_Name`,`action`,`rate`,`qty`,`total`,`orderid`,`Ino`) values ('T-Shirt','null','20',50,1000,5,12),('Jeans','Iron','10',50,500,5,13),('Jeans','Wash and Iron','30',50,1500,5,14),('Jeans','Wash and Iron','30',10,300,10,15),('Jeans','Iron','10',5,50,8,16),('Jeans','Wash and Iron','30',10,300,7,17),('Jeans','Iron','10',10,100,3,18),('Jeans','Iron','10',10,100,4,19),('Jeans','Wash and Iron','30',50,1500,6,20),('Jeans','Wash and Iron','30',10,300,12,21),('Jeans','Iron','10',5,50,13,22),('Jeans','Wash and Iron','30',2,60,15,23),('Jeans','Wash and Iron','30',1,30,16,24),('T-Shirt','Wash and Fold','20',20,400,14,25);

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `owner_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `location_name` varchar(50) DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `usertype` int(5) NOT NULL,
  `store_name` varchar(50) DEFAULT NULL,
  `uid` int(20) NOT NULL AUTO_INCREMENT,
  `pid` int(20) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `store` */

insert  into `store`(`owner_name`,`email`,`password`,`mobile`,`location_name`,`branch_name`,`usertype`,`store_name`,`uid`,`pid`,`lastupdate`) values ('Kishor Namdeo','admin','admin','9977940694','Jabalpur','Ranjhi',1,'ADMIN',1,0,NULL),('Abdul Saif Khan','saif@gmail.com','1994','9630376267','Secandrabad','Suchitra Circle',2,'Rising ',6,1,NULL);

/*Table structure for table `storeitem` */

DROP TABLE IF EXISTS `storeitem`;

CREATE TABLE `storeitem` (
  `Item_Name` varchar(50) DEFAULT NULL,
  `uid` bigint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `storeitem` */

insert  into `storeitem`(`Item_Name`,`uid`) values ('Jeans',6),('T-Shirt',6);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `userid` bigint(100) NOT NULL AUTO_INCREMENT,
  `Address` varchar(200) DEFAULT NULL,
  `Pincode` bigint(6) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`Name`,`Email`,`Mobile`,`Password`,`DOB`,`userid`,`Address`,`Pincode`) values ('Raj Namdeo','raj@gmail.com','9407070876','94070','11/07/1989',1,'Suchitra- x Road Secundrabad',484661),('arjun','arjun2012@gmail.com','9977042556','2012ravi','20/12/1994',2,'ranjhi',476212),('shraddha soni','sh@gmail.com','9685204106','re3106shu','23/05/1992',3,'Suhagi',482004);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
