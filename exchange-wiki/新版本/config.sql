# ************************************************************
# Sequel Pro SQL dump
# Version 5224
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.2.133 (MySQL 8.0.11)
# Database: ex_trade
# Generation Time: 2018-08-04 07:25:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '配置规则类型',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置规则代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置规则名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '配置规则描述',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '配置规则描述',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置值',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1021670751313121284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='平台配置信息';

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;

INSERT INTO `config` (`id`, `type`, `code`, `name`, `desc`, `description`, `value`, `created`)
VALUES
	(10101010101010109,'CNY','USDT2CNY','人民币提现USDT换算费率',NULL,'人民币提现USDT换算费率','0.99','2018-07-05 22:44:18'),
	(10101010101100121,'CNY','WITHDRAW_MIN_AMOUNT','最小取现额（CNYB）',NULL,'最小取现额（CNYB）','800','2018-07-05 22:44:18'),
	(10101010111010102,'CNY','WITHDRAW_MAX_AMOUNT','最大取现额（CNYB）',NULL,'最大取现额（CNYB）','50000','2018-07-05 22:44:18'),
	(101010101012010105,'CNY','WITHDRAW_BASEAMOUNT','取现基数',NULL,'取现值必须是基数的倍数，基数如果是100，那么取现值只能是100的倍数，例如：200,300等等','1','2018-07-05 22:44:18'),
	(101010101031010107,'CNY','WITHDRAW_STATUS','提现状态',NULL,'提现状态，0表示不能提现，1表示可以提现','1','2018-07-05 22:44:18'),
	(101010101041010108,'CNY','CNY2USDT','人民币充值USDT换算费率',NULL,'人民币充值USDT换算费率','1','2018-07-05 22:44:18'),
	(101010101301010106,'CNY','WITHDRAW_DAY_MAX_AMOUNT','每日最大提现额（CNYB）',NULL,'每日最大提现额（CNYB）','500000','2018-07-05 22:44:18'),
	(1010101010101010101,'CNY','WITHDRAW_MIN_AMOUNT','最小取现额（USDT）','最小取现额（USDT）',NULL,'100','2018-07-04 18:17:38'),
	(1010101010101010102,'CNY','WITHDRAW_MAX_AMOUNT','最大取现额（USDT）','最大取现额（USDT）',NULL,'50000','2018-07-04 18:17:38'),
	(1010101010101010103,'CNY','WITHDRAW_MIN_POUNDAGE','最小取现手续费','最小取现手续费',NULL,'0','2018-07-04 18:17:38'),
	(1010101010101010104,'CNY','WITHDRAW_POUNDAGE_RATE','取现手续费率','取现手续费率',NULL,'0','2018-07-04 18:17:38'),
	(1010101010101010105,'CNY','WITHDRAW_BASEAMOUNT','取现基数','取现值必须是基数的倍数，基数如果是100，那么取现值只能是100的倍数，例如：200,300等等',NULL,'1','2018-07-04 18:17:38'),
	(1010101010101010106,'CNY','WITHDRAW_DAY_MAX_AMOUNT','每日最大提现额（USDT）','每日最大提现额（USDT）',NULL,'500000','2018-07-04 18:17:38'),
	(1010101010101010107,'CNY','WITHDRAW_STATUS','提现状态','提现状态，0表示不能提现，1表示可以提现',NULL,'1','2018-07-04 18:17:38'),
	(1010101010101010108,'CNY','CNY2USDT','人民币充值USDT换算费率','人民币充值USDT换算费率',NULL,'6.42','2018-07-04 18:17:38'),
	(1010101010101010109,'CNY','USDT2CNY','人民币提现USDT换算费率','人民币提现USDT换算费率',NULL,'6.4','2018-07-04 18:17:38'),
	(1010101010101010111,'CNY','WITHDRAW_MIN_AMOUNT','最小取现额（CNYB）',NULL,'最小取现额（CNYB）','800','2018-07-05 22:44:18'),
	(1010101010101010113,'REGISTER_REWARD','SWITCH','注册奖励开关','注册奖励开关：1-开启；0-关闭；',NULL,'0','2018-07-04 18:17:38'),
	(1010101010101010114,'REGISTER_REWARD','COIN_ID','注册奖励币种','邀请奖励币种',NULL,'1010101010101010104','2018-07-04 18:17:38'),
	(1010101010101010115,'REGISTER_REWARD','AMOUNT','注册奖励数量','注册奖励数量',NULL,'1000','2018-07-04 18:17:38'),
	(1010101010101010116,'REGISTER_REWARD','START_TIME','注册奖励开始时间','注册奖励开始时间',NULL,'2018-05-25 00:00:00','2018-07-04 18:17:38'),
	(1010101010101010117,'REGISTER_REWARD','END_TIME','注册奖励结束时间','注册奖励结束时间',NULL,'2028-06-30 00:00:00','2018-07-04 18:17:38'),
	(1010101010101010118,'INVITE_REWARD','SWITCH','邀请奖励开关','邀请奖励开关：1-开启；0-关闭；',NULL,'0','2018-07-04 18:17:38'),
	(1010101010101010119,'INVITE_REWARD','COIN_ID','邀请奖励币种','邀请奖励币种',NULL,'1010101010101010104','2018-07-04 18:17:38'),
	(1010101010101010120,'INVITE_REWARD','AMOUNT','邀请奖励金额','邀请奖励金额',NULL,'200','2018-07-04 18:17:38'),
	(1010101010101010121,'INVITE_REWARD','START_TIME','邀请奖励开始时间','邀请奖励开始时间',NULL,'2018-05-25 00:00:00','2018-07-04 18:17:38'),
	(1010101010101010122,'INVITE_REWARD','END_TIME','邀请奖励结束时间','邀请奖励结束时间',NULL,'2028-06-30 00:00:00','2018-07-04 18:17:38'),
	(1010101010101010123,'SMS','SIGN','短信签名','短信签名',NULL,'【VBEX】','2018-07-04 18:17:38'),
	(1010101010101010124,'SMS','REGISTER_VERIFY','用户注册验证','用户注册短信模板',NULL,'${sign}您正在注册平台账号。验证码：${code}，验证码有效时间：30分钟。请勿向任何人包括客服提供验证码！','2018-07-04 18:17:38'),
	(1010101010101010125,'SMS','FORGOT_VERIFY','用户找回密码验证','用户找回密码模板',NULL,'${sign}您的短信验证码是${code}。您正在通过手机号重置登录密码，如非本人操作，请忽略该短信！','2018-07-04 18:17:38'),
	(1010101010101010126,'SMS','REGISTER_AGENT','注册成为代理商用户','代理商注册短信模板',NULL,'${sign}恭喜您注册成为代理商用户！','2018-07-04 18:17:38'),
	(1010101010101010127,'SMS','UNDER_LINE_REFUSE','线下充值拒绝短信','线下充值拒绝短信模板',NULL,'${sign}您在平台申请的线下充值${num}元已被拒绝，拒绝原因为:${reason}，如需退款或有疑问请联系在线客服！','2018-07-04 18:17:38'),
	(1010101010101010128,'SMS','UNDER_LINE_SUCCESS','线下充值成功短信','线下充值成功短信模板',NULL,'${sign}您已在平台线下成功充值${num}元，人工到账确认时间为：${getTime}！','2018-07-04 18:17:38'),
	(1010101010101010129,'SMS','WITHDRAW_APPLY','提币申请','提币申请短信模板',NULL,'${sign}您已在平台申请提币验证码为：${code}！','2018-07-04 18:17:38'),
	(1010101010101010130,'SMS','WITHDRAW_SUCCESS','提币成功','提币成功短信模板',NULL,'${sign}您已在平台成功转出${amount}个${coinName}，请注意查收！','2018-07-04 18:17:38'),
	(1010101010101010131,'SMS','CASH_WITHDRAW_REFUSE','法币提现','法币提现审核拒绝短信模板',NULL,'${sign}您在平台申请的提现：${num}元已被拒绝，拒绝原因为:${reason}，如需退款或有疑问请联系在线客服！','2018-07-04 18:17:38'),
	(1010101010101010132,'SMS','FORGOT_PWD_VERIFY','找回登录密码','找回登录密码短信模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010133,'SMS','CHANGE_PHONE_VERIFY','修改手机号码','修改手机号码短信模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010134,'SMS','CHANGE_LOGIN_PWD_VERIFY','修改登录密码','修改登录密码短信模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010135,'SMS','CHANGE_PAY_PWD_VERIFY','修改资金密码','修改资金密码短信模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010136,'SMS','FORGOT_PAY_PWD_VERIFY','找回资金密码','找回资金密码短信模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010137,'SMS','CASH_WITHDRAWS','提现申请','提现申请模板',NULL,'${sign}您手机验证码为：${code}，如有问题请拨打客服电话！','2018-07-04 18:17:38'),
	(1010101010101010138,'SMS','COIN_RECHARGE_SUCCESS','充币成功','充币成功模板',NULL,'${sign}您已成功充值${amount}个${coinName}，到账确认时间为：${getTime}！','2018-07-04 18:17:38'),
	(1010101010101010139,'SYSTEM','TRADE_STATUS','系统交易状态','币币交易状态：0-关闭；1-开启',NULL,'1','2018-07-04 18:17:38'),
	(1010101010101010140,'SYSTEM','CASH_WITHDRAW_AUDIT_STEPS','提现审核级数','提现审核级数',NULL,'2','2018-07-04 18:17:38'),
	(1010101010101010141,'SYSTEM','CASH_RECHARGE_AUDIT_STEPS','充值审核级数','充值审核级数',NULL,'2','2018-07-04 18:17:38'),
	(1010101010101010142,'SYSTEM','COIN_WITHDRAW_AUDIT_STEPS','提币审核级数','提币审核级数',NULL,'2','2018-07-04 18:17:38'),
	(1010101010101010143,'SYSTEM','PLATFORM_COIN_ID','平台币ID','平台币ID',NULL,'1015614364913057793','2018-07-04 18:17:38'),
	(1010101010101010144,'SYSTEM','PLATFORM_COIN_NAME','平台币名称','平台币名称',NULL,'USDT','2018-07-04 18:17:38'),
	(1010101010101010145,'SYSTEM','C2C_ADMIN_USER_ID','C2C管理员ID','C2C管理员ID',NULL,'1010101010101010101','2018-07-04 18:17:38'),
	(1010101023101010103,'CNY','WITHDRAW_MIN_POUNDAGE','最小取现手续费',NULL,'最小取现手续费','0','2018-07-05 22:44:18'),
	(1010101041301010104,'CNY','WITHDRAW_POUNDAGE_RATE','取现手续费率',NULL,'取现手续费率','0','2018-07-05 22:44:18'),
	(1014891775194415107,'SMS','VERIFY_OLD_PHONE','验证老账户的验证码','验证老账户的验证码',NULL,'验证码：${code}，您正在修改手机号或邮箱。10分钟内有效，请忽告诉他人。','2018-07-04 18:17:38'),
	(1014891775194415108,'SMS','API_KEY_GET_VERIFY','API-KEY申请短信验证','API-KEY申请短信验证',NULL,'${sign}验证码：${code}，您正在申请API-KEY。10分钟内有效，请忽告诉他人。','2018-07-17 19:28:20'),
	(1019903625002745858,'SYSTEM','ROBOT_TRADE_FEE','机器人刷单手续费开关','1-收取手续费；0-不收取手续费',NULL,'1','2018-07-19 19:15:47'),
	(1019903625002745859,'Mining','SWITCH','挖矿开关','1：开启；0：关闭','1：开启；0：关闭','1','2018-07-21 17:57:12'),
	(1019903625002745860,'Mining','COIN_ID','挖矿币种ID','挖矿币种ID','挖矿币种ID','1020611174450663426','2018-07-21 17:57:12'),
	(1019903625002745861,'Mining','COIN_NAME','挖矿币种名称','挖矿币种名称','挖矿币种名称','NBXX','2018-07-21 17:57:12'),
	(1019903625002745862,'Mining','MINING_RATE','交易挖矿返还比例','采用小数表示百分比，1即为100%','采用小数表示百分比，1即为100%','1','2018-07-21 17:57:12'),
	(1019903625002745863,'Mining','MINING_ACCOUNT_RATE','交易挖矿的数量，不超过前一日账户资产的百分比','采用小数表示百分比，0.2即为20%','采用小数表示百分比，0.2即为20%','0.2','2018-07-21 17:57:12'),
	(1019903625002745864,'Mining','AVG_PRICE_BXXUSDT','BXXUSDT日成交均价','为0或空时，需要获取BXXUSDT的日成交均价','为0或空时，需要获取BXXUSDT的日成交均价','0','2018-07-21 17:57:12'),
	(1019903625002745865,'Mining','AVG_PRICE_BXXBTC','BXXBTC日成交均价','为0或空时，需要获取BXXBTC的日成交均价','为0或空时，需要获取BXXBTC的日成交均价','0','2018-07-21 17:57:12'),
	(1019903625002745866,'Mining','AVG_PRICE_BXXETH','BXXBTC日成交均价','为0或空时，需要获取BXXBTC的日成交均价','为0或空时，需要获取BXXBTC的日成交均价','0','2018-07-21 17:57:12'),
	(1019903625002745867,'Mining','DIVIDEND_RATE','持有平台币分红比例','采用小数表示百分比，0.8即为80%','采用小数表示百分比，0.8即为80%','0.8','2018-07-21 17:57:12'),
	(1019903625002745868,'Mining','INVITE_REWARD_SWITCH','邀请奖励开关','1：开启；0：关闭','1：开启；0：关闭','1','2018-07-21 17:57:12'),
	(1019903625002745869,'Mining','INVITE_REWARD_START_DATE','邀请奖励开始日期','格式：yyyy-MM-dd','格式：yyyy-MM-dd','2018-07-01','2018-07-21 17:57:12'),
	(1019903625002745870,'Mining','INVITE_REWARD_END_DATE','邀请奖励结束日期','格式：yyyy-MM-dd','格式：yyyy-MM-dd','2018-08-01','2018-07-21 17:57:12'),
	(1019903625002745871,'Mining','INVITE_NUM','邀请人数条件','\"邀请人数达到20人，可以获取直接下级挖矿手续费*一级返佣比例；另可以获取下级的下级挖矿手续费*三级返佣比例；邀请人数小于20人，可以获取直接下级挖矿手续费*二级返佣比例；','\"邀请人数达到20人，可以获取直接下级挖矿手续费*一级返佣比例；另可以获取下级的下级挖矿手续费*三级返佣比例；邀请人数小于20人，可以获取直接下级挖矿手续费*二级返佣比例；','20','2018-07-21 17:57:12'),
	(1019903625002745872,'Mining','ENOUGH_RATE','一级返佣比例','采用小数表示百分比，0.2即为20%','采用小数表示百分比，0.2即为20%','0.2','2018-07-21 17:57:12'),
	(1019903625002745873,'Mining','NOT_ENOUGH_RATE','不满足的时候返佣规则','采用小数表示百分比，0.1即为10%','采用小数表示百分比，0.1即为10%','0.1','2018-07-21 17:57:12'),
	(1019903625002745874,'Mining','INVITE_LEVEL3_RATE','三级返佣比例','采用小数表示百分比，0.1即为10%','采用小数表示百分比，0.1即为10%','0.05','2018-07-21 17:57:12'),
	(1019903625002745875,'Mining','MINE_POLL_SIZE','矿池成员数量条件','当矿池成员达到设定值才可获得奖励','当矿池成员达到设定值才可获得奖励','100','2018-07-21 17:57:12'),
	(1019903625002745876,'Mining','MINE_POLL_RATE','矿池奖励条件比例','采用小数表示百分比，0.2即为20%；当矿池成员持有平台币总量达到：总流通 * 0.2 / 矿主数，才能获的矿池奖励','采用小数表示百分比，0.2即为20%；当矿池成员持有平台币总量达到：总流通 * 0.2 / 矿主数，才能获的矿池奖励','0.2','2018-07-21 17:57:12'),
	(1019903625002745877,'Mining','MINE_POLL_REWARD_RATE','矿池奖励比例','采用小数表示百分比，0.098即为9.8%（5/51计算而得）奖励=总释放量 * 0.098 / 矿主数','采用小数表示百分比，0.098即为9.8%（5/51计算而得）奖励=总释放量 * 0.098 / 矿主数','0.098','2018-07-21 17:57:12'),
	(1021670073463263233,'test','tset','test',NULL,NULL,'test','2018-07-24 16:15:01'),
	(1021670176039161858,'test1','test1','test1',NULL,NULL,'test1','2018-07-24 16:15:26'),
	(1021670751313121281,'test2','test2','test2',NULL,'test2','test2','2018-07-24 16:17:43'),
	(1021670751313121282,'SYSTEM','ROBOT','ROBOT',NULL,NULL,'1','2018-08-03 00:49:00'),
	(1021670751313121283,'SYSTEM','ROBOT','ROBOT',NULL,NULL,'2','2018-08-03 00:49:07');

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
