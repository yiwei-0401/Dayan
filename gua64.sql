/*
 Navicat Premium Data Transfer

 Source Server         : new127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : zhouyi

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 13/09/2020 23:22:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gua64
-- ----------------------------
DROP TABLE IF EXISTS `gua64`;
CREATE TABLE `gua64` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '卦名',
  `code` char(6) NOT NULL COMMENT '6爻的二进制标识 1 ：阳爻 0 阴爻',
  `top` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上卦卦名',
  `bottom` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下卦卦名',
  `guaci` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卦辞',
  `guaci_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卦辞解释',
  `yao_1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '一爻',
  `yao_1_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '一爻的释义',
  `yao_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '二爻',
  `yao_2_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '二爻的释义',
  `yao_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '三爻',
  `yao_3_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '三爻的释义',
  `yao_4` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '四爻',
  `yao_4_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '四爻释义',
  `yao_5` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '五爻',
  `yao_5_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '五爻的释义',
  `yao_6` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '六爻',
  `yao_6_explain` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '六爻释义',
  PRIMARY KEY (`id`),
  KEY `inx_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gua64
-- ----------------------------
BEGIN;
INSERT INTO `gua64` VALUES (1, '乾', '111111', '', '', '乾，元，亨；利贞', '', '潜龙勿用', '', '见龙在田利见大人', '', '君子终日乾乾夕惕若厉无咎', '', '或跃在渊无咎', '', '飞龙在天利见大人', '', '亢龙有悔', '');
INSERT INTO `gua64` VALUES (2, '坤', '000000', '', '', '坤，元，亨；利牝马之贞。君子有攸往，先迷后得主，利。西南得朋，东北丧朋。安贞，吉', '', '履霜坚冰至', '', '直方大不习无不利', '', '含章可贞或从王事无成有终', '', '括囊无咎无誉', '', '黄裳元吉', '', '龙战于野其血玄黄', '');
INSERT INTO `gua64` VALUES (3, '屯', '100010', '', '', '屯，元，亨；利贞。勿用有攸往。利建侯', NULL, '磐桓。利建侯', NULL, '屯如邅通如，乘马班如。匪寇，婚媾。女子贞不字， 十年乃字', NULL, '即鹿无虞，惟人于林中。君子几，不如舍。往，吝', NULL, '乘马班如，求婚嫣。往，吉。无不利', NULL, '屯其膏。小贞吉，大贞凶', NULL, '乘马班如，泣血涟如', NULL);
INSERT INTO `gua64` VALUES (4, '蒙', '010001', NULL, NULL, '蒙，亨；匪我求童蒙，童蒙求我；初筮告，再三渎，渎则不告；利贞', NULL, '发蒙，利用刑人，用说桎梏，以往，吝', NULL, '包蒙，吉；纳妇，吉；子克家', NULL, '勿用取女，见金夫，不有躬。无攸利', NULL, '困蒙，吝', NULL, '童蒙，吉', NULL, '击蒙，不利为寇，利御寇', NULL);
INSERT INTO `gua64` VALUES (5, '需', '111010', NULL, NULL, '需，有孚，光亨；贞，吉，利涉大川', NULL, '需于郊，利用恒，无咎', NULL, '需于沙，小，有言，终吉', NULL, '需于泥，致寇至', NULL, '需于血，出自穴', NULL, '需于酒食，贞，吉', NULL, '入于穴，有不速之客三人来，敬之，终吉', NULL);
INSERT INTO `gua64` VALUES (6, '讼', '010111', NULL, NULL, '讼，有孚窒惕，中吉，终凶；利见大人，不利涉大川', NULL, '不永所事，小，有言，终吉', NULL, '不克讼，归而逋，其邑人三百户，无眚', NULL, '食旧德，贞，厉；终吉，或从王事，无成', NULL, '不克讼，复即命，渝，安贞，吉', NULL, '讼，元，吉', NULL, '获锡之以鞶带，终朝三而褫之', NULL);
INSERT INTO `gua64` VALUES (7, '师', '010000', NULL, NULL, '师，贞，丈人吉，无咎', NULL, '师出以律；否臧，凶', NULL, '在师，中，吉，无咎，王三锡命', NULL, '师或，舆师，凶', NULL, '师左次，无咎', NULL, '田有禽，利执言，无咎，长子帅师，弟子舆师，贞，凶', NULL, '大君有命，开国承家，小人无用', NULL);
INSERT INTO `gua64` VALUES (8, '比', '000010', NULL, NULL, '比，吉。原筮，元，永贞，无咎。不宁方来，后夫凶', NULL, '有孚，比之，无咎；有孚盈缶，终来有他，吉', NULL, '比之自内，贞，吉', NULL, '比之匪人', NULL, '外比之，贞，吉', NULL, '显比，王用三驱，失前禽，邑人不诫，吉', NULL, '比之无首，凶', NULL);
INSERT INTO `gua64` VALUES (9, '小畜', '111011', NULL, NULL, '小畜，亨，密云不雨，自我西郊', NULL, '复自道，何其咎？吉', NULL, '牵复，吉', NULL, '舆说辐，夫妻反目', NULL, '有孚血去惕出，无咎', NULL, '有孚挛如，富以其邻', NULL, '既雨既处，尚德载，妇贞，厉；月几望，君子征，凶', NULL);
INSERT INTO `gua64` VALUES (10, '履', '110111', NULL, NULL, '履，虎尾，不咥人，亨', NULL, '素履，往，无咎', NULL, '履道坦坦，幽人贞，吉', NULL, '眇能视，跛能履，履虎尾，咥人，凶；武人为于大君', NULL, '履虎尾，愬愬，终吉', NULL, '夬履，贞，厉', NULL, '视履考祥，其旋，元，吉', NULL);
INSERT INTO `gua64` VALUES (11, '泰', '111000', NULL, NULL, '泰，小往，大来，吉，亨', NULL, '拔茅茹，以其汇，征，吉', NULL, '包荒，用冯河，不遐遗；朋亡，得尚于中行', NULL, '无平不陂，无往不复；艰贞，无咎；勿恤其孚，于食有福', NULL, '翩翩，不富以其邻；不戒，以孚', NULL, '帝乙归妹以祉，元，吉', NULL, '城复于隍，勿用师，自邑告命，贞，吝', NULL);
INSERT INTO `gua64` VALUES (12, '否', '000111', NULL, NULL, '否之匪人，不利君子贞，大往，小来', NULL, '拔茅茹，以其汇，贞，吉，亨', NULL, '包承，小人吉，大人否亨', NULL, '包羞', NULL, '有命，无咎，畴离祉', NULL, '休否，大人吉；其亡其亡，系于苞桑', NULL, '倾否，先否后喜', NULL);
INSERT INTO `gua64` VALUES (13, '同人', '101111', NULL, NULL, '同人于野，亨。利涉大川，利君子贞', NULL, '同人于门，无咎', NULL, '同人于宗，吝', NULL, '伏戎于莽，升其高陵，三岁不兴', NULL, '乘其墉，弗克；攻，吉', NULL, '同人，先号啕而后笑，大师克相遇', NULL, '同人于郊，无悔', NULL);
INSERT INTO `gua64` VALUES (14, '大有', '111101', NULL, NULL, '大有，元，亨', NULL, '无交害，匪咎，艰则无咎', NULL, '大车以载，有攸往，无咎', NULL, '公用亨于天子，小人弗克', NULL, '匪其彭，无咎', NULL, '厥孚交如威如，吉', NULL, '自天佑之，吉，无不利', NULL);
INSERT INTO `gua64` VALUES (15, '谦', '001000', NULL, NULL, '谦，亨，君子有终', NULL, '谦谦君子，用涉大川，吉', NULL, '鸣谦，贞，吉', NULL, '劳谦，君子有终，吉', NULL, '无不利，撝谦', NULL, '不富以其邻，利用侵伐，无不利', NULL, '鸣谦，利用行师，征邑国', NULL);
INSERT INTO `gua64` VALUES (16, '豫', '000100', NULL, NULL, '豫，利建侯行师', NULL, '鸣豫，凶', NULL, '介于石，不终日；贞，吉', NULL, '盱豫，悔；迟，有悔', NULL, '由豫，大有得；勿疑朋盍簪', NULL, '贞，疾，恒不死', NULL, '冥豫，成；有渝，无咎', NULL);
INSERT INTO `gua64` VALUES (17, '随', '100110', NULL, NULL, '随，元，亨；利贞，无咎', NULL, '官有渝，贞，吉，出门交有功', NULL, '系小子，失丈夫', NULL, '系丈夫，失小子。随有求得，利居贞', NULL, '随有获，贞，凶；有孚，在道以明，何咎？', NULL, '孚于嘉，吉', NULL, '拘系之，乃从维之，王用亨于西山', NULL);
INSERT INTO `gua64` VALUES (18, '蛊', '011001', NULL, NULL, '蛊，元，亨。利涉大川，先甲三日，后甲三日', NULL, '干父之蛊，有子考，无咎，厉，终吉', NULL, '干母之蛊，不可贞', '', '干父之蛊，小，有悔，无大咎', NULL, '裕父之蛊，往，见吝', NULL, '干父之蛊，用誉', NULL, '不事王侯，高尚其事', NULL);
INSERT INTO `gua64` VALUES (19, '临', '110000', NULL, NULL, '临，元，亨；利贞，至于八月有凶', NULL, '咸临，贞，吉', NULL, '咸临，吉，无不利', NULL, '甘临，无攸利；既忧之，无咎', NULL, '至临，无咎', NULL, '知临，大君之宜，吉', NULL, '敦临，吉，无咎', NULL);
INSERT INTO `gua64` VALUES (20, '观', '000011', NULL, NULL, '观，盥而不荐，有孚顒若', NULL, '童观，小人无咎，君子吝', NULL, '窥观，利女贞', NULL, '观我生，进退', NULL, '观国之光，利用宾于王', NULL, '观我生，君子无咎', NULL, '观其生，君子无咎', NULL);
INSERT INTO `gua64` VALUES (21, '噬嗑', '100101', NULL, NULL, '噬嗑，亨，利用狱', NULL, '屦校灭趾，无咎', NULL, '噬肤，灭鼻，无咎', NULL, '噬腊肉，遇毒，小，吝，无咎', NULL, '噬干胏，得金矢，利艰贞，吉', NULL, '噬干肉，得黄金，贞，厉，无咎', NULL, '何校灭耳，凶', NULL);
INSERT INTO `gua64` VALUES (22, '贲', '101001', NULL, NULL, '贲，亨；小，利有攸往', NULL, '贲其趾，舍车而徙', NULL, '贲其须', NULL, '贲如濡如，永贞，吉', NULL, '贲如皤如，白马翰如；匪寇，婚媾', NULL, '贲于丘园，束帛戋戋，吝，终吉', NULL, '白贲，无咎', NULL);
INSERT INTO `gua64` VALUES (23, '剥', '000001', NULL, NULL, '剥，不利有攸往', NULL, '剥床以足，蔑贞，凶', NULL, '剥床以辨，蔑贞，凶', NULL, '剥，无咎', NULL, '剥床以肤，凶', NULL, '贯鱼以宫人宠，无不利', NULL, '硕果不食。君子得舆，小人剥庐', NULL);
INSERT INTO `gua64` VALUES (24, '复', '100000', NULL, NULL, '复，亨。出入，无疾；朋来，无咎。反复其道，七日来复；利有攸往', NULL, '不远，复，无祗悔；元，吉', NULL, '休复，吉', NULL, '频复，厉，无咎', NULL, '中行，独复', NULL, '敦复，无悔', NULL, '迷复，凶，有灾眚。用行师，终有大败；以其国，君凶，至于十年不克征', NULL);
INSERT INTO `gua64` VALUES (25, '无妄', '100111', NULL, NULL, '无妄，元，亨；利贞。其匪正，有眚，不利有攸往', NULL, '无妄，往，吉', NULL, '不耕获，不菑畲，则利有攸往', NULL, '无妄之灾，或系之牛，行人之得，邑人之灾', NULL, '可贞，无咎', NULL, '无妄之疾，勿药有喜', NULL, '无妄，行有眚，无攸利', NULL);
INSERT INTO `gua64` VALUES (26, '大畜', '111001', NULL, NULL, '大畜，利贞。不家食，吉；利涉大川', NULL, '有厉，利己', NULL, '舆说輹', NULL, '良马逐，利坚贞；曰闲舆卫，利有攸往', NULL, '童牛之牿，元吉', NULL, '豶豕之牙，吉', NULL, '何天之衢，亨', NULL);
INSERT INTO `gua64` VALUES (27, '颐', '100001', NULL, NULL, '颐，贞，吉。观颐，自求口实', NULL, '舍尔灵龟，观我朶颐，凶', NULL, '颠颐；拂经，于丘颐，征，凶', NULL, '拂颐，贞，凶，十年勿用，无攸利', NULL, '颠颐，吉；虎视眈眈，其欲逐逐，无咎', NULL, '拂经，居贞，吉，不可涉大川', NULL, '由颐，厉，吉，利涉大川', NULL);
INSERT INTO `gua64` VALUES (28, '大过', '011110', NULL, NULL, '大过，栋桡；利有攸往，亨', NULL, '藉用白茅，无咎', NULL, '枯杨生稊，老夫得其女妻，无不利', NULL, '栋桡，凶', NULL, '栋隆，吉；有它，吝', NULL, '枯杨生华，老妇得其士夫，无咎，无誉', NULL, '过涉，灭顶，凶；无咎', NULL);
INSERT INTO `gua64` VALUES (29, '习坎', '010010', NULL, NULL, '习坎，有孚维新，亨，行有尚', NULL, '习坎，入于坎窞，凶', NULL, '坎有险，求小得', NULL, '来之坎坎，险且枕，入于坎窞，勿用', NULL, '樽酒，簋贰，用缶，纳约自牖，终无咎', NULL, '坎不盈，只既平，无咎', NULL, '系用徽纆，窴于丛棘，三岁不得，凶', NULL);
INSERT INTO `gua64` VALUES (30, '离', '101101', NULL, NULL, '离，利贞，亨；畜牝牛，吉', NULL, '履错然，敬之，无咎', NULL, '黄离，元，吉', NULL, '日昃之离，不击缶而歌，则大耋之嗟，凶', NULL, '突如其来如，焚如，死如，弃如', NULL, '出涕沱若，戚嗟若，吉', NULL, '王用出征，有嘉，折首，获匪其丑，无咎', NULL);
INSERT INTO `gua64` VALUES (31, '咸', '001110', NULL, NULL, '咸，亨，利贞；取女吉', NULL, '咸其拇', NULL, '咸其腓，凶；居，吉', NULL, '咸其股，执其随，往，吝', NULL, '贞，吉，悔亡。憧憧往来，朋从尔思', NULL, '咸其脢，无悔', NULL, '咸其辅、颊、舌', NULL);
INSERT INTO `gua64` VALUES (32, '恒', '011100', NULL, NULL, '恒，亨，无咎；利贞，利有攸往', NULL, '浚恒，贞，凶，无攸利', NULL, '悔亡', NULL, '不恒其德，或承之羞；贞，吝', NULL, '田无禽', NULL, '恒其德，贞，妇人吉，夫子凶', NULL, '振恒，凶', NULL);
INSERT INTO `gua64` VALUES (33, '遯', '001111', NULL, NULL, '遯，亨，小，利贞', NULL, '遯尾，厉，勿用有攸往', NULL, '执之用黄牛之革，莫之胜，说', NULL, '系遯，有疾，厉；畜臣妾，吉', NULL, '好遯，君子吉，小人否', NULL, '嘉遯，贞，吉', NULL, '肥遯，无不利', NULL);
INSERT INTO `gua64` VALUES (34, '大壮', '111100', NULL, NULL, '大壮，利贞', NULL, '壮于趾，征，凶，有孚', NULL, '贞，吉', NULL, '小人用壮；君子用罔，贞，厉；羝羊触藩，赢其角', NULL, '贞，吉，悔亡。藩决不赢，壮于大舆之輹', NULL, '丧羊于易，无悔', NULL, '羝羊触藩，不能退，不能遂，无攸利，艰则吉', NULL);
INSERT INTO `gua64` VALUES (35, '晋', '000101', NULL, NULL, '晋，康侯用锡马蕃庶，昼日三接', NULL, '晋如摧如，贞，吉，罔；孚欲，无咎', NULL, '晋如愁如，贞，吉；受兹介福，于其王母', NULL, '众允，悔亡', NULL, '晋如鼫鼠，贞，厉', NULL, '悔亡，失得，勿恤；往，吉，无不利', NULL, '晋其角，维用伐邑，厉，吉，无咎；贞，吝', NULL);
INSERT INTO `gua64` VALUES (36, '明夷', '101000', NULL, NULL, '眀夷，利坚贞', NULL, '明夷于飞，垂其翼；君子于行，三日不食。有攸往，主人有言', '', '眀夷，夷于左股；用拯马壮，吉', NULL, '明夷于南狩，得其大首；不可疾，贞', NULL, '入于左腹，获明夷之心，于出门庭', NULL, '箕子之明夷，利贞', NULL, '不明，晦；初登于天，后入于地', NULL);
INSERT INTO `gua64` VALUES (37, '家人', '101011', NULL, NULL, '家人，厉女贞', NULL, '闲有家，悔亡', NULL, '无攸遂，在中馈，贞，吉', NULL, '家人嗃嗃，悔，厉，吉；妇子嘻嘻，终吝', NULL, '富家，大吉', NULL, '王假有家，勿恤，吉', NULL, '有孚，威如，终吉', NULL);
INSERT INTO `gua64` VALUES (38, '睽', '110101', NULL, NULL, '睽，小事，吉', NULL, '悔亡，丧马，勿逐，自复；见恶人，无咎', NULL, '遇主于巷，无咎', NULL, '见舆曳，其牛掣，其人天且劓；无初有终', NULL, '睽孤，遇元夫，交孚，厉，无咎', NULL, '悔亡，厥宗噬肤，往，何咎', NULL, '睽孤，见豕负涂，载鬼一车；先张之弧，后说之弧，匪寇，婚媾；往，遇雨则吉', NULL);
INSERT INTO `gua64` VALUES (39, '蹇', '001010', NULL, NULL, '蹇，利西南，不利东北；利见大人，贞，吉', NULL, '往蹇，来誉', NULL, '王臣蹇蹇，匪躬之故', NULL, '往蹇，来反', NULL, '往蹇，来连', NULL, '大蹇，朋来', NULL, '往蹇，来硕，吉；利见大人', NULL);
INSERT INTO `gua64` VALUES (40, '解', '010100', NULL, NULL, '解，利西南，无所往。其来复，吉；有攸往，夙，吉', NULL, '无咎', NULL, '田获三狐，得黄矢，贞，吉', NULL, '负且乘，致寇至，贞，吝', NULL, '解而拇，朋至斯孚', NULL, '君子维有解，吉，有孚于小人', NULL, '公用射隼于高墉之上，获之，无不利', NULL);
INSERT INTO `gua64` VALUES (41, '损', '110001', NULL, NULL, '损，元，吉，孚，无咎，可贞，利有攸往。曷之用？二簋可用享', NULL, '已事遄，往，无咎；酌损之', NULL, '利贞；征，凶。弗损，益之', NULL, '三人行，则损一人；一人行，则得其友', NULL, '损其疾，使遄，有喜，无咎', NULL, '或益之十朋之龟，弗克违，元，吉', NULL, '弗损，益之，无咎；贞，吉。利有攸往，得臣，无家', NULL);
INSERT INTO `gua64` VALUES (42, '益', '100011', NULL, NULL, '益，利有攸往，利涉大川', NULL, '利用为大作，元，吉，无咎', NULL, '或益之十朋之龟，弗克违，永贞，吉。王用享于帝，吉', NULL, '益之用凶事，无咎。有孚，中行，告公用圭', NULL, '中行，告公从，利用为依迁国', NULL, '有孚，惠心，勿问，元，吉；有孚，惠我德', NULL, '莫益之，或击之，立心勿恒，凶', NULL);
INSERT INTO `gua64` VALUES (43, '夬', '111110', NULL, NULL, '夬，扬于王庭；孚号，有厉。告自邑，不利即戎，利有攸往', NULL, '壮于前趾，往，不胜，为咎', NULL, '惕号，莫夜。有戎，勿恤', NULL, '壮于頄，有凶。君子夬夬独行，遇雨若濡，有愠，无咎', NULL, '臀无肤，其行次且。牵羊，悔亡。闻言，不信', '', '苋陆夬夬，中行无咎', NULL, '无号，终有凶', NULL);
INSERT INTO `gua64` VALUES (44, '姤', '011111', NULL, NULL, '姤，女壮，勿用取女', NULL, '系于金柅，贞，吉；有攸往，见凶，羸豕孚蹢躅', NULL, '包有鱼，无咎，不利宾', NULL, '臀无肤，其行次且，厉，无大咎', NULL, '包无鱼，起凶', NULL, '以杞包瓜，含章，有损自天', NULL, '姤其角，吝，无咎', NULL);
INSERT INTO `gua64` VALUES (45, '萃', '000110', NULL, NULL, '萃，亨。王假有庙，利见大人，亨，利贞。用大牲，吉，利有攸往', NULL, '有孚不终，乃乱乃萃。若号，一握为笑：勿恤，往，无咎', NULL, '引，吉，无咎，孚乃利用禴', NULL, '萃如磋如，无攸利，往，无咎，小吝', NULL, '大，吉，无咎', NULL, '萃有位，无咎，匪孚；元，永贞，悔亡', NULL, '赍咨涕洟，无咎', NULL);
INSERT INTO `gua64` VALUES (46, '升', '011000', NULL, NULL, '升，元，亨，用见大人。勿恤，南征，吉', NULL, '允，升，大吉', NULL, '孚乃利用禴，无咎', NULL, '升，虚邑', NULL, '王用亨于岐山，吉，无咎', NULL, '贞，吉，升阶', NULL, '冥升，利于不息之贞', NULL);
INSERT INTO `gua64` VALUES (47, '困', '010110', NULL, NULL, '困，亨。贞，大人吉，无咎。有言，不信', NULL, '臀困于株，入于幽谷，三岁不觌', NULL, '困于酒食，朱绂方来，利用享祀；征，凶，无咎', NULL, '困于石，据于蒺藜，入于其宫，不见其妻，凶', NULL, '来徐徐，困于金车，吝，有终', NULL, '劓刖，困于赤绂；乃徐有说，利用祭祀', NULL, '困于葛藟，于臲兀危；曰动，悔；有悔，征吉', NULL);
INSERT INTO `gua64` VALUES (48, '井', '011010', NULL, NULL, '井改，邑不改。井，无丧无得，来往井井，汔至，亦未繘井，羸其瓶，凶', NULL, '井泥，不食；旧井无禽', NULL, '井谷射鲋，瓮敝漏', NULL, '井渫，不食，为我心恻；可用汲，王明，并受其福', NULL, '井甃，无咎', NULL, '井冽，寒泉食', NULL, '井收，勿幕；有孚，元，吉', NULL);
INSERT INTO `gua64` VALUES (49, '革', '101110', NULL, NULL, '革，巳日乃孚，元，亨；利贞，悔亡', NULL, '巩用黄牛之革', NULL, '巳日乃革之，征，吉，无咎', NULL, '征，凶；贞，厉。革言三就，有孚', NULL, '悔亡。有孚，改命，吉', NULL, '大人虎变，未占，有孚', NULL, '君子豹变，小人革面。征，凶；居贞，吉', NULL);
INSERT INTO `gua64` VALUES (50, '鼎', '011101', NULL, NULL, '鼎，元，吉，亨', NULL, '鼎颠趾，利出否。得妾以其子，无咎', NULL, '鼎有实，我仇有疾，不我能即，吉', NULL, '鼎耳革，其行塞，雉膏不食；方雨亏悔，终吉', NULL, '鼎折足，覆公餗，其形渥，凶', NULL, '鼎黄耳、金铉，利贞', NULL, '鼎玉铉，大吉，无不利', NULL);
INSERT INTO `gua64` VALUES (51, '震', '100100', NULL, NULL, '震，亨。震来，虩虩，笑言哑哑。震惊百里，不丧匕鬯', NULL, '震来，虩虩，后笑言哑哑，吉', NULL, '震来，厉，亿丧贝。跻于九陵，勿逐，七日得', NULL, '震苏苏，震行，无眚', NULL, '震遂，泥', NULL, '震，往来，厉。亿无丧，有事', NULL, '震索索，视矍矍，征，凶；震不于其躬，于其邻，无咎；婚媾有言', NULL);
INSERT INTO `gua64` VALUES (52, '艮', '001001', NULL, NULL, '艮其背，不获其身；行其庭，不见其人：无咎', NULL, '艮其趾，无咎，利永贞', NULL, '艮其腓；不拯其随，其心不快', NULL, '艮其限；列其夤，厉，熏心', NULL, '艮其身，无咎', NULL, '艮其辅，言有序，悔亡', NULL, '敦艮，吉', NULL);
INSERT INTO `gua64` VALUES (53, '渐', '001011', NULL, NULL, '渐，女归，吉；利贞', NULL, '鸿渐于干，小子厉；有言，无咎', NULL, '鸿渐于磐，饮食衎衎，吉', NULL, '鸿渐于陆，夫征不复，妇孕不育，凶。利御寇', NULL, '鸿渐于木。或得其桷，无咎', NULL, '鸿渐于陵，妇三岁不孕，终莫之胜，吉', NULL, '鸿渐于陆，其羽可用为仪，吉', NULL);
INSERT INTO `gua64` VALUES (54, '归妹', '110100', NULL, NULL, '归妹，征，凶，无攸利', NULL, '归妹以娣，跛能履，征，吉', NULL, '眇能视，利幽人之贞', NULL, '归妹以须，反归以娣', NULL, '归妹愆期，迟归有时', NULL, '帝乙归妹，其君之袂，不如其娣之袂良；月几望，吉', NULL, '女承筐无实；士刲羊无血；无攸利', NULL);
INSERT INTO `gua64` VALUES (55, '丰', '101100', NULL, NULL, '丰，亨。王假之，勿忧，宜日中', NULL, '遇其配主，虽旬，无咎；往，有尚', NULL, '丰其蔀，日中见斗，往，得，疑，疾；有孚发若，吉', NULL, '丰其沛，日中见沬，折其右肱，无咎', NULL, '丰其蔀，日中见斗，遇其夷主，吉', NULL, '来章，有庆誉，吉', NULL, '丰其屋，蔀其家，窥其户，阒其无人，三岁不觌，凶', NULL);
INSERT INTO `gua64` VALUES (56, '旅', '001101', NULL, NULL, '旅，小，亨；旅，贞，吉', NULL, '旅琐琐，斯其所取灾', NULL, '旅即次，怀其资，得童仆，贞', NULL, '旅焚其次，丧其童仆，贞，厉', NULL, '旅于处，得其资斧，我心不快', NULL, '射稚，一矢亡，终以誉命', NULL, '鸟焚其巢，旅人先笑后号咷；丧牛于易，凶', NULL);
INSERT INTO `gua64` VALUES (57, '巽', '011011', NULL, NULL, '巽，小，亨，利有攸往，利见大人', NULL, '进退，利武人之贞', NULL, '巽在床下，用史、巫纷若，吉，无咎', NULL, '频巽，吝', NULL, '悔亡，田获三品', NULL, '贞，吉，悔亡，无不利。无初有终；先庚三日，后庚三日，吉', NULL, '巽在床下，丧其资斧，贞，凶', NULL);
INSERT INTO `gua64` VALUES (58, '兑', '110110', NULL, NULL, '兑，亨，利贞', NULL, '和兑，吉', NULL, '孚兑，吉，悔亡', NULL, '来兑，凶', NULL, '商兑，未宁；介疾，有喜', NULL, '孚于剥，有厉', NULL, '引兑', NULL);
INSERT INTO `gua64` VALUES (59, '涣', '010011', NULL, NULL, '涣，亨。王假有庙，利涉大川，利贞', NULL, '用拯，马壮，吉', NULL, '涣，奔其机，悔亡', NULL, '涣其躬，无悔', NULL, '涣其群，元，吉；涣有丘，匪夷所思', NULL, '涣汗，其大号，涣王居，无咎', NULL, '涣，其血去狄出，无咎', NULL);
INSERT INTO `gua64` VALUES (60, '节', '110010', NULL, NULL, '节，亨；苦节，不可贞', NULL, '不出户庭，无咎', NULL, '不出门庭，凶', NULL, '不节若，则嗟若，无咎', NULL, '安节，亨', NULL, '干节，吉，往，有尚', NULL, '苦节，贞，凶，悔亡', NULL);
INSERT INTO `gua64` VALUES (61, '中孚', '110011', NULL, NULL, '中孚，豚，鱼，吉；利涉大川，利贞', NULL, '虞，吉；有它，不燕', NULL, '鸣鹤在阴，其子和之；我有好爵，吾与尔靡之', NULL, '得敌，或鼓或罢，或泣或歌', NULL, '月几望，马匹亡，无咎', NULL, '有孚挛如，无咎', NULL, '翰音登于天，贞，凶', NULL);
INSERT INTO `gua64` VALUES (62, '小过', '001100', NULL, NULL, '小过，亨；利贞。可小事，不可大事。飞鸟遗之音，不宜上，宜下，大吉', NULL, '飞鸟，以凶', NULL, '过其祖，遇其妣；不及其君，遇其臣，无咎', NULL, '弗过，防之；从，或戕之，凶', NULL, '无咎，弗过，遇之；往，厉，必戒；勿用，永贞', NULL, '密云不雨，自我西郊；公弋，取彼在穴', NULL, '弗遇，过之；飞鸟，离之凶：是谓灾眚', NULL);
INSERT INTO `gua64` VALUES (63, '既济', '101010', NULL, NULL, '既济，亨。小，利贞；初吉，终乱', NULL, '曳其轮，濡其尾，无咎', NULL, '妇丧其茀，勿逐，七日得', NULL, '高宗伐鬼方，三年克之，小人勿用', NULL, '繻有衣，袽，终日，戒', NULL, '东邻杀牛，不如西邻之禴祭，实受其福', NULL, '濡其首，厉', NULL);
INSERT INTO `gua64` VALUES (64, '未济', '010101', NULL, NULL, '未济，亨。小狐汔济，濡其尾，无攸利', NULL, '濡其尾，吝', NULL, '曳其轮，贞，吉', NULL, '未济，征，凶；利涉大川', NULL, '贞，吉，悔亡；震用伐鬼方，三年有赏于大国', NULL, '贞，吉，无悔；君子之光，有孚，吉', NULL, '有孚于饮酒，无咎；濡其首，有孚，失事', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
