`sku_tree``tb_item``goods``mmp_user``tb_user``mmp_user``pinyougoudb``mp_user``pinyougoudb`
CREATE TABLE student (
    sid   NUMERIC(10) PRIMARY KEY ,  #学号  主键
    sname  CHAR(10) NOT NULL,    #姓名
    sex  INT CHECK ( 0 OR 1 ),   #性别  0表示男，1表示女
    coll  CHAR(20),     #学院
    major CHAR(20),      #专业
    sclass  INT(4),  #班级
    checkInDate  DATE
);
CREATE TABLE dormitory (
    buildingNum INT(2), #楼号
    layerNum INT(3), #楼层
    hostelNo INT(4),#宿舍号
    sid NUMERIC(10) #学号
);
CREATE TABLE USER (
    username CHAR(15),  #用户名
    PASSWORD CHAR(15) ,  #密码
    flag INT DEFAULT 0 CHECK ( 0 OR 1 OR 2)  # 0为普通用户
);
INSERT INTO dormitory VALUES (1,2,223,2017006656);

INSERT INTO USER VALUES ('刘文广','12345','1');
SELECT * FROM apartment_property;
CREATE TABLE apartment_property (
    buildingNum INT(2), #楼号
    hostelNo INT(4), #宿舍号
    gname CHAR(10), #物品名称
    gnum INT  #数量
);
INSERT INTO apartment_property VALUES (1,223,'椅子',6);
CREATE TABLE visitor_records (
    NAME CHAR(10), #姓名
    POSITION  CHAR(20) ,   #职位
    vis_time  DATE,#来访时间
    lea_time  DATE,#离开时间
    remarks char(50)   #备注
);
INSERT INTO visitor_records VALUES ('李超','辅导员',SYSDATE(),'查寝');

create table access_records (
    sid numeric(10),  #学号
    name char(10),     #姓名
    sex  int,  #xbie`access_records`
    coll char(20),     #学院
    buildingNum int(2), #楼号
    layerNum int(3), #楼层
    hostelNo int(4),#宿舍号
    time1  date,         #时间
    behavior char(10)  #进入公寓或离开公寓
);

INSERT INTO access_records VALUES (2017006666,'宋珉宇','软件工程',SYSDATE(),'进入公寓');

