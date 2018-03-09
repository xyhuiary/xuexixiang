SET NAMES UTF8;
DROP DATABASE IF EXISTS hanfu;
CREATE DATABASE hanfu CHARSET=UTF8;
USE hanfu;
/*******************/
/******数据导入******/
/*******************/
/***首页头部导航***/
CREATE TABLE hf_index_header(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(32)
);
/***首页头部导航***/
INSERT INTO hf_index_header VALUES
(NULL,'首页'),
(NULL,'萌物库'),
(NULL,'品牌馆'),
(NULL,'二手铺'),
(NULL,'汉服荟');

/****首页轮播广告商品****/
CREATE TABLE hf_index_lunbo(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  limg VARCHAR(128),
  ltitle VARCHAR(64),
  lhref VARCHAR(128)
);
/****首页轮播广告商品****/
INSERT INTO hf_index_lunbo VALUES
(NULL, 'imgs/1.png','轮播广告商品1','product-details.html?lid=28'),
(NULL, 'imgs/2.png','轮播广告商品2','lookforward.html'),
(NULL, 'imgs/3.png','轮播广告商品3','lookforward.html'),
/*(NULL, 'imgs/4.png','轮播广告商品4','lookforward.html'),*/
(NULL, 'imgs/5.jpg','轮播广告商品5','lookforward.html');

/****本周热卖**定制精选**/
CREATE TABLE hf_index_decent_top
(
    tid INT PRIMARY KEY AUTO_INCREMENT,
    timg VARCHAR(512),
    tname VARCHAR(100),
    tprice DECIMAL(8,2),
    thref VARCHAR(512)
);
INSERT INTO hf_index_decent_top VALUES
    (NULL,"img/2d88fdcdb6b84f43bf21db17a889da83.jpg_250x250.jpg", "河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货", "279.00", "javascript:;"),
    (NULL,"img/9a4377e349d542fa9c9509fb61e76b30.jpg_250x250.jpg", "她说传统汉服女绣花立领对襟长褶裙（199两件一起拍不参与满减）", "79.00", "javascript:;"),
    (NULL,"img/1cdc48aa89b34644b290c8615d699afb.jpg_250x250.jpg", "华姿仪赏相思原创设计汉服女装日常印花交领襦裙大袖魏晋风秋新", "66.00", "javascript:;"),
    (NULL,"img/bbe0dfa53397440082caebb4f4890e19.jpg_250x250.jpg", "改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩", "68.00", "javascript:;"),
    (NULL,"img/9274c89f97664a4e88afa90c09924b72.jpg_250x250.jpg", "她说汉家衣裳汉服女服刺绣逐鹿坦领襦裙三件套外搭现货", "98.00", "javascript:;"),
    (NULL,"img/dbb4b1033bd7493abe69c8f199a40c9a.jpg_250x250.jpg", "桑落馆芸萱17夏新品绣花汉元素半壁短褶汉服", "9999.00", "javascript:;"),
    (NULL,"img/f1509299e85e4211853aa414d163fd28.jpg_250x250.jpg", "小情诗系列竹窗晓风双层对襟半臂觀止茶舍汉服女装日常齐腰襦裙", "87.90", "javascript:;"),
    (NULL,"img/26f92293347b45aeaf18874449209765.jpg_250x250.jpg", "她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋", "66.50", "javascript:;");
/**定制精选**/
CREATE TABLE hf_index_decent_middle
(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    mimg VARCHAR(512),
    mname VARCHAR(100),
    mprice DECIMAL(8,2),
    mhref VARCHAR(512)
);
INSERT INTO hf_index_decent_middle VALUES
    (NULL,"img/0c49e06e14a242709d905d2fe4aa34b2.jpg_250x250.jpg", "鹿韵记原创日常女装汉元素套装服饰冬装新款上衣下裙猫仙绣花套装", "138.00", "javascript:;"),
    (NULL,"img/e8e55d0f6df3402f942d4db3c9fecea0.jpg_250x250.jpg", "鹿韵记复古外套女装日常汉元素冬款大衣保暖连帽咖啡色优雅绣花", "288.00", "javascript:;"),
    (NULL,"img/fcb138c5f3164fbabd6d0760c4418a3a.jpg_250x250.jpg", "【扇】西临月耳坠耳夹九州海上牧云记同款 /汉服配饰", "15.80", "javascript:;"),
    (NULL,"img/054f2570e1374fcdbcbd8b835eb22e5c.jpg_250x250.jpg", "汉尚华莲传统汉服女日常秋冬明制双层毛呢重工绣花立领袄裙马面裙", "338.00", "javascript:;"),
    (NULL,"img/82d59227253f4314aaf805d9e65fa41c.jpg_250x250.jpg", "华姿仪赏 原创设计汉服女装日常吊带衬裙防走光打底搭配齐胸襦裙", "98.00", "javascript:;"),
    (NULL,"img/d94fb686f04542f48b362e28c8fe4b22.jpg_250x250.jpg", "重回汉唐何年原创汉服长褙子女日常传统加厚绒宋制毛呢对襟冬季装", "278.00", "javascript:;"),
    (NULL,"img/c532ba13e1f34277ac1cd1715f649132.jpg_250x250.jpg", "重回汉唐 相思佩 原创日常汉服女明制绣花斜襟袄裙琵琶袖套装秋冬", "248.00", "javascript:;"),
    (NULL,"img/0486ed903cbe4c6a84415447cfa7bee5.jpg_250x250.jpg", "鹿韵记原创设计文艺套装秋冬季贝雷帽交领上衣女装酒红色背带下裙", "148.00", "javascript:;");

/**现货精选**/
CREATE TABLE hf_index_decent_bottom(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    bimg VARCHAR(512),
    bname VARCHAR(100),
    bprice INT,
    bhref VARCHAR(512)
);
INSERT INTO hf_index_decent_bottom VALUES
    (NULL,"img/7ea034b6d8584264a451942ac2b4e337.jpg_350x350.jpg", "煜裳汉服春秋冬款传统汉服女装日常交襟上袄马面裙大摆明制袄裙", "208", "javascript:;"),
    (NULL,"img/7bfcdab59c9e4ebeb2ca42e050558522.jpg_350x350.jpg", "煜裳汉服春秋冬款传统汉服女装日常交襟上袄马面裙大摆明制袄裙", "348", "javascript:;"),
    (NULL,"img/fc393223d7574c658fd7cffbc70e598d.jpg_350x350.jpg", "华兴唐汉服独家设计绣花齐腰对襟襦裙玉露黑色版 重阳节特价优惠", "149", "javascript:;"),
    (NULL,"img/612c72da2da3428f8b34d280169149e0.jpg_350x350.jpg", "钟灵记【狐俏】汉服对襟褙子秋冬厚款汉元素改良短裙女绣花日常", "169", "javascript:;"),
    (NULL,"img/42f74487b4f443b2a3e0855979a71935.jpg_350x350.jpg", "桑落馆汉服春秋新品百搭日常纯色元素短褶白泽xl清新ms棉自然腰", "105", "javascript:;"),
    (NULL,"img/f5b451398cd744a6b51cfab24987a48f.jpg_350x350.jpg", "长夏集 花朝记原创刺绣窄袖长褙子合集 现货", "128", "javascript:;");
/**首页尾部**/
CREATE TABLE hf_index_decent_footer(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fimg VARCHAR(512),
    fhref VARCHAR(512)
);
INSERT INTO hf_index_decent_footer VALUES
(NULL,"img/f21f4f84a27e4a368ae7b9523129c715.png","javascript:;"),
(NULL,"img/74274e493a9e453f98db135ef60c17af.png","javascript:;"),
(NULL,"img/262956e694474261a65f32d7230b4ae2.png","javascript:;"),
(NULL,"img/69296d6b941d4b979fe4d33d48963c88.png","javascript:;"),
(NULL,"img/7ec7b6d8ac9245c0b0e161e361ea5bab.jpg","javascript:;"),
(NULL,"img/a71bd8f23afc49338f9b89a3c2fef144.png","javascript:;"),
(NULL,"img/bd7f815d91aa4738bdf5eb1952df2e46.png","javascript:;"),
(NULL,"img/a07f310e4b934afe8027f185cf67022e.jpg","javascript:;"),
(NULL,"img/2b6719f0356d40c1897db83a8924f3dc.png","javascript:;"),
(NULL,"img/b185317ed849422094c5d39026278ee0.jpg","javascript:;"),
(NULL,"img/1ec809f120064c2c8ee91b725f7751b9.png","javascript:;"),
(NULL,"img/b90fe0191f0648e9bc8694385047eee3.jpg","javascript:;"),
(NULL,"img/e81e19de8a854127906873ff9dee747d.png","javascript:;"),
(NULL,"img/256cd9bae6a1454289fda58afe830d3b.jpg","javascript:;"),
(NULL,"img/5ca96acd189e4445830e421a9144074d.png","javascript:;"),
(NULL,"img/65070adf17bb4ea6ae24d4fb9bef1802.jpg","javascript:;"),
(NULL,"img/b27cadbf9e364a77953cdc0928697e4b.jpg","javascript:;");

/*产品种类*/
CREATE TABLE hf_list_all
(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    aname VARCHAR(32)
);
INSERT INTO hf_list_all
VALUES(1,"女款套装"),
    (2,"女款单品"),
    (3,"男款套装"),
    (4,"男款单品"),
    (5,"汉元素"),
    (6,"内衣/中衣"),
    (7,"配饰");

/*种类出处*/
CREATE TABLE hf_list_source
(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(12),
    fid INT,
    FOREIGN KEY(fid) REFERENCES hf_list_all(aid)
);
INSERT INTO hf_list_source
VALUES(1,"交领襦裙",1),
    (2,"对襟襦裙",1),
    (3,"齐胸襦裙",1),
    (4,"袒领襦裙",1),
    (5,"褙子套装",1),
    (6,"袄裙",1),
    (7,"圆领袍",1),
    (8,"直裾",1),
    (9,"曲裾",1),
    (10,"襦袴",1),
    (11,"童装",1),
    (12,"半臂",2),
    (13,"襦",2),
    (14,"上袄",2),
    (15,"褙子",2),
    (16,"宋裤",2),
    (17,"比甲",2),
    (18,"披风",2),
    (19,"大袖衫",2),
    (20,"褶裙",2),
    (21,"破裙",2),
    (22,"马面",2),
    (23,"袴",2),
    (24,"围裳",2),
    (25,"衣裳",3),
    (26,"直裰",3),
    (27,"直身",3),
    (28,"深衣",3),
    (29,"道袍",3),
    (30,"圆领袍",3),
    (31,"直裾",3),
    (32,"曲裾",3),
    (33,"襕衫",3),
    (34,"曳撒",3),
    (35,"贴里",3),
    (36,"短褐",3),
    (37,"童装",3),
    (38,"半臂",4),
    (39,"上襦",4),
    (40,"褙子",4),
    (41,"大氅",4),
    (42,"袴",4),
    (43,"裳",4),
    (44,"上衣下裙",5),
    (45,"连衣裙",5),
    (46,"上衣(女)",5),
    (47,"上衣(男)",5),
    (48,"裙",5),
    (49,"裤",5),
    (50,"抹胸",6),
    (51,"中衣/裤/裙",6),
    (52,"主腰",6),
    (53,"义领",6),
    (54,"云袜",6),
    (55,"披帛",7),
    (56,"斗篷",7),
    (57,"发带",7),
    (58,"冠巾",7),
    (59,"首饰",7),
    (60,"颈饰",7),
    (61,"胸针",7),
    (62,"手饰",7),
    (63,"革带",7),
    (64,"腰佩宫绦",7),
    (65,"鞋/靴",7),
    (66,"诃子",7),
    (67,"其他",7);

/**汉服商品详情**/
CREATE TABLE hf_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属编号
  lname VARCHAR(512),         #商品名称
  price DECIMAL(10,2),        #价格
  spec VARCHAR(64),           #规格/颜色
  size VARCHAR(12),	          #尺码/大小
  details VARCHAR(1024),      #产品详细说明
  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_Onsale BOOL,	          #是否打折中
  is_Onpostage BOOL,          #是否包邮
  FOREIGN KEY(family_id) REFERENCES hf_list_source(sid)
);
/**汉服商品详情**/
INSERT INTO hf_laptop VALUES
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',279.00,'暗红褙子+黑色褶裙+抹胸','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',279.00,'暗红褙子+黑色褶裙+抹胸','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,3,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',279.00,'藏蓝褙子+藏青褶裙褶裙+抹胸','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,5,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',279.00,'藏蓝褙子+藏青褶裙褶裙+抹胸','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,12,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',120.00,'暗红褙子单件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,1,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',120.00,'暗红褙子单件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,13,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',130.00,'藏青绣花褶裙单件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,5,0,1),
(NULL,5,'河汉涓埃汉服渡鹤影绣花褙子绣花褶裙分码现货拍下24时发货',130.00,'藏青绣花褶裙单件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,6,0,1),

(NULL,2,'她说传统汉服女绣花立领对襟长褶裙（199两件一起拍不参与满减）',199.00,'立领衫','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,8,0,1),
(NULL,2,'她说传统汉服女绣花立领对襟长褶裙（199两件一起拍不参与满减）',199.00,'立领衫','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,19,0,1),
(NULL,2,'她说传统汉服女绣花立领对襟长褶裙（199两件一起拍不参与满减）',79.00,'白色长裙','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,45,0,1),
(NULL,2,'她说传统汉服女绣花立领对襟长褶裙（199两件一起拍不参与满减）',79.00,'白色长裙','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,20,0,1),

(NULL,1,'华姿仪赏 相思 原创设计汉服女装日常印花交领襦裙大袖魏晋风秋新',66.00,'紫色印花交领单件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,201,1,1),
(NULL,1,'华姿仪赏 相思 原创设计汉服女装日常印花交领襦裙大袖魏晋风秋新',66.00,'紫色印花交领单件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,110,1,1),
(NULL,1,'华姿仪赏 相思 原创设计汉服女装日常印花交领襦裙大袖魏晋风秋新',66.00,'粉色纯色交领单件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,120,1,1),
(NULL,1,'华姿仪赏 相思 原创设计汉服女装日常印花交领襦裙大袖魏晋风秋新',66.00,'粉色纯色交领单件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,1,1),

(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'粉红色抹胸','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'粉红色抹胸','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'浅绿色抹胸','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,60,1,1),
(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'浅绿色抹胸','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,1,1),
(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'米白色色抹胸','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,70,1,1),
(NULL,50,'改良汉服女装绣花抹胸吊带背心学生内搭三色汉元素上衣漏肩',68.00,'米白色抹胸','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,16,1,1),

(NULL,4,'她说汉家衣裳汉服女服刺绣逐鹿坦领襦裙三件套外搭现货',98.00,'绿袖口上襦','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,0,1),
(NULL,4,'她说汉家衣裳汉服女服刺绣逐鹿坦领襦裙三件套外搭现货',98.00,'绿袖口上襦','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,0,1),
(NULL,4,'她说汉家衣裳汉服女服刺绣逐鹿坦领襦裙三件套外搭现货',98.00,'黄袖口上襦','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,0,1),
(NULL,4,'她说汉家衣裳汉服女服刺绣逐鹿坦领襦裙三件套外搭现货',98.00,'黄袖口上襦','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,0,1),

(NULL,12,'桑落馆芸萱17夏新品绣花汉元素半壁短褶汉服',9999.00,'无绣花全套预售5月10日发货','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,0,0),
(NULL,12,'桑落馆芸萱17夏新品绣花汉元素半壁短褶汉服',9999.00,'无绣花全套预售5月10日发货','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,60,0,0),
(NULL,12,'桑落馆芸萱17夏新品绣花汉元素半壁短褶汉服',9999.00,'有绣花全套预售5月10日发货','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,0,0),
(NULL,12,'桑落馆芸萱17夏新品绣花汉元素半壁短褶汉服',9999.00,'有绣花全套预售5月10日发货','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,70,0,0),

(NULL,2,'小情诗系列 竹窗晓风双层对襟半臂 觀止茶舍汉服女装日常齐腰襦裙',87.90,'对襟半臂（双层带衬里）现货','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,1,0),
(NULL,2,'小情诗系列 竹窗晓风双层对襟半臂 觀止茶舍汉服女装日常齐腰襦裙',87.90,'对襟半臂（双层带衬里）现货','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,1,0),
(NULL,2,'小情诗系列 竹窗晓风双层对襟半臂 觀止茶舍汉服女装日常齐腰襦裙',87.90,'对襟上襦.定做','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,1,0),
(NULL,2,'小情诗系列 竹窗晓风双层对襟半臂 觀止茶舍汉服女装日常齐腰襦裙',87.90,'对襟上襦.定做','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,1,0),

(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'黑色弓鞋','35','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'黑色弓鞋','36','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'黑色弓鞋','37','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,60,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'黑色弓鞋','38','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'天蓝色弓鞋','35','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'天蓝色弓鞋','36','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'天蓝色弓鞋','37','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,60,1,1),
(NULL,65,'她说汉家衣裳汉服女弓鞋女翘头鞋步生传统绣花布鞋',88.00,'天蓝色弓鞋','38','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,1,1),

(NULL,44,'鹿韵记原创日常女装汉元素套装服饰冬装新款上衣下裙猫仙绣花套装',138.00,'仅下裙一件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,1,1),
(NULL,44,'鹿韵记原创日常女装汉元素套装服饰冬装新款上衣下裙猫仙绣花套装',138.00,'仅下裙一件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,1,1),
(NULL,44,'鹿韵记原创日常女装汉元素套装服饰冬装新款上衣下裙猫仙绣花套装',138.00,'仅上衣一件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,10,1,1),
(NULL,44,'鹿韵记原创日常女装汉元素套装服饰冬装新款上衣下裙猫仙绣花套装',138.00,'仅上衣一件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,60,1,1),

(NULL,46,'鹿韵记复古外套女装日常汉元素冬款大衣保暖连帽咖啡色优雅绣花',288.00,'仅外套一件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,100,0,1),
(NULL,46,'鹿韵记复古外套女装日常汉元素冬款大衣保暖连帽咖啡色优雅绣花',288.00,'仅外套一件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,70,0,1),

(NULL,59,'【扇】西临月耳坠耳夹九州海上牧云记同款 /汉服配饰',15.80,'耳钩一对','默认','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,0,1),
(NULL,59,'【扇】西临月耳坠耳夹九州海上牧云记同款 /汉服配饰',15.80,'耳钩一对','默认','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,0,1),

(NULL,6,'汉尚华莲传统汉服女日常秋冬明制双层毛呢重工绣花立领袄裙马面裙',399.00,'立领袄裙一件','s','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,82,0,1),
(NULL,6,'汉尚华莲传统汉服女日常秋冬明制双层毛呢重工绣花立领袄裙马面裙',399.00,'立领袄裙一件','m','<div class="content_tpl"> <div class="formwork">   <div class="formwork_img"><br></div><div class="formwork_img">    <img alt="" class="" src="img/product/detail/57b15612N81dc489d.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_img">    <img alt="" class="" src="//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg">   </div>  </div>  <div class="formwork">   <div class="formwork_text">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',150123456789,66,0,1);


/**笔记本电脑图片**/
CREATE TABLE xz_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,              #笔记本电脑编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
/**笔记本电脑图片**/
INSERT INTO xz_laptop_pic VALUES
(NULL, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 1, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 1, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 2, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 2, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 2, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 3, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 3, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 3, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 3, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 4, 'img/product/sm/57b12a31N8f4f75a3.jpg','img/product/md/57b12a31N8f4f75a3.jpg','img/product/lg/57b12a31N8f4f75a3.jpg'),
(NULL, 4, 'img/product/sm/57ad359dNd4a6f130.jpg','img/product/md/57ad359dNd4a6f130.jpg','img/product/lg/57ad359dNd4a6f130.jpg'),
(NULL, 4, 'img/product/sm/57ad8846N64ac3c79.jpg','img/product/md/57ad8846N64ac3c79.jpg','img/product/lg/57ad8846N64ac3c79.jpg'),
(NULL, 5, 'img/product/sm/57e3b072N661cd00d.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 5, 'img/product/sm/57e1ff09Nf610fea3.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 5, 'img/product/sm/57e1ff17N286390a9.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 5, 'img/product/sm/57e1ff2fN8a36d0fe.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 5, 'img/product/sm/57e52dffNa4d8ce2c.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 5, 'img/product/sm/57e52e03N4ec367dd.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 5, 'img/product/sm/57e52e06N116974f7.jpg','img/product/md/57e52e06N116974f7.jpg','img/product/lg/57e52e06N116974f7.jpg'),
(NULL, 6, 'img/product/sm/57e3b072N661cd00d.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 6, 'img/product/sm/57e1ff09Nf610fea3.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 6, 'img/product/sm/57e1ff17N286390a9.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 6, 'img/product/sm/57e1ff2fN8a36d0fe.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 6, 'img/product/sm/57e52dffNa4d8ce2c.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 6, 'img/product/sm/57e52e03N4ec367dd.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 6, 'img/product/sm/57e52e06N116974f7.jpg','img/product/md/57e52e06N116974f7.jpg','img/product/lg/57e52e06N116974f7.jpg'),
(NULL, 7, 'img/product/sm/57e3b072N661cd00d.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 7, 'img/product/sm/57e1ff09Nf610fea3.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 7, 'img/product/sm/57e1ff17N286390a9.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 7, 'img/product/sm/57e1ff2fN8a36d0fe.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 7, 'img/product/sm/57e52dffNa4d8ce2c.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 7, 'img/product/sm/57e52e03N4ec367dd.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 7, 'img/product/sm/57e52e06N116974f7.jpg','img/product/md/57e52e06N116974f7.jpg','img/product/lg/57e52e06N116974f7.jpg'),
(NULL, 8, 'img/product/sm/57e3b072N661cd00d.jpg','img/product/md/57e3b072N661cd00d.jpg','img/product/lg/57e3b072N661cd00d.jpg'),
(NULL, 8, 'img/product/sm/57e1ff09Nf610fea3.jpg','img/product/md/57e1ff09Nf610fea3.jpg','img/product/lg/57e1ff09Nf610fea3.jpg'),
(NULL, 8, 'img/product/sm/57e1ff17N286390a9.jpg','img/product/md/57e1ff17N286390a9.jpg','img/product/lg/57e1ff17N286390a9.jpg'),
(NULL, 8, 'img/product/sm/57e1ff2fN8a36d0fe.jpg','img/product/md/57e1ff2fN8a36d0fe.jpg','img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(NULL, 8, 'img/product/sm/57e52dffNa4d8ce2c.jpg','img/product/md/57e52dffNa4d8ce2c.jpg','img/product/lg/57e52dffNa4d8ce2c.jpg'),
(NULL, 8, 'img/product/sm/57e52e03N4ec367dd.jpg','img/product/md/57e52e03N4ec367dd.jpg','img/product/lg/57e52e03N4ec367dd.jpg'),
(NULL, 8, 'img/product/sm/57e52e06N116974f7.jpg','img/product/md/57e52e06N116974f7.jpg','img/product/lg/57e52e06N116974f7.jpg'),
(NULL, 9, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 9, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 9, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 9, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 9, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 9, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 9, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 9, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 10, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 10, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 10, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 10, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 10, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 10, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 10, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 10, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 11, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 11, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 11, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 11, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 11, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 11, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 11, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 11, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 12, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 12, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 12, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 12, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 12, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 12, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 12, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 12, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 13, 'img/product/sm/590a98f9N8039f132.jpg','img/product/md/590a98f9N8039f132.jpg','img/product/lg/590a98f9N8039f132.jpg'),
(NULL, 13, 'img/product/sm/58f46de7N0dafbae3.jpg','img/product/md/58f46de7N0dafbae3.jpg','img/product/lg/58f46de7N0dafbae3.jpg'),
(NULL, 13, 'img/product/sm/58e5c226N4836a223.jpg','img/product/md/58e5c226N4836a223.jpg','img/product/lg/58e5c226N4836a223.jpg'),
(NULL, 13, 'img/product/sm/58dc76d5N8a0947a3.jpg','img/product/md/58dc76d5N8a0947a3.jpg','img/product/lg/58dc76d5N8a0947a3.jpg'),
(NULL, 13, 'img/product/sm/58fd9c54Nec723d68.jpg','img/product/md/58fd9c54Nec723d68.jpg','img/product/lg/58fd9c54Nec723d68.jpg'),
(NULL, 13, 'img/product/sm/58bfc2afNd44b4135.jpg','img/product/md/58bfc2afNd44b4135.jpg','img/product/lg/58bfc2afNd44b4135.jpg'),
(NULL, 14, 'img/product/sm/590a98f9N8039f132.jpg','img/product/md/590a98f9N8039f132.jpg','img/product/lg/590a98f9N8039f132.jpg'),
(NULL, 14, 'img/product/sm/58f46de7N0dafbae3.jpg','img/product/md/58f46de7N0dafbae3.jpg','img/product/lg/58f46de7N0dafbae3.jpg'),
(NULL, 14, 'img/product/sm/58e5c226N4836a223.jpg','img/product/md/58e5c226N4836a223.jpg','img/product/lg/58e5c226N4836a223.jpg'),
(NULL, 14, 'img/product/sm/58dc76d5N8a0947a3.jpg','img/product/md/58dc76d5N8a0947a3.jpg','img/product/lg/58dc76d5N8a0947a3.jpg'),
(NULL, 14, 'img/product/sm/58fd9c54Nec723d68.jpg','img/product/md/58fd9c54Nec723d68.jpg','img/product/lg/58fd9c54Nec723d68.jpg'),
(NULL, 14, 'img/product/sm/58bfc2afNd44b4135.jpg','img/product/md/58bfc2afNd44b4135.jpg','img/product/lg/58bfc2afNd44b4135.jpg'),
(NULL, 15, 'img/product/sm/590a98f9N8039f132.jpg','img/product/md/590a98f9N8039f132.jpg','img/product/lg/590a98f9N8039f132.jpg'),
(NULL, 15, 'img/product/sm/58f46de7N0dafbae3.jpg','img/product/md/58f46de7N0dafbae3.jpg','img/product/lg/58f46de7N0dafbae3.jpg'),
(NULL, 15, 'img/product/sm/58e5c226N4836a223.jpg','img/product/md/58e5c226N4836a223.jpg','img/product/lg/58e5c226N4836a223.jpg'),
(NULL, 15, 'img/product/sm/58dc76d5N8a0947a3.jpg','img/product/md/58dc76d5N8a0947a3.jpg','img/product/lg/58dc76d5N8a0947a3.jpg'),
(NULL, 15, 'img/product/sm/58fd9c54Nec723d68.jpg','img/product/md/58fd9c54Nec723d68.jpg','img/product/lg/58fd9c54Nec723d68.jpg'),
(NULL, 15, 'img/product/sm/58bfc2afNd44b4135.jpg','img/product/md/58bfc2afNd44b4135.jpg','img/product/lg/58bfc2afNd44b4135.jpg'),
(NULL, 16, 'img/product/sm/590a98f9N8039f132.jpg','img/product/md/590a98f9N8039f132.jpg','img/product/lg/590a98f9N8039f132.jpg'),
(NULL, 16, 'img/product/sm/58f46de7N0dafbae3.jpg','img/product/md/58f46de7N0dafbae3.jpg','img/product/lg/58f46de7N0dafbae3.jpg'),
(NULL, 16, 'img/product/sm/58e5c226N4836a223.jpg','img/product/md/58e5c226N4836a223.jpg','img/product/lg/58e5c226N4836a223.jpg'),
(NULL, 16, 'img/product/sm/58dc76d5N8a0947a3.jpg','img/product/md/58dc76d5N8a0947a3.jpg','img/product/lg/58dc76d5N8a0947a3.jpg'),
(NULL, 16, 'img/product/sm/58fd9c54Nec723d68.jpg','img/product/md/58fd9c54Nec723d68.jpg','img/product/lg/58fd9c54Nec723d68.jpg'),
(NULL, 16, 'img/product/sm/58bfc2afNd44b4135.jpg','img/product/md/58bfc2afNd44b4135.jpg','img/product/lg/58bfc2afNd44b4135.jpg'),
(NULL, 17, 'img/product/sm/587f476aNcfbf7869.jpg','img/product/md/587f476aNcfbf7869.jpg','img/product/lg/587f476aNcfbf7869.jpg'),
(NULL, 17, 'img/product/sm/57871083Nefe2d3d6.jpg','img/product/md/57871083Nefe2d3d6.jpg','img/product/lg/57871083Nefe2d3d6.jpg'),
(NULL, 17, 'img/product/sm/57871086N86c8f0ab.jpg','img/product/md/57871086N86c8f0ab.jpg','img/product/lg/57871086N86c8f0ab.jpg'),
(NULL, 17, 'img/product/sm/5787107bN73d05ad5.jpg','img/product/md/5787107bN73d05ad5.jpg','img/product/lg/5787107bN73d05ad5.jpg'),
(NULL, 17, 'img/product/sm/5787109cNaf26e3b0.jpg','img/product/md/5787109cNaf26e3b0.jpg','img/product/lg/5787109cNaf26e3b0.jpg'),
(NULL, 17, 'img/product/sm/578710a0N07795fe5.jpg','img/product/md/578710a0N07795fe5.jpg','img/product/lg/578710a0N07795fe5.jpg'),
(NULL, 17, 'img/product/sm/578710a3Nc498e3ea.jpg','img/product/md/578710a3Nc498e3ea.jpg','img/product/lg/578710a3Nc498e3ea.jpg'),
(NULL, 18, 'img/product/sm/587f476aNcfbf7869.jpg','img/product/md/587f476aNcfbf7869.jpg','img/product/lg/587f476aNcfbf7869.jpg'),
(NULL, 18, 'img/product/sm/57871083Nefe2d3d6.jpg','img/product/md/57871083Nefe2d3d6.jpg','img/product/lg/57871083Nefe2d3d6.jpg'),
(NULL, 18, 'img/product/sm/57871086N86c8f0ab.jpg','img/product/md/57871086N86c8f0ab.jpg','img/product/lg/57871086N86c8f0ab.jpg'),
(NULL, 18, 'img/product/sm/5787107bN73d05ad5.jpg','img/product/md/5787107bN73d05ad5.jpg','img/product/lg/5787107bN73d05ad5.jpg'),
(NULL, 18, 'img/product/sm/5787109cNaf26e3b0.jpg','img/product/md/5787109cNaf26e3b0.jpg','img/product/lg/5787109cNaf26e3b0.jpg'),
(NULL, 18, 'img/product/sm/578710a0N07795fe5.jpg','img/product/md/578710a0N07795fe5.jpg','img/product/lg/578710a0N07795fe5.jpg'),
(NULL, 18, 'img/product/sm/578710a3Nc498e3ea.jpg','img/product/md/578710a3Nc498e3ea.jpg','img/product/lg/578710a3Nc498e3ea.jpg'),
(NULL, 19, 'img/product/sm/57bbc38eN9def8042.jpg','img/product/md/57bbc38eN9def8042.jpg','img/product/lg/57bbc38eN9def8042.jpg'),
(NULL, 19, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg','img/product/md/57ba6a27Nbb8d2dcf.jpg','img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(NULL, 19, 'img/product/sm/57ba6a38N4f4670bd.jpg','img/product/md/57ba6a38N4f4670bd.jpg','img/product/lg/57ba6a38N4f4670bd.jpg'),
(NULL, 19, 'img/product/sm/57ba6a3dN54779e6a.jpg','img/product/md/57ba6a3dN54779e6a.jpg','img/product/lg/57ba6a3dN54779e6a.jpg'),
(NULL, 19, 'img/product/sm/57ba6a47N19af9c97.jpg','img/product/md/57ba6a47N19af9c97.jpg','img/product/lg/57ba6a47N19af9c97.jpg'),
(NULL, 19, 'img/product/sm/57ba6a4cNb83e292a.jpg','img/product/md/57ba6a4cNb83e292a.jpg','img/product/lg/57ba6a4cNb83e292a.jpg'),
(NULL, 19, 'img/product/sm/57ba6a56N1e3e3d63.jpg','img/product/md/57ba6a56N1e3e3d63.jpg','img/product/lg/57ba6a56N1e3e3d63.jpg'),
(NULL, 20, 'img/product/sm/57bbc38eN9def8042.jpg','img/product/md/57bbc38eN9def8042.jpg','img/product/lg/57bbc38eN9def8042.jpg'),
(NULL, 20, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg','img/product/md/57ba6a27Nbb8d2dcf.jpg','img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(NULL, 20, 'img/product/sm/57ba6a38N4f4670bd.jpg','img/product/md/57ba6a38N4f4670bd.jpg','img/product/lg/57ba6a38N4f4670bd.jpg'),
(NULL, 20, 'img/product/sm/57ba6a3dN54779e6a.jpg','img/product/md/57ba6a3dN54779e6a.jpg','img/product/lg/57ba6a3dN54779e6a.jpg'),
(NULL, 20, 'img/product/sm/57ba6a47N19af9c97.jpg','img/product/md/57ba6a47N19af9c97.jpg','img/product/lg/57ba6a47N19af9c97.jpg'),
(NULL, 20, 'img/product/sm/57ba6a4cNb83e292a.jpg','img/product/md/57ba6a4cNb83e292a.jpg','img/product/lg/57ba6a4cNb83e292a.jpg'),
(NULL, 20, 'img/product/sm/57ba6a56N1e3e3d63.jpg','img/product/md/57ba6a56N1e3e3d63.jpg','img/product/lg/57ba6a56N1e3e3d63.jpg'),
(NULL, 21, 'img/product/sm/57bbc38eN9def8042.jpg','img/product/md/57bbc38eN9def8042.jpg','img/product/lg/57bbc38eN9def8042.jpg'),
(NULL, 21, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg','img/product/md/57ba6a27Nbb8d2dcf.jpg','img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(NULL, 21, 'img/product/sm/57ba6a38N4f4670bd.jpg','img/product/md/57ba6a38N4f4670bd.jpg','img/product/lg/57ba6a38N4f4670bd.jpg'),
(NULL, 21, 'img/product/sm/57ba6a3dN54779e6a.jpg','img/product/md/57ba6a3dN54779e6a.jpg','img/product/lg/57ba6a3dN54779e6a.jpg'),
(NULL, 21, 'img/product/sm/57ba6a47N19af9c97.jpg','img/product/md/57ba6a47N19af9c97.jpg','img/product/lg/57ba6a47N19af9c97.jpg'),
(NULL, 21, 'img/product/sm/57ba6a4cNb83e292a.jpg','img/product/md/57ba6a4cNb83e292a.jpg','img/product/lg/57ba6a4cNb83e292a.jpg'),
(NULL, 21, 'img/product/sm/57ba6a56N1e3e3d63.jpg','img/product/md/57ba6a56N1e3e3d63.jpg','img/product/lg/57ba6a56N1e3e3d63.jpg'),
(NULL, 22, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 22, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 22, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 22, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 22, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 22, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 22, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 23, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 23, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 23, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 23, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 23, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 23, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 23, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 24, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 24, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 24, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 24, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 24, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 24, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 24, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 25, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 25, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 25, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 25, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 25, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 25, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 25, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 26, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 26, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 26, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 26, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 26, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 26, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 26, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 27, 'img/product/sm/5913f8ffN49fa143c.jpg','img/product/md/5913f8ffN49fa143c.jpg','img/product/lg/5913f8ffN49fa143c.jpg'),
(NULL, 27, 'img/product/sm/5913f903Nbffaa4fd.jpg','img/product/md/5913f903Nbffaa4fd.jpg','img/product/lg/5913f903Nbffaa4fd.jpg'),
(NULL, 27, 'img/product/sm/5913f907Ncbc65469.jpg','img/product/md/5913f907Ncbc65469.jpg','img/product/lg/5913f907Ncbc65469.jpg'),
(NULL, 27, 'img/product/sm/5913f90bN1b563f42.jpg','img/product/md/5913f90bN1b563f42.jpg','img/product/lg/5913f90bN1b563f42.jpg'),
(NULL, 27, 'img/product/sm/5913f90fN99370675.jpg','img/product/md/5913f90fN99370675.jpg','img/product/lg/5913f90fN99370675.jpg'),
(NULL, 27, 'img/product/sm/5913f93bNe4d2b3e5.jpg','img/product/md/5913f93bNe4d2b3e5.jpg','img/product/lg/5913f93bNe4d2b3e5.jpg'),
(NULL, 27, 'img/product/sm/5913f93fNfd79b4fc.jpg','img/product/md/5913f93fNfd79b4fc.jpg','img/product/lg/5913f93fNfd79b4fc.jpg'),
(NULL, 28, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 28, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 28, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 28, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 28, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 28, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 28, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 28, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 29, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 29, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 29, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 29, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 29, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 29, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 29, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 29, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 30, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 30, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 30, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 30, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 30, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 30, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 30, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 30, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 31, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 31, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 31, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 31, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 31, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 31, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 31, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 31, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 32, 'img/product/sm/584b5678Nbc9f1e70.jpg','img/product/md/584b5678Nbc9f1e70.jpg','img/product/lg/584b5678Nbc9f1e70.jpg'),
(NULL, 32, 'img/product/sm/584b567dNd9c58341.jpg','img/product/md/584b567dNd9c58341.jpg','img/product/lg/584b567dNd9c58341.jpg'),
(NULL, 32, 'img/product/sm/5819a0ebNefd901bc.jpg','img/product/md/5819a0ebNefd901bc.jpg','img/product/lg/5819a0ebNefd901bc.jpg'),
(NULL, 32, 'img/product/sm/5819a106Necf0abb8.jpg','img/product/md/5819a106Necf0abb8.jpg','img/product/lg/5819a106Necf0abb8.jpg'),
(NULL, 32, 'img/product/sm/5819a10bN2ea5c8e0.jpg','img/product/md/5819a10bN2ea5c8e0.jpg','img/product/lg/5819a10bN2ea5c8e0.jpg'),
(NULL, 32, 'img/product/sm/5819a10fNd0f96a03.jpg','img/product/md/5819a10fNd0f96a03.jpg','img/product/lg/5819a10fNd0f96a03.jpg'),
(NULL, 32, 'img/product/sm/5819a114Ne0cd75db.jpg','img/product/md/5819a114Ne0cd75db.jpg','img/product/lg/5819a114Ne0cd75db.jpg'),
(NULL, 32, 'img/product/sm/5819a133N03021b26.jpg','img/product/md/5819a133N03021b26.jpg','img/product/lg/5819a133N03021b26.jpg'),
(NULL, 33, 'img/product/sm/58985861N615a3581.jpg','img/product/md/58985861N615a3581.jpg','img/product/lg/58985861N615a3581.jpg'),
(NULL, 33, 'img/product/sm/58985867Nf8909d49.jpg','img/product/md/58985867Nf8909d49.jpg','img/product/lg/58985867Nf8909d49.jpg'),
(NULL, 33, 'img/product/sm/5898586cNe235284b.jpg','img/product/md/5898586cNe235284b.jpg','img/product/lg/5898586cNe235284b.jpg'),
(NULL, 33, 'img/product/sm/58985881N0a78dea2.jpg','img/product/md/58985881N0a78dea2.jpg','img/product/lg/58985881N0a78dea2.jpg'),
(NULL, 33, 'img/product/sm/58985883Nd4aec745.jpg','img/product/md/58985883Nd4aec745.jpg','img/product/lg/58985883Nd4aec745.jpg'),
(NULL, 33, 'img/product/sm/5836b979N85c3852b.jpg','img/product/md/5836b979N85c3852b.jpg','img/product/lg/5836b979N85c3852b.jpg'),
(NULL, 33, 'img/product/sm/5836b981Nd60fd02a.jpg','img/product/md/5836b981Nd60fd02a.jpg','img/product/lg/5836b981Nd60fd02a.jpg'),
(NULL, 34, 'img/product/sm/58985861N615a3581.jpg','img/product/md/58985861N615a3581.jpg','img/product/lg/58985861N615a3581.jpg'),
(NULL, 34, 'img/product/sm/58985867Nf8909d49.jpg','img/product/md/58985867Nf8909d49.jpg','img/product/lg/58985867Nf8909d49.jpg'),
(NULL, 34, 'img/product/sm/5898586cNe235284b.jpg','img/product/md/5898586cNe235284b.jpg','img/product/lg/5898586cNe235284b.jpg'),
(NULL, 34, 'img/product/sm/58985881N0a78dea2.jpg','img/product/md/58985881N0a78dea2.jpg','img/product/lg/58985881N0a78dea2.jpg'),
(NULL, 34, 'img/product/sm/58985883Nd4aec745.jpg','img/product/md/58985883Nd4aec745.jpg','img/product/lg/58985883Nd4aec745.jpg'),
(NULL, 34, 'img/product/sm/5836b979N85c3852b.jpg','img/product/md/5836b979N85c3852b.jpg','img/product/lg/5836b979N85c3852b.jpg'),
(NULL, 34, 'img/product/sm/5836b981Nd60fd02a.jpg','img/product/md/5836b981Nd60fd02a.jpg','img/product/lg/5836b981Nd60fd02a.jpg'),
(NULL, 35, 'img/product/sm/58985861N615a3581.jpg','img/product/md/58985861N615a3581.jpg','img/product/lg/58985861N615a3581.jpg'),
(NULL, 35, 'img/product/sm/58985867Nf8909d49.jpg','img/product/md/58985867Nf8909d49.jpg','img/product/lg/58985867Nf8909d49.jpg'),
(NULL, 35, 'img/product/sm/5898586cNe235284b.jpg','img/product/md/5898586cNe235284b.jpg','img/product/lg/5898586cNe235284b.jpg'),
(NULL, 35, 'img/product/sm/58985881N0a78dea2.jpg','img/product/md/58985881N0a78dea2.jpg','img/product/lg/58985881N0a78dea2.jpg'),
(NULL, 35, 'img/product/sm/58985883Nd4aec745.jpg','img/product/md/58985883Nd4aec745.jpg','img/product/lg/58985883Nd4aec745.jpg'),
(NULL, 35, 'img/product/sm/5836b979N85c3852b.jpg','img/product/md/5836b979N85c3852b.jpg','img/product/lg/5836b979N85c3852b.jpg'),
(NULL, 35, 'img/product/sm/5836b981Nd60fd02a.jpg','img/product/md/5836b981Nd60fd02a.jpg','img/product/lg/5836b981Nd60fd02a.jpg'),
(NULL, 36, 'img/product/sm/58985861N615a3581.jpg','img/product/md/58985861N615a3581.jpg','img/product/lg/58985861N615a3581.jpg'),
(NULL, 36, 'img/product/sm/58985867Nf8909d49.jpg','img/product/md/58985867Nf8909d49.jpg','img/product/lg/58985867Nf8909d49.jpg'),
(NULL, 36, 'img/product/sm/5898586cNe235284b.jpg','img/product/md/5898586cNe235284b.jpg','img/product/lg/5898586cNe235284b.jpg'),
(NULL, 36, 'img/product/sm/58985881N0a78dea2.jpg','img/product/md/58985881N0a78dea2.jpg','img/product/lg/58985881N0a78dea2.jpg'),
(NULL, 36, 'img/product/sm/58985883Nd4aec745.jpg','img/product/md/58985883Nd4aec745.jpg','img/product/lg/58985883Nd4aec745.jpg'),
(NULL, 36, 'img/product/sm/5836b979N85c3852b.jpg','img/product/md/5836b979N85c3852b.jpg','img/product/lg/5836b979N85c3852b.jpg'),
(NULL, 36, 'img/product/sm/5836b981Nd60fd02a.jpg','img/product/md/5836b981Nd60fd02a.jpg','img/product/lg/5836b981Nd60fd02a.jpg'),
(NULL, 37, 'img/product/sm/58985861N615a3581.jpg','img/product/md/58985861N615a3581.jpg','img/product/lg/58985861N615a3581.jpg'),
(NULL, 37, 'img/product/sm/58985867Nf8909d49.jpg','img/product/md/58985867Nf8909d49.jpg','img/product/lg/58985867Nf8909d49.jpg'),
(NULL, 37, 'img/product/sm/5898586cNe235284b.jpg','img/product/md/5898586cNe235284b.jpg','img/product/lg/5898586cNe235284b.jpg'),
(NULL, 37, 'img/product/sm/58985881N0a78dea2.jpg','img/product/md/58985881N0a78dea2.jpg','img/product/lg/58985881N0a78dea2.jpg'),
(NULL, 37, 'img/product/sm/58985883Nd4aec745.jpg','img/product/md/58985883Nd4aec745.jpg','img/product/lg/58985883Nd4aec745.jpg'),
(NULL, 37, 'img/product/sm/5836b979N85c3852b.jpg','img/product/md/5836b979N85c3852b.jpg','img/product/lg/5836b979N85c3852b.jpg'),
(NULL, 37, 'img/product/sm/5836b981Nd60fd02a.jpg','img/product/md/5836b981Nd60fd02a.jpg','img/product/lg/5836b981Nd60fd02a.jpg'),
(NULL, 38, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 38, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 38, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 38, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 38, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 38, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 38, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 38, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg'),
(NULL, 39, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 39, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 39, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 39, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 39, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 39, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 39, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 39, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg'),
(NULL, 40, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 40, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 40, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 40, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 40, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 40, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 40, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 40, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg'),
(NULL, 41, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 41, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 41, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 41, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 41, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 41, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 41, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 41, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg'),
(NULL, 42, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 42, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 42, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 42, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 42, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 42, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 42, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 42, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg'),
(NULL, 43, 'img/product/sm/58a2c667Ne2b5cb73.jpg','img/product/md/58a2c667Ne2b5cb73.jpg','img/product/lg/58a2c667Ne2b5cb73.jpg'),
(NULL, 43, 'img/product/sm/58a2c668N800be261.jpg','img/product/md/58a2c668N800be261.jpg','img/product/lg/58a2c668N800be261.jpg'),
(NULL, 43, 'img/product/sm/58a2c668N0159a26f.jpg','img/product/md/58a2c668N0159a26f.jpg','img/product/lg/58a2c668N0159a26f.jpg'),
(NULL, 43, 'img/product/sm/58a2c669Nf884ac31.jpg','img/product/md/58a2c669Nf884ac31.jpg','img/product/lg/58a2c669Nf884ac31.jpg'),
(NULL, 43, 'img/product/sm/58a2c668N7293a0d1.jpg','img/product/md/58a2c668N7293a0d1.jpg','img/product/lg/58a2c668N7293a0d1.jpg'),
(NULL, 43, 'img/product/sm/58a2c669N4f92f8cb.jpg','img/product/md/58a2c669N4f92f8cb.jpg','img/product/lg/58a2c669N4f92f8cb.jpg'),
(NULL, 43, 'img/product/sm/58a2c668N0be41fb0.jpg','img/product/md/58a2c668N0be41fb0.jpg','img/product/lg/58a2c668N0be41fb0.jpg'),
(NULL, 43, 'img/product/sm/58a2c66aNcd10ee32.jpg','img/product/md/58a2c66aNcd10ee32.jpg','img/product/lg/58a2c66aNcd10ee32.jpg');

/**收货地址信息**/
CREATE TABLE xz_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目**/
CREATE TABLE xz_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,      #用户编号
  lid INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单**/
CREATE TABLE xz_order(
  oid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  aid INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单**/
CREATE TABLE xz_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  oid INT,           #订单编号
  lid INT,         #产品编号
  count INT               #购买数量
);

/**用户信息**/
CREATE TABLE xz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
/**用户信息**/
INSERT INTO xz_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
