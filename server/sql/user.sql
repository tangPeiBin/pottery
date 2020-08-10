SET NAMES UTF8;
DROP DATABASE IF EXISTS pottery;
CREATE DATABASE pottery CHARSET=UTF8;
USE pottery;
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(20),
	email VARCHAR(20),
	upwd VARCHAR(20),
	msn VARCHAR(20),
	qq VARCHAR(20),
	office_tele VARCHAR(20),
	family_tele VARCHAR(20),
	phone VARCHAR(20),
	answer VARCHAR(20)
);
INSERT INTO user VALUES(NULL,"张三","1334571522@qq.com",123456,null,null,null,null,17345861905,"勇士");
INSERT INTO user VALUES(NULL,"张三","1334571522@qq.com",123456,null,null,null,null,17345861905,"勇士");

CREATE TABLE family(
	fid INT PRIMARY KEY,
	fname VARCHAR(8) UNIQUE
);
INSERT INTO family VALUES
(10,"精品推荐"),
(20,"餐桌艺术"),
(30,"茶禅一味"),
(40,"文房雅具"),
(50,"咖啡物语"),
(60,"作品收藏"),
(70,"酒店白瓷"),
(80,"精端产品"),
(90,"特价产品");

CREATE TABLE product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64) UNIQUE NOT NULL,
	price DECIMAL(7,1) NOT NULL,
	image VARCHAR(128), 
	isOnsale BOOL,
	isNew BOOL,
	familyId INT,
	foreign key(familyId) references family(fid)
);
INSERT INTO product VALUES
(NULL,"70头珐琅中餐具--最春光",4680.0,"2613_thumb_G_1594944404777.jpg",0,0,10),
(NULL,"古典园林茶杯（对杯）",280.0,"329_thumb_G_1312478228047.jpg",1,0,10),
(NULL,"28头中餐具--翠竹红梅",2180.0,"2634_thumb_G_1590693063654.jpg",0,0,10),
(NULL,"36头青釉中餐具--燕子桃花",2380.0,"2637_thumb_G_1590693558976.jpg",0,0,10),
(NULL,"8头玲珑功夫茶具手绘牡丹",980.0,"2618_thumb_G_1538253195838.jpg",0,0,80),
(NULL,"西湖故事",980.0,"2615_thumb_G_1538251789097.jpg",0,0,80),
(NULL,"青韵系列",78000.0,"2614_thumb_G_1538251550683.jpg",0,0,80),
(NULL,"直筒杯四件套（梅兰竹菊）",6400.0,"2605_thumb_G_1496882326199.jpg",0,0,80),
(NULL,"鸡心杯四件套（上善若水）",7200.0,"2604_thumb_G_1496881903390.jpg",0,0,80),
(NULL,"32头影青雕刻餐具荷花",2680.0,"2665_thumb_G_1596156271569.jpg",0,0,20),
(NULL,"26头国色天姿中餐具",880.0,"2663_thumb_G_1595896297014.jpg",0,1,20),
(NULL,"28头开光山水中餐具",980.0,"2662_thumb_G_1595551909485.jpg",0,0,20),
(NULL,"28头荷塘清韵中餐具",980.0,"2659_thumb_G_1595529912788.jpg",0,0,20),
(NULL,"8头茶具玲珑小花",1080.0,"2664_thumb_G_1595982405207.jpg",0,0,30),
(NULL,"仿古茶叶罐（小）",180.0,"2661_thumb_G_1595548898272.jpg",0,0,30),
(NULL,"8头茶具吊兰花",1280.0,"2660_thumb_G_1595546210988.jpg",0,1,30),
(NULL,"普通鸡缸杯",198.0,"2653_thumb_G_1595197764838.jpg",0,0,30),
(NULL,"8头影青雕刻牡丹茶具花",1580.0,"2649_thumb_G_1593975810869.jpg",0,0,30),
(NULL,"雕刻青瓷单杯（配漏斗）牡丹",360.0,"2654_thumb_G_1595198600190.jpg",0,0,40),
(NULL,"60头元青花富贵有鱼中餐具",2580.0,"2658_thumb_G_1595464505610.jpg",0,1,20),
(NULL,"玲珑单杯水点桃花玲珑",500.0,"2651_thumb_G_1594169527042.jpg",0,1,40),
(NULL,"如意杯（平安）",128.0,"1361_thumb_G_1593996765106.jpg",0,1,40),
(NULL,"玲珑直身单杯",180.0,"2650_thumb_G_1593995174917.jpg",0,0,40),
(NULL,"手绘青花大福杯碟—兰竹",418.0,"2645_thumb_G_1592870776137.jpg",0,0,40),
(NULL,"中国梦",500.0,"2631_thumb_G_1573776728044.jpg",0,0,40),
(NULL,"搪瓷杯--撸起袖子加油干",168.0,"2090_thumb_G_1595549295370.jpg",1,0,40),
(NULL,"50头中餐具--兰色梦幻",2080.0,"803_thumb_G_1595445878769.jpg",1,0,20),
(NULL,"28头福瑞云翔",2080.0,"1310_thumb_G_1595184677231.jpg",1,0,20),
(NULL,"26头中餐具吉祥如意（锦盒包装）",1180.0,"312_thumb_G_1594167530263.jpg",1,0,20);
