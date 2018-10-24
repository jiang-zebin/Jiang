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

INSERT INTO lol_hero VALUES(NULL,'暗裔剑魔','亚托克斯','Aatrox','img/hero/Aatrox.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'九尾妖狐','阿狸','Ahri','img/hero/Ahri.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'离群之刺','阿卡丽','Akali','img/hero/Akali.png','All Assassin');
INSERT INTO lol_hero VALUES(NULL,'牛头酋长','阿利斯塔','Alistar','img/hero/Alistar.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'殇之木乃伊','阿木木','Amumu','img/hero/Amumu.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'冰晶凤凰','艾尼维亚','Anivia','img/hero/Anivia.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'黑暗之女','安妮','Annie','img/hero/Annie.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'寒冰射手','艾希','Ashe','img/hero/Ashe.png','All Marksman Support');
INSERT INTO lol_hero VALUES(NULL,'铸星龙王','奥瑞利安·索尔','AurelionSol','img/hero/AurelionSol.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'沙漠皇帝','阿兹尔','Azir','img/hero/Azir.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'星界游神','巴德','Bard','img/hero/Bard.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'蒸汽机器人','布里茨','Blitzcrank','img/hero/Blitzcrank.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'复仇焰魂','布兰德','Brand','img/hero/Brand.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'弗雷尔卓德之心','布隆','Braum','img/hero/Braum.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'皮城女警','凯特琳','Caitlyn','img/hero/Caitlyn.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'青钢影','卡蜜尔','Camille','img/hero/Camille.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'魔蛇之拥','卡西奥佩娅','Cassiopeia','img/hero/Cassiopeia.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空恐惧','科加斯','Chogath','img/hero/Chogath.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'英勇投弹手','库奇','Corki','img/hero/Corki.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'诺克萨斯之手','德莱厄斯','Darius','img/hero/Darius.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'皎月女神','黛安娜','Diana','img/hero/Diana.png','All Fighter Mage');
INSERT INTO lol_hero VALUES(NULL,'荣耀行刑官','德莱文','Draven','img/hero/Draven.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'祖安狂人','蒙多医生','DrMundo','img/hero/DrMundo.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'时间刺客','艾克','Ekko','img/hero/Ekko.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'蜘蛛女皇','伊莉丝','Elise','img/hero/Elise.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'痛苦之拥','伊芙琳','Evelynn','img/hero/Evelynn.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'探险家','伊泽瑞尔','Ezreal','img/hero/Ezreal.png','All Marksman Mage');
INSERT INTO lol_hero VALUES(NULL,'末日使者','费德提克','Fiddlesticks','img/hero/Fiddlesticks.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'无双剑姬','菲奥娜','Fiora','img/hero/Fiora.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'潮汐海灵','菲兹','Fizz','img/hero/Fizz.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'正义巨像','加里奥','Galio','img/hero/Galio.png','All Mage Tank');
INSERT INTO lol_hero VALUES(NULL,'海洋之灾','普朗克','Gangplank','img/hero/Gangplank.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚之力','盖伦','Garen','img/hero/Garen.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'迷失之牙','纳尔','Gnar','img/hero/Gnar.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'酒桶','古拉加斯','Gragas','img/hero/Gragas.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'法外狂徒','格雷福斯','Graves','img/hero/Graves.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'战争之影','赫卡里姆','Hecarim','img/hero/Hecarim.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'大发明家','黑默丁格','Heimerdinger','img/hero/Heimerdinger.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'海兽祭司','俄洛伊','Illaoi','img/hero/Illaoi.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'刀锋舞者','艾瑞莉娅','Irelia','img/hero/Irelia.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'翠神','艾翁','Ivern','img/hero/Ivern.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'风暴之怒','迦娜','Janna','img/hero/Janna.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚皇子','嘉文四世','JarvanIV','img/hero/JarvanIV.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'武器大师','贾克斯','Jax','img/hero/Jax.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'未来守护者','杰斯','Jayce','img/hero/Jayce.png','All Marksman Fighter');
INSERT INTO lol_hero VALUES(NULL,'戏命师','烬','Jhin','img/hero/Jhin.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'暴走萝莉','金克丝','Jinx','img/hero/Jinx.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'虚空之女','卡莎','Kaisa','img/hero/Kaisa.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'复仇之矛','卡莉丝塔','Kalista','img/hero/Kalista.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'天启者','卡尔玛','Karma','img/hero/Karma.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'死亡颂唱者','卡尔萨斯','Karthus','img/hero/Karthus.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空行者','卡萨丁','Kassadin','img/hero/Kassadin.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'不祥之刃','卡特琳娜','Katarina','img/hero/Katarina.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'审判天使','凯尔','Kayle','img/hero/Kayle.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'影流之镰','凯隐','Kayn','img/hero/Kayn.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'狂暴之心','凯南','Kennen','img/hero/Kennen.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'虚空掠夺者','卡兹克','Khazix','img/hero/Khazix.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'永猎双子','千珏','Kindred','img/hero/Kindred.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'暴怒骑士','克烈','Kled','img/hero/Kled.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'深渊巨口','克格莫','KogMaw','img/hero/KogMaw.png','All Mage Marksman');
INSERT INTO lol_hero VALUES(NULL,'诡术妖姬','乐芙兰','Leblanc','img/hero/Leblanc.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'盲僧','李青','LeeSin','img/hero/LeeSin.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'曙光女神','蕾欧娜','Leona','img/hero/Leona.png','All Tank Support');
INSERT INTO lol_hero VALUES(NULL,'冰霜女巫','丽桑卓','Lissandra','img/hero/Lissandra.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'圣枪游侠','卢锡安','Lucian','img/hero/Lucian.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'仙灵女巫','璐璐','Lulu','img/hero/Lulu.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'光辉女郎','拉克丝','Lux','img/hero/Lux.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'熔岩巨兽','墨菲特','Malphite','img/hero/Malphite.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'虚空先知','玛尔扎哈','Malzahar','img/hero/Malzahar.png','All Assassin Mage');
INSERT INTO lol_hero VALUES(NULL,'扭曲树精','茂凯','Maokai','img/hero/Maokai.png','All Tank Mage');
INSERT INTO lol_hero VALUES(NULL,'无极剑圣','易','MasterYi','img/hero/MasterYi.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'赏金猎人','厄运小姐','MissFortune','img/hero/MissFortune.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'齐天大圣','孙悟空','MonkeyKing','img/hero/MonkeyKing.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'铁铠冥魂','莫德凯撒','Mordekaiser','img/hero/Mordekaiser.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'堕落天使','莫甘娜','Morgana','img/hero/Morgana.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'唤潮鲛姬','娜美','Nami','img/hero/Nami.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'沙漠死神','内瑟斯','Nasus','img/hero/Nasus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'深海泰坦','诺提勒斯','Nautilus','img/hero/Nautilus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'狂野女猎手','奈德丽','Nidalee','img/hero/Nidalee.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'永恒梦魇','魔腾','Nocturne','img/hero/Nocturne.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'雪原双子','努努和威朗普','Nunu','img/hero/Nunu.png','All Fighter Tank');
INSERT INTO lol_hero VALUES(NULL,'狂战士','奥拉夫','Olaf','img/hero/Olaf.png','All Fighter Tank');
INSERT INTO lol_hero VALUES(NULL,'发条魔灵','奥莉安娜','Orianna','img/hero/Orianna.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'山隐之焰','奥恩','Ornn','img/hero/Ornn.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'战争之王','潘森','Pantheon','img/hero/Pantheon.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'圣锤之毅','波比','Poppy','img/hero/Poppy.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'血港鬼影','派克','Pyke','img/hero/Pyke.png','All Support Assassin');
INSERT INTO lol_hero VALUES(NULL,'德玛西亚之翼','奎因','Quinn','img/hero/Quinn.png','All Marksman Fighter');
INSERT INTO lol_hero VALUES(NULL,'幻翎','洛','Rakan','img/hero/Rakan.png','All Support');
INSERT INTO lol_hero VALUES(NULL,'披甲龙龟','拉莫斯','Rammus','img/hero/Rammus.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'虚空遁地兽','雷克塞','RekSai','img/hero/RekSai.png','All Fighter');
INSERT INTO lol_hero VALUES(NULL,'荒漠屠夫','雷克顿','Renekton','img/hero/Renekton.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'傲之追猎者','雷恩加尔','Rengar','img/hero/Rengar.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'放逐之刃','锐雯','Riven','img/hero/Riven.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'机械公敌','兰博','Rumble','img/hero/Rumble.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'符文法师','瑞兹','Ryze','img/hero/Ryze.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'北地之怒','瑟庄妮','Sejuani','img/hero/Sejuani.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'恶魔小丑','萨科','Shaco','img/hero/Shaco.png','All Assassin');
INSERT INTO lol_hero VALUES(NULL,'暮光之眼','慎','Shen','img/hero/Shen.png','All Tank');
INSERT INTO lol_hero VALUES(NULL,'龙血武姬','希瓦娜','Shyvana','img/hero/Shyvana.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'炼金术士','辛吉德','Singed','img/hero/Singed.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'亡灵战神','赛恩','Sion','img/hero/Sion.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'战争女神','希维尔','Sivir','img/hero/Sivir.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'水晶先锋','斯卡纳','Skarner','img/hero/Skarner.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'琴瑟仙女','娑娜','Sona','img/hero/Sona.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'众星之子','索拉卡','Soraka','img/hero/Soraka.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'诺克萨斯统领','斯维因','Swain','img/hero/Swain.png','All Mage Fighter');
INSERT INTO lol_hero VALUES(NULL,'暗黑元首','辛德拉','Syndra','img/hero/Syndra.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'河流之王','塔姆','TahmKench','img/hero/TahmKench.png','All Support Tank');
INSERT INTO lol_hero VALUES(NULL,'岩雀','塔莉垭','Taliyah','img/hero/Taliyah.png','All Mage Support');
INSERT INTO lol_hero VALUES(NULL,'刀锋之影','泰隆','Talon','img/hero/Talon.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'瓦洛兰之盾','塔里克','Taric','img/hero/Taric.png','All Support Fighter');
INSERT INTO lol_hero VALUES(NULL,'迅捷斥候','提莫','Teemo','img/hero/Teemo.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'魂锁典狱长','锤石','Thresh','img/hero/Thresh.png','All Fighter Support');
INSERT INTO lol_hero VALUES(NULL,'麦林炮手','崔丝塔娜','Tristana','img/hero/Tristana.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'巨魔之王','特朗德尔','Trundle','img/hero/Trundle.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'蛮族之王','泰达米尔','Tryndamere','img/hero/Tryndamere.png','All Fighter Assassin');
INSERT INTO lol_hero VALUES(NULL,'卡牌大师','崔斯特','TwistedFate','img/hero/TwistedFate.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'瘟疫之源','图奇','Twitch','img/hero/Twitch.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'兽灵行者','乌迪尔','Udyr','img/hero/Udyr.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'无畏战车','厄加特','Urgot','img/hero/Urgot.png','All Fighter Marksman');
INSERT INTO lol_hero VALUES(NULL,'惩戒之箭','韦鲁斯','Varus','img/hero/Varus.png','All Marksman Mage');
INSERT INTO lol_hero VALUES(NULL,'暗夜猎手','薇恩','Vayne','img/hero/Vayne.png','All Marksman Assassin');
INSERT INTO lol_hero VALUES(NULL,'邪恶小法师','维迦','Veigar','img/hero/Veigar.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'虚空之眼','维克兹','Velkoz','img/hero/Velkoz.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'皮城执法官','蔚','Vi','img/hero/Vi.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'机械先驱','维克托','Viktor','img/hero/Viktor.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'猩红收割者','弗拉基米尔','Vladimir','img/hero/Vladimir.png','All Mage Tank');
INSERT INTO lol_hero VALUES(NULL,'雷霆咆哮','沃利贝尔','Volibear','img/hero/Volibear.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'祖安怒兽','沃里克','Warwick','img/hero/Warwick.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'逆羽','霞','Xayah','img/hero/Xayah.png','All Marksman');
INSERT INTO lol_hero VALUES(NULL,'远古巫灵','泽拉斯','Xerath','img/hero/Xerath.png','All Mage Assassin');
INSERT INTO lol_hero VALUES(NULL,'德邦总管','赵信','XinZhao','img/hero/XinZhao.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'疾风剑豪','亚索','Yasuo','img/hero/Yasuo.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'牧魂人','约里克','Yorick','img/hero/Yorick.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'生化魔人','扎克','Zac','img/hero/Zac.png','All Tank Fighter');
INSERT INTO lol_hero VALUES(NULL,'影流之主','劫','Zed','img/hero/Zed.png','All Assassin Fighter');
INSERT INTO lol_hero VALUES(NULL,'爆破鬼才','吉格斯','Ziggs','img/hero/Ziggs.png','All Mage');
INSERT INTO lol_hero VALUES(NULL,'时光守护者','基兰','Zilean','img/hero/Zilean.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'暮光星灵','佐伊','Zoe','img/hero/Zoe.png','All Support Mage');
INSERT INTO lol_hero VALUES(NULL,'荆棘之兴','婕拉','Zyra','img/hero/Zyra.png','All Mage Support');