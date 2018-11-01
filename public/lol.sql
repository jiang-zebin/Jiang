SET NAMES UTF8;
DROP DATABASE IF EXISTS lol;
CREATE DATABASE lol CHARSET=UTF8;
USE lol;

DROP TABLE IF EXISTS lol_user;
CREATE TABLE lol_user(                     #用户表
  uid INT PRIMARY KEY AUTO_INCREMENT,
  qqnumber VARCHAR(32),                    #QQ号
  nname VARCHAR(32),                       #昵称
  upwd VARCHAR(32),
  phone VARCHAR(16),
  email VARCHAR(64),
  user_name VARCHAR(32),
  gender INT,
  user_avatar VARCHAR(128)                 #头像路径
);

DROP TABLE IF EXISTS lol_hero;             #英雄头像昵称表
CREATE TABLE lol_hero(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(32),                       #英雄昵称
  real_name_cn VARCHAR(32),                #英雄中文真名
  real_name_en VARCHAR(32),                #英雄英文真名
  hero_avatar VARCHAR(128),                #英雄默认头像
  hero_type VARCHAR(32)                    #英雄类型
);

DROP TABLE IF EXISTS lol_hero_details;
CREATE TABLE lol_hero_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(32),                        #英雄昵称
  real_name VARCHAR(32),                    #英雄真名
  ability_value VARCHAR(64),                #英雄能力值
  hero_avatars VARCHAR(128),                #英雄皮肤对应头像
  skins VARCHAR(128),                       #英雄皮肤
  skill_name VARCHAR(32),                   #技能名
  skill_detail VARCHAR(256)                 #技能详情
);

INSERT INTO lol_user VALUES(NULL,'741774490','jiang','jiang0307','13580305979','741774490@qq.com',NULL,NULL,NULL);
INSERT INTO lol_user VALUES(NULL,'2279109466','zuo','19931223a','13826063048','2279109466@qq.com',NULL,NULL,NULL);

INSERT INTO lol_hero VALUES(NULL,'暗裔剑魔','亚托克斯','Aatrox','https://ossweb-img.qq.com/images/lol/img/champion/Aatrox.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'九尾妖狐','阿狸','Ahri','https://ossweb-img.qq.com/images/lol/img/champion/Ahri.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'离群之刺','阿卡丽','Akali','https://ossweb-img.qq.com/images/lol/img/champion/Akali.png','All Assassin');
INSERT INTO lol_hero VALUES(NULL,'牛头酋长','阿利斯塔','Alistar','https://ossweb-img.qq.com/images/lol/img/champion/Alistar.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'殇之木乃伊','阿木木','Amumu','https://ossweb-img.qq.com/images/lol/img/champion/Amumu.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'冰晶凤凰','艾尼维亚','Anivia','https://ossweb-img.qq.com/images/lol/img/champion/Anivia.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'黑暗之女','安妮','Annie','https://ossweb-img.qq.com/images/lol/img/champion/Annie.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'寒冰射手','艾希','Ashe','https://ossweb-img.qq.com/images/lol/img/champion/Ashe.png','All Marksman Support');
INSERT INTO lol_hero VALUES(NULL,'铸星龙王','奥瑞利安·索尔','AurelionSol','https://ossweb-img.qq.com/images/lol/img/champion/AurelionSol.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'沙漠皇帝','阿兹尔','Azir','https://ossweb-img.qq.com/images/lol/img/champion/Azir.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'星界游神','巴德','Bard','https://ossweb-img.qq.com/images/lol/img/champion/Bard.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'蒸汽机器人','布里茨','Blitzcrank','https://ossweb-img.qq.com/images/lol/img/champion/Blitzcrank.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'复仇焰魂','布兰德','Brand','https://ossweb-img.qq.com/images/lol/img/champion/Brand.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'弗雷尔卓德之心','布隆','Braum','https://ossweb-img.qq.com/images/lol/img/champion/Braum.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'皮城女警','凯特琳','Caitlyn','https://ossweb-img.qq.com/images/lol/img/champion/Caitlyn.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'青钢影','卡蜜尔','Camille','https://ossweb-img.qq.com/images/lol/img/champion/Camille.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'魔蛇之拥','卡西奥佩娅','Cassiopeia','https://ossweb-img.qq.com/images/lol/img/champion/Cassiopeia.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空恐惧','科加斯','Chogath','https://ossweb-img.qq.com/images/lol/img/champion/Chogath.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'英勇投弹手','库奇','Corki','https://ossweb-img.qq.com/images/lol/img/champion/Corki.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'诺克萨斯之手','德莱厄斯','Darius','https://ossweb-img.qq.com/images/lol/img/champion/Darius.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'皎月女神','黛安娜','Diana','https://ossweb-img.qq.com/images/lol/img/champion/Diana.png','All Fighter Mage');
INSERT INTO lol_hero VALUES(NULL,'荣耀行刑官','德莱文','Draven','https://ossweb-img.qq.com/images/lol/img/champion/Draven.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'祖安狂人','蒙多医生','DrMundo','https://ossweb-img.qq.com/images/lol/img/champion/DrMundo.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'时间刺客','艾克','Ekko','https://ossweb-img.qq.com/images/lol/img/champion/Ekko.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'蜘蛛女皇','伊莉丝','Elise','https://ossweb-img.qq.com/images/lol/img/champion/Elise.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'痛苦之拥','伊芙琳','Evelynn','https://ossweb-img.qq.com/images/lol/img/champion/Evelynn.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'探险家','伊泽瑞尔','Ezreal','https://ossweb-img.qq.com/images/lol/img/champion/Ezreal.png','All Marksman Mage');
INSERT INTO lol_hero VALUES(NULL,'末日使者','费德提克','Fiddlesticks','https://ossweb-img.qq.com/images/lol/img/champion/Fiddlesticks.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'无双剑姬','菲奥娜','Fiora','https://ossweb-img.qq.com/images/lol/img/champion/Fiora.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'潮汐海灵','菲兹','Fizz','https://ossweb-img.qq.com/images/lol/img/champion/Fizz.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'正义巨像','加里奥','Galio','https://ossweb-img.qq.com/images/lol/img/champion/Galio.png','All Mage Tank');
INSERT INTO lol_hero VALUES(NULL,'海洋之灾','普朗克','Gangplank','https://ossweb-img.qq.com/images/lol/img/champion/Gangplank.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚之力','盖伦','Garen','https://ossweb-img.qq.com/images/lol/img/champion/Garen.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'迷失之牙','纳尔','Gnar','https://ossweb-img.qq.com/images/lol/img/champion/Gnar.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'酒桶','古拉加斯','Gragas','https://ossweb-img.qq.com/images/lol/img/champion/Gragas.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'法外狂徒','格雷福斯','Graves','https://ossweb-img.qq.com/images/lol/img/champion/Graves.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'战争之影','赫卡里姆','Hecarim','https://ossweb-img.qq.com/images/lol/img/champion/Hecarim.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'大发明家','黑默丁格','Heimerdinger','https://ossweb-img.qq.com/images/lol/img/champion/Heimerdinger.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'海兽祭司','俄洛伊','Illaoi','https://ossweb-img.qq.com/images/lol/img/champion/Illaoi.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'刀锋舞者','艾瑞莉娅','Irelia','https://ossweb-img.qq.com/images/lol/img/champion/Irelia.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'翠神','艾翁','Ivern','https://ossweb-img.qq.com/images/lol/img/champion/Ivern.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'风暴之怒','迦娜','Janna','https://ossweb-img.qq.com/images/lol/img/champion/Janna.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚皇子','嘉文四世','JarvanIV','https://ossweb-img.qq.com/images/lol/img/champion/JarvanIV.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'武器大师','贾克斯','Jax','https://ossweb-img.qq.com/images/lol/img/champion/Jax.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'未来守护者','杰斯','Jayce','https://ossweb-img.qq.com/images/lol/img/champion/Jayce.png','All Marksman Fighter');
INSERT INTO lol_hero VALUES(NULL,'戏命师','烬','Jhin','https://ossweb-img.qq.com/images/lol/img/champion/Jhin.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'暴走萝莉','金克丝','Jinx','https://ossweb-img.qq.com/images/lol/img/champion/Jinx.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'虚空之女','卡莎','Kaisa','https://ossweb-img.qq.com/images/lol/img/champion/Kaisa.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'复仇之矛','卡莉丝塔','Kalista','https://ossweb-img.qq.com/images/lol/img/champion/Kalista.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'天启者','卡尔玛','Karma','https://ossweb-img.qq.com/images/lol/img/champion/Karma.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'死亡颂唱者','卡尔萨斯','Karthus','https://ossweb-img.qq.com/images/lol/img/champion/Karthus.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空行者','卡萨丁','Kassadin','https://ossweb-img.qq.com/images/lol/img/champion/Kassadin.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'不祥之刃','卡特琳娜','Katarina','https://ossweb-img.qq.com/images/lol/img/champion/Katarina.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'审判天使','凯尔','Kayle','https://ossweb-img.qq.com/images/lol/img/champion/Kayle.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'影流之镰','凯隐','Kayn','https://ossweb-img.qq.com/images/lol/img/champion/Kayn.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'狂暴之心','凯南','Kennen','https://ossweb-img.qq.com/images/lol/img/champion/Kennen.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'虚空掠夺者','卡兹克','Khazix','https://ossweb-img.qq.com/images/lol/img/champion/Khazix.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'永猎双子','千珏','Kindred','https://ossweb-img.qq.com/images/lol/img/champion/Kindred.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'暴怒骑士','克烈','Kled','https://ossweb-img.qq.com/images/lol/img/champion/Kled.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'深渊巨口','克格莫','KogMaw','https://ossweb-img.qq.com/images/lol/img/champion/KogMaw.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'诡术妖姬','乐芙兰','Leblanc','https://ossweb-img.qq.com/images/lol/img/champion/Leblanc.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'盲僧','李青','LeeSin','https://ossweb-img.qq.com/images/lol/img/champion/LeeSin.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'曙光女神','蕾欧娜','Leona','https://ossweb-img.qq.com/images/lol/img/champion/Leona.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'冰霜女巫','丽桑卓','Lissandra','https://ossweb-img.qq.com/images/lol/img/champion/Lissandra.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'圣枪游侠','卢锡安','Lucian','https://ossweb-img.qq.com/images/lol/img/champion/Lucian.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'仙灵女巫','璐璐','Lulu','https://ossweb-img.qq.com/images/lol/img/champion/Lulu.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'光辉女郎','拉克丝','Lux','https://ossweb-img.qq.com/images/lol/img/champion/Lux.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'熔岩巨兽','墨菲特','Malphite','https://ossweb-img.qq.com/images/lol/img/champion/Malphite.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'虚空先知','玛尔扎哈','Malzahar','https://ossweb-img.qq.com/images/lol/img/champion/Malzahar.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'扭曲树精','茂凯','Maokai','https://ossweb-img.qq.com/images/lol/img/champion/Maokai.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'无极剑圣','易','MasterYi','https://ossweb-img.qq.com/images/lol/img/champion/MasterYi.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'赏金猎人','厄运小姐','MissFortune','https://ossweb-img.qq.com/images/lol/img/champion/MissFortune.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'齐天大圣','孙悟空','MonkeyKing','https://ossweb-img.qq.com/images/lol/img/champion/MonkeyKing.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'铁铠冥魂','莫德凯撒','Mordekaiser','https://ossweb-img.qq.com/images/lol/img/champion/Mordekaiser.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'堕落天使','莫甘娜','Morgana','https://ossweb-img.qq.com/images/lol/img/champion/Morgana.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'唤潮鲛姬','娜美','Nami','https://ossweb-img.qq.com/images/lol/img/champion/Nami.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'沙漠死神','内瑟斯','Nasus','https://ossweb-img.qq.com/images/lol/img/champion/Nasus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'深海泰坦','诺提勒斯','Nautilus','https://ossweb-img.qq.com/images/lol/img/champion/Nautilus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'狂野女猎手','奈德丽','Nidalee','https://ossweb-img.qq.com/images/lol/img/champion/Nidalee.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'永恒梦魇','魔腾','Nocturne','https://ossweb-img.qq.com/images/lol/img/champion/Nocturne.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'雪原双子','努努和威朗普','Nunu','https://ossweb-img.qq.com/images/lol/img/champion/Nunu.png','All Fighter Tank');
INSERT INTO lol_hero VALUES(NULL,'狂战士','奥拉夫','Olaf','https://ossweb-img.qq.com/images/lol/img/champion/Olaf.png','All Fighter Tank');
INSERT INTO lol_hero VALUES(NULL,'发条魔灵','奥莉安娜','Orianna','https://ossweb-img.qq.com/images/lol/img/champion/Orianna.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'山隐之焰','奥恩','Ornn','https://ossweb-img.qq.com/images/lol/img/champion/Ornn.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'战争之王','潘森','Pantheon','https://ossweb-img.qq.com/images/lol/img/champion/Pantheon.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'圣锤之毅','波比','Poppy','https://ossweb-img.qq.com/images/lol/img/champion/Poppy.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'血港鬼影','派克','Pyke','https://ossweb-img.qq.com/images/lol/img/champion/Pyke.png','All Support Assassin');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚之翼','奎因','Quinn','https://ossweb-img.qq.com/images/lol/img/champion/Quinn.png','All Marksman Fighter');
INSERT INTO lol_hero VALUES(NULL,'幻翎','洛','Rakan','https://ossweb-img.qq.com/images/lol/img/champion/Rakan.png','All Support');
INSERT INTO lol_hero VALUES(NULL,'披甲龙龟','拉莫斯','Rammus','https://ossweb-img.qq.com/images/lol/img/champion/Rammus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'虚空遁地兽','雷克塞','RekSai','https://ossweb-img.qq.com/images/lol/img/champion/RekSai.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'荒漠屠夫','雷克顿','Renekton','https://ossweb-img.qq.com/images/lol/img/champion/Renekton.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'傲之追猎者','雷恩加尔','Rengar','https://ossweb-img.qq.com/images/lol/img/champion/Rengar.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'放逐之刃','锐雯','Riven','https://ossweb-img.qq.com/images/lol/img/champion/Riven.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'机械公敌','兰博','Rumble','https://ossweb-img.qq.com/images/lol/img/champion/Rumble.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'符文法师','瑞兹','Ryze','https://ossweb-img.qq.com/images/lol/img/champion/Ryze.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'北地之怒','瑟庄妮','Sejuani','https://ossweb-img.qq.com/images/lol/img/champion/Sejuani.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'恶魔小丑','萨科','Shaco','https://ossweb-img.qq.com/images/lol/img/champion/Shaco.png','All Assassin');
INSERT INTO lol_hero VALUES(NULL,'暮光之眼','慎','Shen','https://ossweb-img.qq.com/images/lol/img/champion/Shen.png','All Tank');
INSERT INTO lol_hero VALUES(NULL,'龙血武姬','希瓦娜','Shyvana','https://ossweb-img.qq.com/images/lol/img/champion/Shyvana.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'炼金术士','辛吉德','Singed','https://ossweb-img.qq.com/images/lol/img/champion/Singed.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'亡灵战神','赛恩','Sion','https://ossweb-img.qq.com/images/lol/img/champion/Sion.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'战争女神','希维尔','Sivir','https://ossweb-img.qq.com/images/lol/img/champion/Sivir.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'水晶先锋','斯卡纳','Skarner','https://ossweb-img.qq.com/images/lol/img/champion/Skarner.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'琴瑟仙女','娑娜','Sona','https://ossweb-img.qq.com/images/lol/img/champion/Sona.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'众星之子','索拉卡','Soraka','https://ossweb-img.qq.com/images/lol/img/champion/Soraka.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'诺克萨斯统领','斯维因','Swain','https://ossweb-img.qq.com/images/lol/img/champion/Swain.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'暗黑元首','辛德拉','Syndra','https://ossweb-img.qq.com/images/lol/img/champion/Syndra.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'河流之王','塔姆','TahmKench','https://ossweb-img.qq.com/images/lol/img/champion/TahmKench.png','All Support Tank');
INSERT INTO lol_hero VALUES(NULL,'岩雀','塔莉垭','Taliyah','https://ossweb-img.qq.com/images/lol/img/champion/Taliyah.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'刀锋之影','泰隆','Talon','https://ossweb-img.qq.com/images/lol/img/champion/Talon.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'瓦洛兰之盾','塔里克','Taric','https://ossweb-img.qq.com/images/lol/img/champion/Taric.png','All Support Fighter');
INSERT INTO lol_hero VALUES(NULL,'迅捷斥候','提莫','Teemo','https://ossweb-img.qq.com/images/lol/img/champion/Teemo.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'魂锁典狱长','锤石','Thresh','https://ossweb-img.qq.com/images/lol/img/champion/Thresh.png','All Fighter Support');
INSERT INTO lol_hero VALUES(NULL,'麦林炮手','崔丝塔娜','Tristana','https://ossweb-img.qq.com/images/lol/img/champion/Tristana.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'巨魔之王','特朗德尔','Trundle','https://ossweb-img.qq.com/images/lol/img/champion/Trundle.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'蛮族之王','泰达米尔','Tryndamere','https://ossweb-img.qq.com/images/lol/img/champion/Tryndamere.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'卡牌大师','崔斯特','TwistedFate','https://ossweb-img.qq.com/images/lol/img/champion/TwistedFate.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'瘟疫之源','图奇','Twitch','https://ossweb-img.qq.com/images/lol/img/champion/Twitch.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'兽灵行者','乌迪尔','Udyr','https://ossweb-img.qq.com/images/lol/img/champion/Udyr.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'无畏战车','厄加特','Urgot','https://ossweb-img.qq.com/images/lol/img/champion/Urgot.png','All Fighter Marksman');
INSERT INTO lol_hero VALUES(NULL,'惩戒之箭','韦鲁斯','Varus','https://ossweb-img.qq.com/images/lol/img/champion/Varus.png','All Marksman Mage');
INSERT INTO lol_hero VALUES(NULL,'暗夜猎手','薇恩','Vayne','https://ossweb-img.qq.com/images/lol/img/champion/Vayne.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'邪恶小法师','维迦','Veigar','https://ossweb-img.qq.com/images/lol/img/champion/Veigar.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空之眼','维克兹','Velkoz','https://ossweb-img.qq.com/images/lol/img/champion/Velkoz.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'皮城执法官','蔚','Vi','https://ossweb-img.qq.com/images/lol/img/champion/Vi.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'机械先驱','维克托','Viktor','https://ossweb-img.qq.com/images/lol/img/champion/Viktor.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'猩红收割者','弗拉基米尔','Vladimir','https://ossweb-img.qq.com/images/lol/img/champion/Vladimir.png','All Mage Tank');
INSERT INTO lol_hero VALUES(NULL,'雷霆咆哮','沃利贝尔','Volibear','https://ossweb-img.qq.com/images/lol/img/champion/Volibear.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'祖安怒兽','沃里克','Warwick','https://ossweb-img.qq.com/images/lol/img/champion/Warwick.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'逆羽','霞','Xayah','https://ossweb-img.qq.com/images/lol/img/champion/Xayah.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'远古巫灵','泽拉斯','Xerath','https://ossweb-img.qq.com/images/lol/img/champion/Xerath.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'德邦总管','赵信','XinZhao','https://ossweb-img.qq.com/images/lol/img/champion/XinZhao.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'疾风剑豪','亚索','Yasuo','https://ossweb-img.qq.com/images/lol/img/champion/Yasuo.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'牧魂人','约里克','Yorick','https://ossweb-img.qq.com/images/lol/img/champion/Yorick.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'生化魔人','扎克','Zac','https://ossweb-img.qq.com/images/lol/img/champion/Zac.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'影流之主','劫','Zed','https://ossweb-img.qq.com/images/lol/img/champion/Zed.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'爆破鬼才','吉格斯','Ziggs','https://ossweb-img.qq.com/images/lol/img/champion/Ziggs.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'时光守护者','基兰','Zilean','https://ossweb-img.qq.com/images/lol/img/champion/Zilean.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'暮光星灵','佐伊','Zoe','https://ossweb-img.qq.com/images/lol/img/champion/Zoe.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'荆棘之兴','婕拉','Zyra','https://ossweb-img.qq.com/images/lol/img/champion/Zyra.png','All Mage Support');

DROP TABLE IF EXISTS lol_mini;
CREATE TABLE lol_mini(                     #小程序用户表
  mid INT PRIMARY KEY AUTO_INCREMENT,
  id VARCHAR(128),
  phone VARCHAR(16),
  email VARCHAR(64),
  user_name VARCHAR(32),
  gender INT,
  address VARCHAR(1024)
);

DROP TABLE IF EXISTS lol_product;
CREATE TABLE lol_product(                   #商品列表
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pname VARCHAR(128),
  price VARCHAR(8),
  game_currency VARCHAR(8),
  img_url VARCHAR(256),
  isSales BOOLEAN,
  price_sale VARCHAR(8),
  type VARCHAR(64)
);

INSERT INTO lol_product VALUES(NULL,'放逐之刃 锐雯',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big92000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'疾风剑豪 亚索',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big157000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'影流之主 劫',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big238000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'暗裔剑魔 亚托克斯',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big266000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'虚空之女 卡莎',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big145000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'暴走萝莉 金克丝',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big222000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'大发明家 黑默丁格',2500,3150,'https://ossweb-img.qq.com/images/lol/web201310/skin/big74000.jpg',false,1250,'hero');
INSERT INTO lol_product VALUES(NULL,'猩红收割者 弗拉基米尔',2500,3150,'https://ossweb-img.qq.com/images/lol/web201310/skin/big8000.jpg',false,1250,'hero');
INSERT INTO lol_product VALUES(NULL,'迅捷斥候 提莫',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big17000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'暮光星灵 佐伊',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big142000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'发条魔灵 奥利安娜',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big61000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'暗夜猎手 薇恩',3500,4800,'https://ossweb-img.qq.com/images/lol/web201310/skin/big67000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'诡术妖姬 乐芙兰',3500,4800,'https://ossweb-img.qq.com/images/lol/web201310/skin/big7000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'探险家 伊泽瑞尔',3500,4800,'https://ossweb-img.qq.com/images/lol/web201310/skin/big81000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'离群之刺 阿卡丽',2500,3150,'https://ossweb-img.qq.com/images/lol/web201310/skin/big84000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'逆羽 霞',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big498000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'幻翎 洛',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big497000.jpg',false,1250,'hero');
INSERT INTO lol_product VALUES(NULL,'未来守护者 杰斯',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big126000.jpg',false,1250,'hero');
INSERT INTO lol_product VALUES(NULL,'刀锋舞者 艾瑞莉娅',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big39000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'刀锋之影 泰隆',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big91000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'死亡颂唱者 卡尔萨斯',4500,6300,'https://ossweb-img.qq.com/images/lol/web201310/skin/big30000.jpg',false,2250,'hero');
INSERT INTO lol_product VALUES(NULL,'唤潮鲛姬 娜美',3500,4800,'https://ossweb-img.qq.com/images/lol/web201310/skin/big267000.jpg',false,1750,'hero');
INSERT INTO lol_product VALUES(NULL,'众星之子 索拉卡',1000,450,'https://ossweb-img.qq.com/images/lol/web201310/skin/big16000.jpg',false,500,'hero');
INSERT INTO lol_product VALUES(NULL,'荆棘之兴 婕拉',3500,4800,'https://ossweb-img.qq.com/images/lol/web201310/skin/big143000.jpg',false,1750,'hero');
INSERT INTO lol_product VALUES(NULL,'时光守护者 基兰',1000,450,'https://ossweb-img.qq.com/images/lol/web201310/skin/big26000.jpg',false,500,'hero');
INSERT INTO lol_product VALUES(NULL,'琴瑟仙女 娑娜',2500,3150,'https://ossweb-img.qq.com/images/lol/web201310/skin/big26000.jpg',false,1250,'hero');


INSERT INTO lol_product VALUES(NULL,'兔女郎 锐雯',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big92003.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'西部牛仔 亚索',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big157001.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'冠军之隐 劫',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big238010.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'霸天剑魔 亚托克斯',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big266002.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'弹幕天使 卡莎',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big145001.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'圣诞捣蛋鬼 金克丝',19900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big222012.jpg',false,9950,'skin');
INSERT INTO lol_product VALUES(NULL,'驯龙学者 黑默丁格',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big74006.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'黑潮 弗拉基米尔',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big8008.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'小蜜蜂 提莫',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big17018.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'泳池派对 佐伊',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big142002.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'死兆星 奥莉安娜',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big61007.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'源计划：净化 薇恩',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big67011.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'长者之森 乐芙兰',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big7005.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'星之守护者 伊泽瑞尔',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big81018.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'实习护士 阿卡丽',3900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big92003.jpg',false,1950,'skin');
INSERT INTO lol_product VALUES(NULL,'甜心之羽 霞',19900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big498002.jpg',false,9950,'skin');
INSERT INTO lol_product VALUES(NULL,'甜心之翎 洛',19900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big497002.jpg',false,9950,'skin');
INSERT INTO lol_product VALUES(NULL,'蔷薇绅士 杰斯',12900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big126002.jpg',false,6450,'skin');
INSERT INTO lol_product VALUES(NULL,'玉剑传说 舞剑仙',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big39006.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'玉剑传说 无影',9900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big91012.jpg',false,4950,'skin');
INSERT INTO lol_product VALUES(NULL,'卡尔萨斯·祸害之光',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big30009.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'SKT T1 娜美',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big267008.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'星之守护者 索拉卡',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big16007.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'驯龙女巫 婕拉',7900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big143004.jpg',false,3950,'skin');
INSERT INTO lol_product VALUES(NULL,'腥红之月 基兰',6900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big26005.jpg',false,3450,'skin');
INSERT INTO lol_product VALUES(NULL,'甜心宝贝 娑娜',19900,NULL,'https://ossweb-img.qq.com/images/lol/web201310/skin/big37007.jpg',false,9950,'skin');

DROP TABLE IF EXISTS lol_cart;
CREATE TABLE lol_cart(                         #购物车表
  cid INT PRIMARY KEY AUTO_INCREMENT,
  id VARCHAR(128),
  productId VARCHAR(256)
);

DROP TABLE IF EXISTS lol_buylist;
CREATE TABLE lol_buylist(                      #订单表
  bid INT PRIMARY KEY AUTO_INCREMENT,
  id VARCHAR(128),
  productId VARCHAR(256)
);

DROP TABLE IF EXISTS lol_bannerlist;
CREATE TABLE lol_bannerlist(                      #轮播图表
  id INT PRIMARY KEY AUTO_INCREMENT,
  productId VARCHAR(256),
  img_url VARCHAR(256)
);

INSERT INTO lol_bannerlist VALUES(NULL,45,'https://ossweb-img.qq.com/images/lol/web201310/skin/big39006.jpg');
INSERT INTO lol_bannerlist VALUES(NULL,46,'https://ossweb-img.qq.com/images/lol/web201310/skin/big91012.jpg');
INSERT INTO lol_bannerlist VALUES(NULL,33,'https://ossweb-img.qq.com/images/lol/web201310/skin/big74006.jpg');
INSERT INTO lol_bannerlist VALUES(NULL,49,'https://ossweb-img.qq.com/images/lol/web201310/skin/big16007.jpg');
INSERT INTO lol_bannerlist VALUES(NULL,40,'https://ossweb-img.qq.com/images/lol/web201310/skin/big81018.jpg');