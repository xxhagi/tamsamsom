CREATE DATABASE  IF NOT EXISTS `news_stack` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `news_stack`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: news_stack
-- ------------------------------------------------------
-- Server version	5.6.34-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(30) NOT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `inserted` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  KEY `category_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'\'허가냐 불허냐\' 국내 첫 영리병원 \'녹지국제병원\'의 운명은','국내 1호 영리병원으로 추진돼온 \'녹지국제병원\'의 운명이 이번 주 안으로 결정된다. 제주도는 4일 “이번 주 안으로 녹지국제병원에 대한 허가 여부를 결정하겠다”고 밝혔다. \r\n\r\n녹지국제병원은 지난 10월 4일 제주도민공론조사에서 ‘불허’ 결론이 내려졌다. 원희룡 제주도지사는 그 동안 이 공론조사 결과를 존중하겠다는 입장을 밝혀왔다. 하지만 제주도 내에서 찬반 여론이 팽팽히 맞서면서 최종결과는 끝까지 지켜봐야 할 상황에 놓였다.\r\n\r\n지난 3일 오전 원 지사는 녹지국제병원을 직접 돌아본 후 서귀포시 동홍동을 찾아 지역주민과 간담회를 가졌다. \r\n\r\n김도연 동홍동 2통 마을회장은 원지사에게 “녹지국제병원 개발사업은 오직 지역의 발전을 위해 동의하고 협력해온 사업”이라며 “개원 허가가 지연되면서 1년 새 병원 건물은 흉물이 됐고, 채용된 직원들은 6개월 넘게 휴직하는 등 오히려 지역 발전을 더디게 하고 있다”고 말했다.\r\n오금수 토평동 마을회 부회장도 “지역 자체가 의료관광단지를 개발하기 위해 설계됐던 만큼 그방향으로 추진되야 한다고 보고 아니라면 토지에 대해서도 다시 생각을 해봐야 하지 않나”고 말했다.\r\n\r\n제주도는 이날 지역주민 간담회에 앞서 ‘녹지국제병원 개설허가 관련 총괄 검토회의’를 열었다. 참석자들은 이날 회의에서 신속한 결정을 통해 불확실성을 제거하고 투자자 신뢰를 회복해야 한다는 데 의견을 모았다. 또 숙의형 공론조사위원회의 권고를 최대한 존중해야 하지만 행정의 신뢰성과 신인도, 좋은 일자리 창출 등 지역경제 회복을 고려해 최종결정을 내려야 할 시점이라는 의견도 나왔다. 제주도는 찬반 여론이 거센만큼 이 병원을 비영리병원으로 운영하는 방안이나 국가·지방자치단체 등 책임질 수 있는 주체가 인수하는 방안 등도 여전히 열어놓고 있다.\r\n\r\nhttps://news.v.daum.net/v/20181204135743032','최충일','jeju.jpg','2018-12-04 17:06:35',NULL),(3,1,'[단독]양승태 대법원, 일 전범기업 쪽 소송서류 감수해줬다','‘양승태 대법원’이 일제 강제노역 사건 재판에서 일본 전범기업을 대리한 국내 최대 로펌 김앤장 법률사무소의 소송서류를 검토해준 정황이 드러났다. 한-일 관계 파탄을 우려한 외교부 쪽 의견서를 감수해준 데 이어, 손해배상청구 소송을 당한 전범기업 쪽에 ‘소송에 유리한 서류를 내라’고 알려주고 다듬어주기까지 한 것이다. ‘저울’을 들어야 할 대법원이 ‘원고’인 피해자의 주장은 외면한 채 ‘제3자’인 정부(청와대와 외교부)와 ‘피고’인 일본 전범기업(김앤장 대리) 쪽과 재판 진행을 ‘짜고 친’ 것이어서 파장이 예상된다. 서울중앙지검 사법농단 수사팀(팀장 한동훈 3차장검사)은 3일 박병대·고영한 전 대법관의 구속영장을 청구했다. 범죄 혐의로 전직 대법관의 구속영장이 청구된 것은 사법사상 처음이다. ▶관련기사 4면\r\n\r\n<한겨레> 취재 결과, 두 전직 대법관의 구속영장에는 2015년 5월 임종헌 전 행정처 차장(당시 기획조정실장)이 김앤장 송무팀을 이끄는 한상호 변호사를 직접 만난 사실이 포함돼 있다. 임 전 차장은 한 변호사에게 김앤장이 대법원에 제출해주면 좋을 의견서 작성과 관련한 지침을 전달했다고 한다.\r\n\r\nhttps://news.v.daum.net/v/20181204050609717','김양진 최우리 ','yang.jpg','2018-12-04 17:15:21',NULL),(4,4,'주차장 봉쇄한 \'송도 불법주차\' 차주.징역 6월 집행유예 2년','(인천=연합뉴스) 최은지 기자 = 인천 송도국제도시 한 아파트 단지에서 주차 위반 경고장을 받았다는 이유로 지하주차장 진입로에 차를 댔다가 공분을 산 50대 운전자가 재판에 넘겨져집행유예를 선고받았다.\r\n\r\n인천지법 형사5단독 장성욱 판사는 일반교통방해 및 업무방해 혐의로 기소된 A(50)씨에게 징역 6월에 집행유예 2년을 선고했다고 4일 밝혔다.\r\n\r\nA씨는 올해 8월 27일 오후 4시 17분께 인천시 연수구 송도국제도시 한 아파트 지하주차장 진입로에 자신의 캠리 승용차를 7시간 동안 주차해 교통을 방해하고 관리사무소 직원들의 주차장 관리를 방해한 혐의로 기소됐다.\r\n\r\nA씨는 아파트 관리사무소에 자신의 승용차에 붙은 주차 위반 경고장을 떼 달라고 요청했다가 거절당하자 주차장 진입로를 막은 것으로 조사됐다. 그는 올해 초 승용차를 관리사무소에 등록했지만, 따로 주차 스티커를 붙이지 않아 경고장을 받았다.\r\n\r\n당시 불법 주차에 화가 난 아파트 주민들은 A씨의 승용차를 인도로 옮긴 뒤 경찰에 신고하고, 경고성 쪽지를 차에 빼곡히 붙이며 불만을 토로했다.\r\n\r\nhttps://news.v.daum.net/v/20181204164749836','최은지 ','songdo.jpg','2018-12-04 17:16:27','2018-12-04 17:46:34'),(5,2,'외교부 \"한일관계 도덕적 배경있어..日, 눈감아선 안돼\"(종합)','(서울=연합뉴스) 이정진 기자 = 외교부 당국자는 4일 일본이 자국 기업들에 대한 우리 대법원의 강제징용 배상 판결에 반발하는 것과 관련, \"일측이 금번 사안을 법적인 문제로만 치부하면서 과거 양국간에 있었는데 불행한 역사로부터 기인하는 문제들에 대해 눈을 감아서는 안 된다\"고 지적했다.\r\n\r\n이 당국자는 이날 기자들과 만나 현 단계 정부의 입장에 언급, \"일본 측이 한일관계를 중시한다면 책임있는 자세로서 역사문제에 대해 진정성을 가지고 임해 줄 것을 기대한다\"고 촉구하며 이렇게 말했다.\r\n\r\n그는 \"특히 일본 측이 금번 사안을 과거사 문제에서 벗어나기 위한 호기로 생각해서는 안 될 것\"이라고 강조했다.\r\n\r\nhttps://news.v.daum.net/v/20181204165935273','이정진 ','jap.jpg','2018-12-04 17:17:14',NULL),(6,2,'뜨거운 감자로 떠오른 \'연동형 비례대표제','“문재인 대통령과 이해찬 더불어민주당 대표 모두 연동형 비례대표제가 피할 수 없는 것을 알고 있지만 피하고 있다. 자유한국당은 의원 정수를 핑계로 선거제도 개혁을 피하고 있다.”\r\n\r\n지난 11월 28일 국회 본청 2층 계단. 손학규 바른미래당, 정동영 민주평화당, 이정미 정의당 대표 등 야3당 대표와 의원·당직자 100명이 피켓을 들고 모였다. 평소 국회의원들이 본회의를 마치고 내려오던 빨간 카펫이 깔린 계단을 웅변대 삼은 이들은 더불어민주당과 자유한국당 등 거대 2당을 겨냥해 ‘기득권 양당은 결단하라’고 압박했다.\r\n\r\n예산 국회가 한창인 요즘 이들 3야당의 관심은 온통 ‘연동형 비례대표제’에 쏠려 있다. 정치개혁특별위원회의 활동이 끝나는 연말까지 어떻게든 민주당과 한국당으로부터 연동형 비례대표제를 포함한 선거구제 개편에 대한 확답을 끌어내겠다는 심산이다. 특히 예산안 처리를 위해 이들 야당의 도움이 절실한 민주당을 향한 압박 수위가 그 어느 때보다 높다.\r\n\r\nhttps://news.v.daum.net/v/20181204102737119','김형호 ','pol.jpg','2018-12-04 17:18:27',NULL),(9,3,'카타르 OPEC 탈퇴..가스株 수혜 입나','권가는 카타르가 석유수출국기구(OPEC)를 탈퇴함에 따라 다른 회원국의 탈퇴 \'러쉬\'로 이어질 가능성이 있을지 주목하고 있다.\r\n\r\n또 카타르가 액화천연가스(LNG)를 증산하게 되면 가스업종이 중장기적으로 수혜를 입을 가능성이 높다고 보고 있다.\r\n\r\n카타르는 전날 OPEC에 탈퇴하겠다고 깜짝 발표했다. 기자회견에 나선 사드 셰리다 알-카비 카타르 에너지 장관은 카타르가 오는 2019년 1월부터 OPEC에서 탈퇴할 것이라고 전했다.\r\n\r\n카타르의 OPEC 탈퇴는 OPEC를 주도하고 있는 사우디아라비아 등 다른 아랍 산유국과들과의 갈등과 산유량 상한선을 정해놓고 있는 OPEC의 구속으로부터 벗어나 산유량을 마음 놓고 늘리려는 의도가 있다는 관측이 제기된다.\r\n\r\nhttps://news.v.daum.net/v/20181204165219011','류병화','opec.jpg','2018-12-04 17:24:09',NULL),(13,0,'누리호 엔진시험발사체에서 천리안2A까지 \'우주 향한 큰걸음\'','공동취재단 이주영 신선미 기자 = 5일 새벽 남미 프랑스령 기아나 우주센터에서 기상위성 천리안2A호가 발사되면 한국형 우주발사체 \'누리호\' 엔진시험발사체로 시작해 차세대소형위성 1호 발사로 이어진 10여일의 한국 우주탐사 이벤트가 절정을 맞는다.\r\n\r\n우주발사체 개발과 위성 개발·제작 능력은 우주 강국을 떠받치는 두 개의 큰 축으로, 천리안 2A호가 정지궤도에 안착해 정상 작동하는 것이 확인되면 우주탐사를 향한 우리나라의 발걸음도 한층 탄력을 받을 것으로 기대된다.\r\n\r\n누리호 엔진시험발사체 발사와 차세대소형위성 발사, 천리안 2A호 발사는 애초 10월 25일에서 12월 5일까지 한달 이상 시차를 두고 진행될 예정이었지만 예상 못한 일정 조정이 이어지면서 10여일 사이에 연속으로 진행돼 더욱 큰 관심을 끌고 있다.','공동취재단 이주영 신선미 기자','rocket.jpg','2018-12-04 17:38:33',NULL),(14,6,'누리호 엔진시험발사체에서 천리안2A까지 \'우주 향한 큰걸음\'','5일 새벽 남미 프랑스령 기아나 우주센터에서 기상위성 천리안2A호가 발사되면 한국형 우주발사체 \'누리호\' 엔진시험발사체로 시작해 차세대소형위성 1호 발사로 이어진 10여일의 한국 우주탐사 이벤트가 절정을 맞는다.\r\n\r\n우주발사체 개발과 위성 개발·제작 능력은 우주 강국을 떠받치는 두 개의 큰 축으로, 천리안 2A호가 정지궤도에 안착해 정상 작동하는 것이 확인되면 우주탐사를 향한 우리나라의 발걸음도 한층 탄력을 받을 것으로 기대된다.\r\n\r\n누리호 엔진시험발사체 발사와 차세대소형위성 발사, 천리안 2A호 발사는 애초 10월 25일에서 12월 5일까지 한달 이상 시차를 두고 진행될 예정이었지만 예상 못한 일정 조정이 이어지면서 10여일 사이에 연속으로 진행돼 더욱 큰 관심을 끌고 있다.','이주영 신선미','rocket.jpg','2018-12-04 17:39:45',NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'사회'),(2,'정치'),(3,'경제'),(4,'국제'),(5,'문화'),(6,'IT');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `inserted` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jane','jane@abc.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2018-11-02 17:53:54',NULL),(2,'Mike','mike@def.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-03 17:54:45',NULL),(3,'Tom','tom@goo.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-04 17:55:04',NULL),(4,'Rob','rob@yaho.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-11-04 17:55:39',NULL),(9,'Kiehls','kiehls@ny.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2018-12-05 01:11:48',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05  1:21:59
