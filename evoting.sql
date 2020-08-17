-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: EVOTING
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CANDIDATE`
--

DROP TABLE IF EXISTS `CANDIDATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CANDIDATE` (
  `CANDIDATE_ID` varchar(20) NOT NULL,
  `PARTY` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(30) DEFAULT NULL,
  `SYMBOL` blob,
  `CITY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`),
  KEY `fk_CANDIDATE_1_idx` (`USER_ID`),
  CONSTRAINT `fk_CANDIDATE_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER_DETAILS` (`ADHAR_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CANDIDATE`
--

LOCK TABLES `CANDIDATE` WRITE;
/*!40000 ALTER TABLE `CANDIDATE` DISABLE KEYS */;
INSERT INTO `CANDIDATE` VALUES ('C101','bjp','101',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%!1\"%)+...383-7(-.+\n\n\n\r\Z+----+-+.--+..7-++-/.--------+-----++--++---+------ÿÀ\0\0\á\0\á\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0I\0	\0\0\0\0!1AQ\"aqÁ#2R‚‘3Br’¡±¢$bc“\ÑCS³\Â\Ã\Ò\áðñ%st£ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0.\0\0\0\0\0\0\0\0q!1\"34AQa‘#2¡$±Áðÿ\Ú\0\0\0?\0\å.ž\èS®A¬=Ö®\Í}·\È\ï%’´öo\í¾Wy-{¯&\\v¦£­K2§U¼œ™6t% Œó¤&\î@\äÀ©\Â\"Q7rq(Q\è£F\ÔN\ÔË¬\îR*0\ÉcÜ®fX\å§0®‘CtŠ\\	9WqS!sS!\ãÐŒ\"BfL\ÆdnVb\Üw#…ü.Á%Ðœ¦Ot\Éb)H„%”\Ó\Ý@£`;¤š\é 0yÅ“)¬…Á[òyþ@Z»4\ß]ò;\Ée…­³?mò;÷×“.\r\ËSQÓ‘RZ\É1ªµ’ñ’0ÒŸ)\n\ÐhMÕ…\Å\ÞSr®:¡\ên™I¦ˆ,š\êÈ¥<\Ôn§=É”—\È\Êqù!W#\Ü-ƒš±t²b\Íç°‘Üš\'pIŽ‚c¡!	ˆDR#$Oj+‚\0\Õ)Ž™He¨HM‘²s\Í1q\æ’d\Ð´ÿ\0\ØF×’‹*#(2Ÿ°ùŠW)‘( Y$\È\î’8$.N™ÁZ<\ëOg®ùû…š´vs\í¾Gy,W>L¸7,=M>Q\×]GT\rGU–]\ßbdé¬š\éA(\Ü@DJ\Êb†Š\È]b\ä\É\0›\áJ\äœTN)’!\ÉO¬n€<\Ð=€±Í¾\â\àEü.Ÿkk±-®\ß$\É8 c´DWXpaÀ.F\Ô \'Œ\à›*‘1\Èd„„\ÖS†¥dd\ÄI‘)‰C$ˆ#,Q\Éd”¹{‚H\ÈnGŸ¦)$U¬óÀ–\Í}·\È\ï%šVž\Í}·\Ê\ï%Š\çÉ—å‡©§\Ê:Æ©\"Q5J\ÅYe\ÞEšx\Þ\Ö6\×q\0|y¦Å±¬&ŽC\rUi7\Úlq½\ÙO\"Z\Â\î½\Õy&s,\æ9¤y¨X}(a\ÔC0!1½‘\ÖEw4= †‚\\\Ò:€\r\ïg7’\íhööõw*‘\Ëö\à\â\êUkSÃƒ\Â:z\n\ì2ªÂ—Œ¸\îl—Ç¸5\á§ôK\Âe‡W·³\ï\r[õ\áñUODXMm<sRu°¶F±Ì¼Y\ÂösdÍ»u–Ž\Åð:\Ó\éø}\ì\ë\Ü\äiñ¹ˆø’\Î\Ê\ê\ÖÑ­\æ¼k4¨ê•©¿‰>\Ôc˜dK-$•\ršÀ\È\×7#]l\Ùuv„‹‘§®‹\"ƒnðj‡d_Dóku \ä\×Q¨.\0w›.š†–Ã¦ŽžL\Ôó4ÙŽö\é§«[\î\Ù\Öu¾—\\÷Føt¦úLB\É-$Žƒ>\éš\Ñ\ìZA¨·i¼¬Á{­¨YQpQ•5ø5\åwUM\Ê3“KÁŸŒse„‹‰# ‹s6\á\Þ.H­•û5P2¹\Õ|Žö]\ìm<#–\ÜFŽ\äl@\î\r$UQGU‡œñL@\Ë\Æ\'“b>\íŽñ\ÃÀ®5ö“ôütz¯ƒ³cª\îðV\èþ@À\é\ãnzº‚;K\ÜN\âZ.¸ÿ\0‡±!ŒV¢¢Ž¤u®s\é\r€,\r\ZDH\Þ\ë75ø\Ý\ãu‚­\Ò<¯ª¨§À(Ž€µõ/\Z‹û]»ph»\È\æX7…c¤\ím-,˜srKB˜´vŸ\rú\×[{šë¸ž »]{K8Ò¡ôä³ž\ç&\îòUk}DñŽ\Åó˜\ç1\ÂÅ¦\Ç\Äy-?	t29ÍŽ&‹ºG›4¼‹þû•ªZúZºXñI#‡ª\Í8\äøôsyû@Žg³m\ëŠd›G!±u.¬\Ð²–ž[œ\ï\åoy½ùT4_Õ“©ûS\é÷7«j­Ál^\'\ß\ìX\Æ:KÂ©Ie<O­\\g=ˆ®\à\ç\ru\â\ZGy[[´qbtµ¾‰´Íˆ\åkóf}¯af·u\Ûù‚±´;5A„\áµS\Ò\Ç\Ö2\"$­\Èdq\rc‹Ÿ~.\Â\ÃD!ƒ2<Œ>A_¤\Ô<.À¹\Ý\í\r°^¥­(\Òq…5ø9¯7QJS`\ÐQ\É1´l\Í\Ì\î\Ä\îRbN¡¤¿¦\×\Å€¹cNi\0ü\"\îþU\Îz»{©p€i(Xr¾¤‚\×<q±\Þ	½\Ã[Úµ‹ˆ½—AG\ÑvC\çªkªmt’I;‰\î\"6\Øx^\ç]\ëF\ÛD£úž\'üuµ:³~\nþJt»M‚\Ìö\Ç{\Ã\Ül\Òø¤kI;µt`‰\n|Z\ÐHcq\èAA\Ü{—5\ÑýI>7-4pÁºº8Æµ¹†\Ö´ý@\ÍÌ¸ý\ÑmW\×>gd7sµ\î€Ájj\Ö\Öô¢¶Gû|š]Z\Õd÷¼\Çý‡™\0Q®\Übó!hF¡ˆ\ÆÎ’{$ <LJ„\ÊÛ“\ÏS\0­-šûo•\ÞK9\áil\Ñõ\ß+¼–Ÿ&\\–¦£¬+¦Œ\\©\ì«Mà»·†F\íÚ«;3NÙ½*…þ\ÅL-\Ç}”!cõk6¬€xc‚\Ü\Ók};ˆ\ã\Ý\ãòh\ßENŒ–=Š\Ý\0\âNuÔ’{t³¹¶\âû\Î\Ù§\Ëp-pA\\w‚ð¼‡£Gˆ±üVœny|–ü2ƒÿ\0ýW°+ÁT<gh0‡\ìýX\Ä(Áu®©€n1Ð·º\ç²x\Î\ç+}\Ìev%P›-Hp™\Îò>®\éb¬E„V8\ÛX²k\ÎW¶1ñ\í_\à²ú\Ã8LNµ3\ä•ß˜±¿\ËO\Å\0vx\ÖT‚v\æŽF–¸~\Ä\Ä/Ÿðlf}›¯¨¦˜:H^\Â\æŽ6=D\Í.FW|w\å\è\å\â%ÓŒS¤Ã˜XZL\ï\Ðk\ì÷´ž\æ5¶\ï‘\0nô\'³Žd/Äª{U5„¿1\Zˆœ\ì\ß\Î{^«\Ó%`p-pAqB\nh¢\rhk@\rh\0 \0\0;‘ œ«öRv\âc\ëŒtSO\é,¶h\Ë	°\æ\à\æ€t\ÌÛ¯¡pú(á‘D\Ð\È\Ø\ÐÖ´n\0/;\é\Ë	q¦Š¾&¢•’\'!syrpc¼]\Î\Ì\ã\r«¥†¥š	ck­¿+¾ó~ð@=/RpŠ°7µÿ\0\Þ×Ÿ\Ð\åT5ò\ã, \Â)Ë™O:®Aq¬c);À\Ð\Î\î¯}Ä©\ÑI·HÇ°ø9¤\Ýy_ðñL\Èá­\Í¡•’9Z\Û5¾\ÂOª\0õ\nŠ–A#`³Z?ROM\É<I^üAbn‹\r´Û¯™Œ6÷Z\Èúµ«\ÓWÿ\0,þ§LyTõ\ß\ä€\'\ÆhºŠ<>¾\Ë \Ï v­\âd?V6\ØYmm8\Í\èŽ\Z\æ¦g\ìšÇ²§\ê³n\æIû\Í.)[¦‚:dc¹s\rö ôY¶2T\ì€qJ\ÚB6‘d•ž¬$—rz<\ä¦H¤­§Ÿ¡Š\Ñ\ÙÁ\ë¾Gy,õ¥³c\×xµ\ÞK\rÏ“.\r\ËSQ\ÖB  Œ\"º¬²\ë ˜Uœ5ö©€ÿ\0x\ÑùŽ_5R\éŸ.G2Oq\íw\åp>K%¶¬eðÑ‚¼s¾\Æ~\ÊÝ¬®K\Ç\'Ðˆ\\<—³/\Ä)v®«€ð.s\0¿;\ÄÏ¨^À½§ž{\ÓÃ¿ö‰{\ä„úä·º7m°º/þ´G\ê\ÐJ\Éé²˜¿©¶ö˜Ÿðl¬¿\èJ\Ðè¶¤I„\Ñ8nµŸÉŒþ­(¦©¬cž\ãfµ¥\Î<ƒE\Éú\ä\Ý\Ó:¢Z\ìRQÛžR\Æ_{[~±\àZ\Æ>E\Øô­[\Ô\á5Ž\çüb#ÿ\0}D”&‘ [4}a\ï2¸¾ÿ\0B^’I \n˜½j –û2\Æø\Ý\àö–Ÿ\Ýy—ðÿ\0\\\á\rU‡·M9Ó}\Ú\à<Ì½ax\ÞÈŸGÚš\èF•Žu¹¹\Â9ý_õ@È¼¯cÇ£\í&%N™4Bqø\ï\Ô\Ë!^¨¼²n\Î\Ö2\ß~ˆ\ß\à\×\Ê©¯.þ\"!¾\Ç{µ,?VH<×¨¯)þ\"\ê\Ãpø£\âú†ýÇ’Qõ@%¾‹‘\ÇWR2þ&8š©,|UüR¦\Z\ZõT¬ixì±ºþBª*N¬ÿ\0«–>\ß\á}9µB?÷¹\\F¥I—9³}°‚t6\ïL\\—\à+÷~\É L§ƒ\Ï\ÉÕ¼¡	j\ì\Ðõÿ\0+¼–R\ÕÙ‘\ë¾Gy,^L¸6¬}D9GXœ&2¬—pÏ«HNS_š”CYFOI”Ï¨\Ãik\á$OC&W‘©\r»ló\à\æ\Æï˜¯U\Øý¡Ž¾’*˜þû{M÷$\Z=‡Àþ–\\&ˆE\ß\à\Zj†˜\ä\Ùnc\ÈX~‚\äpÚ©öktR‡IC9¸p\âÑºFð\ë\ZGÁ^,.j)û®Œ©]\ÑtªµŽ±\îxþ*i§§;¥‰ñøfi\0þ«\Î:\0\ÅO£OC.’\ÓJ\î\É\Þòn>ýBô¬\'†¦&\ÍO#d\ÃG4\ÜwƒÈŽ \ê\íý¸>*\Ì^—S\Ì\ìµ@\\\0‘½\ÙÀ\Î	ûÀ÷ºj¿L\Ô\åø=Pnø2f8þ€­}‚p8m·z,ìšŽ«©Ä¨$<:*˜Ö¸p\Î\Ò\î ð\àB\åú\Æz\ÚE“I\è\Þ\èda\Þc‘ðs|XP¡¤’H/v»_\Ù\ák»ú·þ±=\àI\0\0I\'py+\Èú*\Óq\\C·«\Îa„ó|Dló ^^g…·¯\Úz™­¦¤ddÿ\0xü¤£Ÿô]ž\×mT²T\Êthì·Œ>\Ë\ÞO\Ð\\ðX`’CJúš‘ýf¶CQ.–-ÕŒ±\ÔhI·\Ö\à€;…\â\Ûv¥1úJv¢¦³\æ\å{‰%\å³\Å\Åw½$m¤xe)y \Îð[~ó½÷q»\ÏÀq\\F\Ç\áo\Ãhäª¨$\âÄ‘›ÛŽ7%\ßÚ»‹yh\à’¥EN.Rì†„ä¢½\Íln·®«‘\ãV´õmðfÿ\0\æÌ¢!V¢‹+U¦…A¹ª\êU”ß»-\Ô`©\ÓQø\".DÒj6´,-™[@’š\êBjÄ’{&S’O9D	Õ¸ µ¶húñø]\ä²V®\Í^?¼–½×“.\r«QQ\Ö\Ù$®*´]€r¥-@B”\ÆL«[\0x²Ö lg”b\Â7P°­\Ò_¬\\Z;k¦\æ‘Ú¾‚\áS\r\Zd©\\÷LŽšjø(£§žZjvD÷E\âü\ä\æ=u\Ê\Ò\ÐNë»½X48JR”³\Ñ]bqQŒqÕ˜[³uó\Ï,¸#§¥¥¹\Ë%D¹­÷\\y\ßÁÀq+¦Ä¶7ij\Ø\êzšÈŒFÁ\×{C4;£1x\à¶0^—\éas)ªhf¡k@km\ÚÆaveÀ\êtuL•’\'µ\ìp®ik\ÜAÕ”\à-…\ì¾5œô…µ´\î\ÖX[qÚ¶®k \èf\Þú\\h¹œcnE6&\ÚúH&§–AjºYÛ‘¯:\\‡o\ío¾PC›}oeô¡^\Ñv\Ìb¶¶¿ŒM”µ‘\Æþ\ÓŸ6™²Ö´\ÄNô\éû\'·4U\ì†f‡Ûµ\Èl¬<‹I\Ôw‹…\ÐOR\Æ4¹\ïkZ7—84Wžb}\nar›±³Aÿ\0\Ç%\ÇÀHeGÿ\0B\é	e][\Ú7\æi\Ýr\ÓúY\0aô«\Ò{*\Zpú	–R5A9c\Ê\ãbÆ»\Ý×´\íÖ½¯½m\á\Û{…aTq\Ò\Ó=\Õr1ºˆ\ZNy¯{žt\0žW [E¿C\Ñ6\ÏF\Î^\Ò\Òù\ç¼\\oa&\Ì=\à¹\î\áB—+O£\Ô\å\åhsÁ/e‹€¹·U~\ì\ÈÎ¥\é\Ò1T\âT\î–¯\ÕS1\ÙY¯£œ\×Xt\Öö\áÀYz)\éj¦¥¹p\Ü*¢WÏz¶\é¡9t?\êO£Œ›˜\ØO2\ÐO\Ö\Ël6Ö\rŒ\ß\Ú#±bò;Á»š;Í‚\0ñ}ž­,Æ›&\ÐG(™Å½I¦\'ß°Kwdq\Í:žc¹\Ú:Y½1îœ‡_\ì\Èöz½r†Ž\Öý÷\æ¹m»Ä«ñŠk³•±\Æ\ìñ\ÌI2\å·k+2‚ð\áÀ_P7\Ùu%S\æÁ¨¥ž\âV—Ew_3š\Ç=‚÷\Öö¿E\Î\Õ)¹\ÛÉ§Û©½§MFºMw\è\0(\ÅÒªK*Ke¡°/ª™\æú%b1Ü¢qN÷(œ\å)’\ÜrIWIN\Ñöœ\nI$­§Ÿ	i\ì\×\Û|ŽòY…hl\Ùõ\ß#¼–Ÿ&\\–¦£°bt1vU–]X\áG(R!‘¸.\åišHR\×m…y`cE‘¬G[uó]¿¢v¥\ÕKn\Þ\ît3µ\ã&‹xV\Æ\åØ€\íjY\Ôbô\ìž#§Z\Öå•‡\Þ\ìþ\í±\î*­\Ë\ât·¬e]+ú‰\Ó\â,l\Û\ßyia\ÓP­\ÔÑµÁeŠ	\"vhd|n\æ\ÇŸ·®Å®³\íS©Ê¸\Ò\Ó\ë†³vÿ\0¿VpG=\à\ÉDWÝ¿\Ùþu\Ê\ì\Õev\Ï\Õ:Z\ÚB\Új«:«9¬u\Ü[•À\Ü\îI\Ô\æ\Ë|\ã8²úT–ðmÿ\06[þ¨ð\í¥©€::\éP>ùã›´lw\ås¿cq\àºQ\Ô\èI\àÑ–ŸU,ž©cVD&¦•²0ñÁ÷\\Ó«]\ÜU÷¼\0I \0.I6\0\r\äžxN2W%A™\Ôb\ÒC{43e\Ümr\Û\î-p\ÜU½´\é<U‘a¸p:ªF2G½¹r0¸\Û¯3\Ã(#[®Šy\ê\Æ\î=Ò™•Ï¥Á\éä«Ÿ\Ù\ëZ\Ë\Ã7Áû\Ö\æl\Þò#±[E[ƒ6Xj0š™$¦I%»D€4!…®]A\ÞJ\éq:Á‡°a\ØhˆÀë¦°2>B\ÐI¿½k\\÷\ØZÊ.\Õ\âQ‹u\Ù\Ç÷Œk\ÖÀŸŠÒ©F\Ú\ßcn•Y\ÇrE™ºG\Åjý^„\Ê\Çô³‡·¾\ä5€øŸUh6z=\æ·”Wb/\í2+\æln;‰¿.€\æ©\Ú\\Fm9`\åZ\Ï\æ\Þ>ª­©s®\\M\É&\äžd\ëR\ãV„Wƒ¹µCLœŸ±b]ª\Ä_(”M”qZ:«{¥¶»‡‰¿++õX\ÔõEhcC/f°.w¸Ü›•aM`.\rmF­H¸·ÑxYÒ¦Ô’\ê‰ºd\à.q²=\Ó=ÉŠ€»T$JŽI	Bš\é‹\Ó`t‚ºJ<\Å%8\'i\ÂfI \Ô$+Yçƒ½h\ì\Øõ\ß+¼–j\ÑÙ¿¶…\ÞK\rÏ“.\r»SO”u±+¨#	Zk,»µ–J^…\ïºMbEŠ:\Ða\âŒ(Þ€\ã$\ã%€ž\Ê\Ë\ÝôR5\×Ü•¦+MZU\r\Ê\Â\Õ)´A›µ4¹ö~©®·¨eø]ì½¿\Ä\Õc`¸T0cX7PÀÎ¶Ždö2:	3>\Çq6¹]\ØI\Õ\à5„ÿ\0¥–6þ\Üw·\åw\ÑT\Â\é\ï´TkýW‰®\ìE3ÅøW«Ý¼ø*7i*òK\ä\Ó\Å\"ª Ÿõ¯ý\Ôf1\ÉD¹¦•\Û\ï,†ýÙ“µÊ›s,Õ“û²\ÙB8¥ö@†`\'Ê•–¾L™­FJM\Ñ8P\ÈbºWNP@i¶Š0\ÎjÁz…\áLX\ÑlŠB€#z,ˆÊ»ôI5’@:D\'LU ó€\n\ÒÙ¿¶ù]\ä³VŽ\Î_ò»\Éb¹òeÁ¹a\êiòŽµªVT±*\Ë.ò	1ŠpòDà£²°õ	)\Ó,Œµ+)\Zš@Á#3ûÛ›€µõ¿rxõj?!:›S¤\Â\ê$™œ9\èð&\×S¿	¨\Z¨T¶ÒŸ}cƒEP Wô{\âl…\Öi¼™\È\'\\\Ú\r4m¸\ß\ZaŽ\ÑDq&js\É^úf±­K\Ûüoð*Ê´*XY“\Ïö+ò\Ö*7\Ò+ù-ô‡ž§Áb³ˆ‘³\Ô[\î€	$‘»²ewÅ¼Ô›\0ÿ\0H\ÄñlM.cA‚ œù@(û1GùÖ†°\â\ZJÊ™«\Ø\êÚˆ¤V´\Ç\r\Å\ÜÖ¸\în€¦€X6Ë…Áj+\é m=.3„\Ã$öeisœ\âIsœø‰\'pøÚŒcµtK¡\Érn[™\Û\áøD\îÓ©“7´·S\Þ\ë+X<ÑŒÏ‰Àq:<ltPm”•Qá”¯›Žùm,±°¹µ\â\í\ê\Ý\Ìl\ßtk¿E\Ñ\Î\Ó\Å\rHmF:j™ \È\"|5628€\Ó\ÖJ\Û3—\Åq¥¡\Óiø\ÞNª\Õ\ê\'ûV\r°œ¹X\Ä\é2:3­·`‹…R\ê±88I\Æ]\ÑÞ„”â¤½\ÃN£\Ú\Â)Šw9G˜¨D$\'¹FÒ¤)¬˜n\ÄiY£	dS‘²\ÊS\"Ê’284\Å:gj<\ì£³¿oò¹g¥³¿n?–+Ÿ*\\–¦Ÿ(ëšŽ2GUYe\Ýö&I:VHb\ÊeDæ©‹\Z,f\rc†RŽK\ÛE[\ìVZq\Ër\èitUG4°VÁ[.X†Y)IdM:\rIvRþ\Í\ìA°=\ë‘\Ù|˜Sõ˜É‰ Ÿ\\\è\Ý\0\Ü\×;P\Û\Ú\ÃN^—kq*f†Fö½ƒsef{@‚\r¾*Gn1I\ÚX^È=Ko\ÄI#\àBºS¾£±u+³©¹)€ú¢\á¸i¯‚¢\ï™\ÒM~\ÐË¶\Ä\îû¶¶^kŸ\ØÍ‚s\ÜMf\Öec\Þ\éR0=\à]‘õN‘\ÛÍ…É°\ßÜ°púŠ\Úajyå‰¾\ë^r_ð{?¢*œGö\ê\ê\rÇ­{@#ˆ\r !_\ÓÁ.Æ¦N»Æ±·0@0\n~­¶±\íFÆ·@ž»M,¶6~9a¥–§\Ã()\äŽ\Æ\ç\ë`@Í”\ß-ˆuõ:.\n<s/¦On÷\Üþc¯\êž6\ÔJ\à\é\ä’R7\ç\Û\Â\çD•u(½½Æ§a7.½Ž³úEó9\ÒHFgo¶\á\È\àŠ\ë:Ž2”M*¡Y\æNM\ç%–ž#±ŒÐ¥©§²À\Ù-‰\ê+)4@!Y1NP…#	,ÁDJd\Øib\á%]:¡°\àIL’J\Üyð€Z\Û6/8ü.òYKWf¾\Û\åw’×ºòeÁµc\êa\Ê:§ ²$Äª\ÙyBS2nj \n\ZL†“,õ0\n™r¬¸¥k6°	C•)”°4ð@)\È)“¦\ÜþC¬úfòA\è\í\ä®¡!2›ù8!\ê\ÉŒrF„¦\Ë ‚•ŽQYH\Åh²\×]•;\ÙMü\Ò8˜\Ü±+‚Œ\"2T\"DP‰Šd2#¶©—&2\'Á•&tgwè’œ0\Ã8D’	j<\èEjl\ß\Ûü®òYAj\ì\ß\Û|®òX.¼™pm\Øú˜rŽ®\é’\rU¢ð5‘Y9	5¨\Èd6e	)‹’ûŽ‘)]’R$,©š\äwPA“=ª[$Q\ÉYÁ\r”\Ïj„„\é™S\"²`Q©`\ÇknŸ\"`Q\Ù+±4\'v\ä\í	œ”Oq”r›!PJSDx÷#Ì““–S0\É\'±I“‡)’VsÍ„V®\Í}·\Ê\ï$’Xn¼™pnXúˆrŽ©$’U¢ð8DÔ’P\Èbvô\ÏóI$\"_ôH$’€ŠR’J²1I%õI$\èxö8I$ÃŽ©$•ˆ\ÇjI$”QŠ­*I\'ˆð\îF’NfI$€?ÿ\Ù','bhopal'),('C102','incong','12345678922','','bhopal'),('C103','aap','12345678955',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\07\0\0\0¢\0\0\0 zD\0\0³PLTEÿÿÿvIÿG\0\0\0úÿûÿ4\0þ\Ù\Ñýûþýýýÿ\Ø\Òüüüüÿÿ\0wIÿÿýýþÿ\0oDòù÷ððð\0rD\ä\ä\äK”smmm\0yIöööü;\0tK\ëöñ\Î\Î\ÎûG˜˜˜fff<<<………”¿©\0g3\Ú\ÚÚ   û—ÀÀÀµµµRRRuuu&&&555¤¤¤ù“tý°›º\×\Ê|||FFF¯¯¯///QQQ^^^\ìB\0ùK\0þÎ¼õ=\0þô\ï\0h;ûõÿþÿô\0|A${Wr°–`œ\æÿô\0e@\Ô\ë\àÿ¹¬\ì•vö©‰þ\ë\ßõÀ¢ÿöÜ¾ö‡û\ÕÁ\æ3\0\í`&òšlî®’òmGü¹¹÷VöVÿü\åökOö]7\â}]òg>òeö{Pý¼”é¥‹ÿ\é\åôGöv^ÿˆZ÷vD\ìƒX\ß[\áiGóc\çTò½¨ÿ¹…û­‰Ê¸œ^Z\0s`\0qs^;\Çó\ÜTj(\éf\ÂK ð]B™Z\ÕEz[,Cm8\×b&Ün¤²˜\\M?“fm¢Œ7’uŠ_\"\Å\ØÌ„Ã¨¤\ÖÀˆyU?i\Î\áªl­wþR4¨—Zx­Å¹8º\âd\0\0 \0IDATxœí‹_\ÛFžÀe##EcK¶\Èòƒ‡Á\Ô@\á¶‰y8n\ê4!ir!›\r\í6mº»e÷n÷r\Ý\Çõ¥\×p\Üm\Ò?ù~¿\É\Ö\Ó6\Æwûø·\Û,i4ó\ßs42\\°¨‡ô\Ð@º\àUr\Å\å7†r¹qc¹\È\é7\ád2nE\æ¹¡s¡$\ÅK\Â@º‰O‘!N\æø;ü@º—;<7ú6,K<7î…—\ä\áp#Â€\ÛE„È€[2\àÖ›¸õ&ý\æFˆ 8rv@P_\í®G</».§G…¼.‘y)¦ˆŽ³á–¢Œy!¬=N8<APzœ­—ý\ä¦º\Ú¹%¼,\ÙG\å\'²\0Ã”½„\ç„j\Ìû¶e^vM\nÁY”¡Ï€ûË?pý€\Æõ›I,ß»÷\éG(·Z\Â~½÷I\Ãs\ÐN\äû·\î\Ýò”{}úÀó¶O\ï±\ÛX\å\ÞG—·iMôeˆ‰ t\n\Î\ê5\Ô7rø+^úoV¿>ú¤«6”ç›Å³KBŸy^ó\Ä}¦Ž——J¬\âÓ‡÷e¹*‹¢Ø‡Q¢ôÙ¿m—‚ÅŒ§leô‡\Ýõ\èðQ¦\ä\ÓDQ\æy\Ír:%„\à\0)\é/žŸ”%™»ò{\Ù?n\à²\Ér)³ô–L\é)\Ïu\á\â\Èa¨\è\ÓB0£—À[—\Ò<	e|\îÚ¼6\ZX:z¸]F¿\'W\åK\Zk_¹‘\ê3\Ýô¼ôœ\ã	\ç­ò$T\Ô}Z\ÈdB˜@D\ÙqÉ²NÕ«-7vF\é÷Ÿó|UœM\\Pú\ÇM„\È\Õx¡ƒRx\ëJ0¨r2;q\ãò\×ÙŒ~ò× ;s3È•2¥Ò‹\åj\ìŽ;ü^Lú\ÇM‚˜\î-\è\Ãm+˜	}h;:\æò\Ë`\Ð_iõ\ã\ê\"8­½nT¶‚zP/=;\äc—ôrý\ãÙ‘ü±ž\Ñ}€\Ün‰öô\ÎS\Û\Ð_6w\"¸\ìwWW/0¼õ£ûû\Ñ^ú\Æ\r\Ò#^z¨ýúŸ	n\é_•\åöŽ…p2w¢{k¬!¥a\"»ºÚµ¾Ñž\0¹\Ò/¹LhèŸ¾ß©µŸ÷W¹\Ó\Æ@Z\àqi\Ë?¸€ÂU—onm.q\Ã\àþyƒr\Ç\Õf´ý\ãF\ZJm¹•\îC™Ø¦h\à¡\rñ©\r·e\â.R/\Ê\rN/¾<\ä¥Þ\\ß¸É +÷K¥ö\Î\é\"¹“/Kgª\")\ëÁ¶\ìõcÂ»\ìb\Ü(»L\è›\ê%\Æ\Ü?nJ•\ëm±eô\ÏyQiP«„?ùDd“\ÛVY\æ=òqCK\r–¾+÷úÆª±¯¼ó\ÕVoU\Û.Š|Lþ•_hJ¨\Ñn¦J_\\;ùòE{n\à\à	\ï\ßW™¿\ÓQgƒ¥\Ð}\Ù\Õ\Ä\Å\í\Øõ\Çº\Ô^†\Û7n\à\Þ_u\ê«~BÚ¬\â\È’ËŸw\à–\Ñ\ïU½ò·sCõÿª\ã\ï)\é·;\Ü\íò\Æ\íVµ7\Øµ·Rp\èO\Þ-\ê[™Tm¤§d¤\Ü$òu\'n™\à‹ñ÷Å²(q\'\í3­W\Ã\\—þÍ¶¦\ä>ºµUzVV®˜›P%[Lc\Ø0/ù6A$žtQ1…»óoºxDÅ»3ñ½ªn¤\ÜbRGÿ–)m\Ç\Ú\è\ã^—:4¡C_t\ç\ß\à£\ÐoŽA¾yý\në°­-×Œdô‡¼\ÒS2Ò¿ü-6\Ü>\ée\ÜÿûÈ‚RöY²´4‘	ý\ÂUùq\ÓOª\Õj¹Ü¸ÿ\ë’^òšý7\åv‰¸¿ô¯®\çŸt2Sœß§\î$¢)€\ãA\Ç\Ð\Î\àUWõ)\Ú;\æ=<Oˆü\à·\ß\Ò\Ï\\\Ü_q<\åªÇ²7\äv\Ôðor»ûz\'…\Ë‹™\ç\Ý\Ø)pÓ›¢(‚|\'öü\ëRÆ‹\Û\ÖIwO\'\Ò?n_>î¼”^\ÆóAž!UòQ¨3ûŒþqwù[Fm\ÓMWUY\á\Ý\Ü2¯J{wÿò¥¢\Ëñ:InK\Ëm¦W,?õÊµl­À/¡{<‘e«ž,û¬\Ù\éÛ„@A\\­¼\ÏJ[î“ f¨^­¾\Å>Ö‹.…sÏ¯þ°#Ã¯\Ü:›±×« ²ú³2‘­~’´\ã§7I9<ò(|·‚¥+\æF>\Õ3N—q­þKß´	ûä°´\åŒzz±h‹7ø öÕ—²\ÂYVº}¸Aº\Ø\â&5žzœ!·qµ\Ü\ä%7ô\Â\Å\×GNnÁo\Û†/BAûLð\ë\×ö8\r\Î 4,\ãN”\Öu>\Ü2&7^–„”W\Ü*–B®–[µ´ù\ä¶õ»—ºý\ÙTF4\ìß†üÌ™\Ê@ôüý±=\ÆB\":‘¹\Î\Ü2Mn</+Jõ·!w\ì\0n\'=\r·\Ü\è&¤m,,-\Ã*\çE\ã;Û€\Ð7•žàº¾g®Iª¯œ.¸\rŸ83ÖŒ~‹C…k]¹¬{=:l\Ú)tOQø\ß\ê[Ë udŽôG\ßÓ˜ûÁMe^ùÔ•ŽõgòC»Á/\Å\Ï\áV‚g‘J\Z Y½\ÑK\Ã.¿YzAd¡3· \É\r\Û&©\Ïl95\ÎòV&Sü‡·WV\×\ã\Î2ù\Ø\Å-£\Êy\Ô+nÜ¶\îJô\×B\Ã\É-“9jtÃ­©o\"r«~\ã¨EŠÅŒ^ü\ÃÏ®Œ‘i¸\ÖzÁžp‡n‡Uz#\Þv*ÿª\äÄ–Ñ¿Ê¯œÆ›)\Ý\'òE¸‰À­üZß²\'4ºþ\ê»w\ëWV\×‘@\á\Ìr¡_\'\ÜsÛ²\ÝV¥?Á\rA^\íÈ·\\\ÃW&TIm\ÃöÀ½7˜&‘4\\Ü‚ú\Ç\Ý\ä\Ý7WÆ²wQ\Ò\Í5B\\¶Á\ê°ñJ²%°’Ám«t‹W<L\"d£¯“ý2!O]J«ó’ƒ›G<\r²xŠû{%\Âoÿ\Õ\ä–aûJ¿þ§@`¯R»2;\å™|R\Â\Ýi\Ð\èl¡\n½l(\Âw\Å\ÇG†l1)—c’³¯è­ R£¥wN2¨A{7d\î¡kw›þ¸A$›z\Ô\Æp1p\ã!\r©–c©\ç¯™:‰\í·‚ú~7 jwcW\ç\ßx\Âÿ²\Þ\Û\ÙXzô\âó\ã\Ï~¿ü\ä0V%\å\çFc”“²\\~>\Ú\é\ßQø“bo-/\â¾”‘ŠI\é\'t\æ~P\Æ8I¨U?c0Z\Þ\Ò\áô\â_v“{»ªv~u\ë\ä„Wª\Ôw\ë¡Ò‹¯–·²\Ì\ÇÀ<@‰@˜W\Ü\ÕME«\Îx*ˆ<WýUW´Ù–!\ÆM¾,\Ëd\Û#Tß·u\ØO\ßh}J”X­ö\ÅN	\Ó5ð(ú_ÿyw7™T\êto;\ÌûÁ\rò±¸­\ì\éñI—P…\ìD”ˆ\"\â[\ÒQE\á\'Ap-^¢¾‘Ã¯Ÿ½|¥—t\Ó\É\ã\n\ÚK¹JcŽ“\Û1\'\Û\ÖC¼Ö°À\ßn\ÓWÊ\Ï\Ì?\Ìÿÿò}`/°«F\"•3\î\Ê\ê,\àvR*þË¿>ñP\Ñ0ó‘E,O¡›ß–‚\ë®2\Ù{Q‰,B‘(7\Üÿä«—/Žð‰\nT úkYŽ5œ\Ù0üö”X}½¹\Â=i4Ÿ|e„+ºw:Ê¦i-\ÐTu¯~u\Ü@©þ\íß¿W\Ø\ß?\ÝßŸžžþù\ç•z½^K	š)\èš†Fªˆ¢¨(\ì‚à¾¤\ÆöòG\ß=\n…\îUI\ì\Ël•ÀôZ–_4¬ý]\Ö=÷0Ñ‡1[`®t\Ì\r\æ\ßþ\å{-™l \Ñ÷ü\Õ=_•Ô3š\ÑvwU&\Édroo4%ƒIÁTŠ\í\n…\ß8	¬˜—8ÿ‡®Ucúó\Û\ËØ±\ç\ß\èt¿&Šin)-\×øs\í\Ò\é^|0}ˆ\å™Ì¯ÿ\ãû]tm”[\Ý\Û\Õù7®U\Õ@2‰$Q\"‘€\ZÕ´\nd\â$u>S\Ù=ØŸ¬Å\Ö\n\í_¿`\Æ\ÌKR¤$‡O\ét‡\×}?\"úÄ¾\Þ\ë½g\Îx\èŒ\Ê,B\Ø\Êü\é\Ü\r\ì%#j„q«Ô…\Þööƒ›\Âý4³»«1dZ„I º‡úÆŸª\ÔÀJEF“{£o\ÏV\ê ~m:‹R‘@¢„aV]}\Þ8¼\ï\é\Ë#úþ\êœ~,vÁÍ„>\ë‹\Ïþ3J\'6©i\ÌL\ÕQð\ÂW¨oÓ»w£d†s¡?E¢£)¢põƒ.\"¿h´R‰\Þ=Ÿ\îÀM¡\Ù*>O‰‘;RU\âepŽœ$•\Û\'¿;.Ò¤ú©\Õ\Ô\Ûr¢®_Ÿþ\×C¿(´d»ˆ\Î ÿ¹ºx\Z\r°ù³HR\Ý\çEhý§™ˆóšL¹\ì”(„Y_ j\ãû˜Hñ\Æö\Ãåª¥\ÃOBA\Çbf‚ô%­\Òßž}w\ë~£*“7?€ßµôB…©MpPºö2\æ¾p«\íEl€\Û4\'ò\"©»¹%+ug˜ñ¡¸_\"u‰\ÎO\0m´</–[‚¸\Ù\Èm_ý\íÏ·~ÿð°Q†<I\à\Èô^\Å6¹`ª¼õF­O\ÜV’N4 •i\Ü\ÐFR3nuƒCNÀõ\Z\Z£ \á¸þ7ƒp‰ \Äf¾\Õa+\Ëòs\ÈoMš/þB[1¨@k\Ó\É\nõ \Í^D yÛ—{\ÅÖŸ\ç\ÓnuD¢+\ÈM!3ªóH2zàº™\\;OŽL¯Ô°\Ìn\ãô€˜K[’€\Â\Þõe\çÐ‚Ny(NeI\àb\Ó{w÷\Ôd4 ¶¸i¸\ê¢\Ò!´ûJ_ò·}HB\\\Üöj\r!X©.n\ÑÀ)g\ÜOQ\r£ntoÿ\íJª\Í^}4fY’dk% *Þ‘\Â#ôýjYÄ—\Ó9òf?9ƒ\ÉX\æn‹[T\r¬p’xUþ\roš‡py1\à\Þ^\àNÊ¨%Õ¤\ËÁq\Ó*61·\é\Ê\éY=%±7\â-·RŒUS<«-\Ó¨–¢B^-\âWñ\àKâ©³ƒ$D€ˆ\é\Ù\ÄE\"j4œ&—ø®™~\è[\Ô?\é\ä\åEE\0n.#ŽP\ßgt\Ö0¢(+9*I°Úºd˜‘@k6À\â\ãþ˜?E‰ÀLR+\ïö*P½8:\0Q@‹NÇ„Þ¶DS\é·•ðYNn•·\à:°®:«8¹©Ê¾³ÔQCeUó`wnT0‰±\ÄõÙ“Ž<nAMSõ³ƒ½d’µˆ\ËQ¨Z4y\'‹½¿¡uin g*ú,\'7ˆñ\nGnÅ¥o\Z\ä\é\Î ^‰ZÇ‡‰D<sQ‘\Ô\ßÔ˜\ËG•óyõ—¢‘¡VŸ\Þ?¿-bY\àr \à‹Õ½N\ì”ñ´•~\è\Û{Õö7\Ã\Z\ÙsÎ·>\Ì9ô³JR³Œ\ÔDƒ|eŸc¦{_\Ù;\ßÿy\å§z=\Õ\æ\ÍQK\ÕW\ÎÞŽ&“Q\ê\ÓÐŸ%w\ÇD\è´.ƒJŠ3l¹,7ð:üh\ÄcR!·Up’K;Á\É3)˜n+»wª­\r:\ä(\è,‹š\äT‹DÕ™™U= kUP\æ\Ö\èý¬õ3ølÿô`4Y©T@¡Y\0j´\\\Õ\ÅÏ ü\Ãk\æýŠ\ßµÿ3n\à¦·B¡\ì\Õ“$ÐÃ•Ÿñ\å?³pY\ïU7ú\0¤€ø=ˆ0\Ä\é\n¤0n-À¿ Ò\æE‘õú\ç»ÿg\Ïyð\ê\Âø©{§+©KS»470Ep``Ôƒ\ØˆW<üo\ßððik\ßfPµQ\ÕCg£uŸø-3+•¤ªEÌ„?B½Ÿ6ZE‘\éŠf,Yu–ºRü„Z=ü¿R®ót\Ë\áe¿G\ä’\ÜÀ\Ö\äýŠ·ý\Zµ!™f\Å\îÃ£©f\Ù÷°\Ð\\ù¤y<\ÛóÜŸÝ‡F“\ï\n\ëõ´G\â\rD@+AÀÀ+\êùû\Ó\é\Z¦„\Èúž­_\ÜøQ/3\rh\ïPö<,P\Ý\ÃEM\Ö&+?\Ï\ÜÜ€\î\é“\Ñh2bá¦¡\î*+¯Mn\ÎÐ”Ë¾E¿\ÇV\îSP…˜\áÂ©t™˜\ÐnŠ Ö¼\Ô\r«)\Õ¯\Ã\à\à\Ì\r‘dzFue€¬¼4£\r-`©\É\Ñk\áªÞ™ù‹\r7pˆ•š­·P³\ZÇ¥¿\î\ç\ÒqA|\ã\á¾:T<\Û]i,„dÕ\Ét’¤v\Ð\â\æR7¨`4m\ÆY÷M.\Í\r|r/Ü¢1M…\Õ<Œ¹ƒ¨\Ú]\ÞpT7\È\ÂN=\í°#·dª¹‚\ÃCµ\Ð·JÍ¨0?<n\\\Ê;,t\\ó5\ã‚\ã\î[D›YùP¹2ª;Q!0%§L\èÃ›·™y\Ç} \Üd\á\Ì;^v-º/±\ÕY½\é¬Ä˜­xÜ¸·D¿³D0ó¥MX©õ\Ðr3×?<nro\î-€«û¬	H\ßW*=¡6Fž\Ü×˜W‹z—¬œ±\ê\Z¸yUb]ˆ†mPù\àôM¨¹óu‰­9f‰p\ç½r‹\Z\ë\Æœ¾\Égj´‡PHË°\Ùœ,ñ=²@\æK\èrÊ´x\à¦^[n\ä\Z\í!õ¢µöØ d¹\æ~¤\ß·ˆv·FK\ÍiU(°\Ó\ë\Ë-õ¾G}Ó’‘(s\ê2†¯U \Î\Ü ¤¾¡œ\'·\ë¬o©zÖ·ˆºB›ùÓŠ{	©I\ÒŠø\ì\ï\Ã\ãöS$\àñL\Æ\Ø\Ìe\î„ó\äDß±6 \ëm\Ç\Ío%\n¹©\Úi\Ì\à\æqøzr£™ú4˜˜S\ß\"Q-šL\ÒU³(M\Õ\\\Ï~q©ÿ\Çýzúz\Ò]eûƒùÀ-~¬‰H$\ê‰Vý!…k\å¨o\Î&®k\"aú5\Z\r$]=V\Õó³«¼­hN…À\å\ÛJŠ.XŸU\Ü\Ï\Ã@\ï\Þ5¶ \â\æ\Èh Z\Ùõ­\ãF‘iÕ­\××•G)E–[\"öm—\Úsû@tN?\Ñ\Å~\Ü\áBŸTGk–?”J\ÕF=\×ù0{?(n\á$\Ü\è¶U5_¦ [6\Âx\ÆÀ‹\ãb4¢ºV{#Q\ÛV|&\àÚŸC\ÏS`7§¸€[1þ\è]Æ–\î\ë\éhLO=ˆq¼»‹þ\ÝqX•\Ù\æKEa\Ïý½|?n\ã?0n\"‘\È>\Û]\ì\ZKÝ¶I\ÛcO’q^\rð\Ö\î<\â‚Vù\Ùò\â~¯\ïY\Ôk[€š¬	’§©_\ÛxJÄ˜÷bHd4\å\Ø!\åó\"Y‡»ž\áB”\ëÑ©VY±l}Cn+xô™>\ç\Í\íš\æoÀ\Íg\ÝL=\àm»?‰{O’q\"úÁw\ÆF}û\ÔYK‚7ó\ä†öüAq“p\Ý\ÌGôÔ¾\Ó\nÓ½¹\í9v º}\â¡m:«pR\êÜ“›z\Ê\Z··Þ‰<\ÄI\Åò8\\$BÍ‡\ÛhŒ¤ðù„G\nh·u|õ½7·Ñ˜^Sÿ¦ÜÚª¦4*ô\Ç\Ê\Ùú­\Ð`\Ðu¥ù\nRóU­ƒ\Î\"7\ç!°ubýöpü3!»ø\îœù:ŽqÇˆ–¬sý§Ñƒ¦`\Ö|=¹ñ{»I	Tj²u\ã\nŒŸ`¡•¤…üKª\ì\ÔJCû§¡	[_ÀÂ½û3ôUCºË¡u·\ÈQÔˆ£ª\Õûú(=sS|ZmŠ\Ú*H+5Ñª+¸}ôm%j¶\éc\æŒua%-±r“ <›A5r\ÞQ«œò\äíŒ¦©OœûCú(—©\ë\ë\ç\ç£^\Þ\Þ\ZNq—òŠ÷™\ç+±S\Ï£\ç5\Û{\ï‚B„:~þ\Þ}\ê;P\Ð#\çï¯Ÿ\â\Ã\ÏZ*\æ!©”,\ÚþDp\ã=Ï¬¥$!\æs\Äþ#Èð¼\ÇÍ ‚ ¥\à\nh\É8ƒÕ´µZ¬·\ï¸\èF.¡o`w\äÖŸ\0D’\ÆQû\Þ]\\ \é‰\\\ë\\³	\ÅxM\×Ñ¸\àx\Õ¹Y7—\Ê\æ\×\æ\É\ì\Õú$œ\Ùúÿ\Ò\Ö\ÇÔ½þŽgo2\àÖ›¸õ&n½É€[o2\àÖ›¸õ&n½É€[o2\àÖ›t\â\Æ\Þ\Ç\éÛŸ“\ÆMW’„ÿ•º~i¥›o\Ø9¢×‡\ìch¥\Ûw‹$©ó\r;q3¿:\ë²\ï31±}M_Z4Û²ò?§ó%Î¤\ÜA:\Ú\é\Î\ÈTŸF‰H›\Øb®\ëk–\àì›O[…\ÓvlÃO5%¼0?s\ß\Å ð›¤‘Ž\Z×‰[b\Þ7\Ñù†\ÝJF144\ÞõLŒ\Ã\í\':X5h\Ò\"œ¶j\ë\æÈM&\Ó]\ÜQBlñ›c®·<NVx(\ßñŽ\Ý	ôj\Ú-Žt\Ëmz0F¯õ?š*P³°žƒ\Ü\ÂM…ƒ\Ò]\Ý/5Ñ±s¸\á(\á¦\ÆLŠœÓ‘ \Ë[®»éž½G)qñE6ˆõNN\Ä<:\Î\ì”Þ…F‘5\ä\Ú\Ò\ä\íµ%\ÛgTß²k“‹‹‹Y\Ê\æ\Ê\Õúo\ãKÀ\Øo¢~\Ó \"\ÚGjû±\r7<+aÎ™k®\è\ÍD\ÊM¤ŽCl…!ø\Ä\'K\ÎEÁò™9Zl\ÇCÈ‰±‡Œ\Ñ\ïã¡£K$$:\"\ä(Á-\é]MoCIõml$—Ë¥Ó«8ù€_l…÷2zL\ïe^»I¹\Ñ\á4£uŒ¶°\ÒA\ßfMU\ßi±´`g\r\Û\ç¥mH\ã¤I\Óvrfÿ\í£u5C¹™£MXÎ³t\Ã\Ô>7·)ösü&d\Ã1xOc\Ü4ü‚”Íž9›Mi\Ã\r¿ti\á\á0[pDndidv\Ö\Ð{)¿´´m\ç\á\Ãõž\Ã\Ã.«@ICSskÄ”\Ùk‰¶8‹M.™\×\0‰‘Y¸C\Ú\â\ßF––f\ã\Ðk®\ÎÁ\ãy:,‰\Ë---Ù‚r[¥\ÍK\\zn™5p§gñn³y£ñõ¥¥‡\ÏòpOœÄ¶`TK9³;óps\ë€\Ú\é›\È\ÍSwš³:U¸\íÒ†\ál7–ðûú¸8¸\É\\Ž\âZ\Èq‰Y\êO²Kó9†½\Êo\â\ä›\Ý\ÒÒœ\ÑbvÞ¸Fœ-\Ð¦@S¨¾a@\ZšOÑó·Î¼\ÖT‚º¼5Ï¸0´\Ê1Ÿ1²Í„\Ù\çcf°XÈ±Q\â¥#4=Z(Ñ°Ú’FY`\ÊLO±\åN\í¸It”k‰ª\ÇfÜ &›¶\Ë\Ò	\à?„\×\ÌÐµ¸\Ô\ì×º«\É8v‚%…­£7--\îÐ±K«fÆufc\Ñ8/;¾c^±J­L¹ì”¢7\È\å7\à\Ô9´¡øB+\Ä.\æù:N\nO,²8ˆ¾YF¸Uø\ì¶5\Ëig§\Â\èÙ¦°¥´\á\Òø\á\Ú\Ä\Ø&¨€sŸc›0œWxal“úþ¸\Ó\Ûa°ó¨*Y\Ú\è7\æ:´E\ìq˜\Î\Ï^ž]\Ø\\\È\Ò B\ítŒ\Þecbb\Óø\í‰MlgŽš\Â$…\ä\ä6T0¾jÆ¢\â\ÏNŒM¬\á\'·\re\n›\ê¾z{\ß^\ç\âøñ8C?.Yofqi\ë”H]\Þ*NÌ£%\å7¸\ï \Ì\Ñ\é\Zó•n2\Ön&9n=*¡~b\Ê*-\á§\Ø\âjGa>!%\Öi\Û7øi\î’Ø¤ŠsÒ¼1³¾\ÜnŽ`@\Íßœc\Ö!Ši\ÃÊ>$8\Ã©\Ü\ä¤øm4.\Ú8yC	%#\ÂV\â´õo\Ð\Ô&GUng\á?¿³\nƒ”Œñ\Î6¹!¬vŒ‰\É<5\ÍLGB-2\Ì*·³º\Ã2‚,\ÕF‘3\0\âg\ëCCV}\Ë\ã\é@7‘4uk«¾\Ü`´Ù¹°\é6±Û‰õ©±YšEQmˆs¦¾ÁHòˆf“zˆ5ñõ\Â;´\Ý\æ!\é,ºh˜­,5^bÂ˜k´S\à‹\Ñz\Ù\r+8¢yG‹hðYzn\Ñ\è“\í‹&7š\ä%h¾FU¯©ok#ü(\èoŠþ\ÜLAx9c©\ÃÁ:Sc\ZV\Ù:h\æoðõ„8À\ì­=X·ã†Š<I„\Ê3‘h~Cv\"=¿>A;\Ó\ä†J†zª£Av\Ò\Ð7Kv7‚1~!a#V3í’ \ÅI\Ú\"V®x\ç\ÛF/°ó¦¾‰U:<d–~¨	þÜ¬‚~D2fi$??»Ig“›ö$“ŽS\Ç5Ž›q[\Ði\Ã-Ž½Û˜O§óišý4‰\Ì/d\ÍI7¹±º	\ïÀ\Ê\ÊÍ¢o\"=\n­¬-\Í.Í®O„Ù¤\ÐqHñ¥\Í93\ÆA‹X‹5\×@V\Ü8\Æ-mp3\Îôá¶±F\åö\ê:C+Ž\Ü\ÎdSMn,¡˜\Ü0\rE_˜\ÃI¦k-]\Ú\é:k\Ù\Ôó0«>04±O\çŒD„rcˆ<¸ú&R°4ˆŒ\æi_›f‹\á!Æ­‡773›\Úik§6kdicyin\Ã\Ê-\ë\â&Ò”1~O\Zj¥m¹\á5è¾¨z\0mS´I•fuj=?iÄ€öÜšM2u³\Ö0K¿…6\ÇÞ…\×Vw\æó\ÚOrÓ¸ð¦•\Û\Í7‹¾µ\á–oÎœ.ce\'¦\Æ\ç\Ç\ç†LnanH)\Æ\Ô7ŽƒJp]\Ù)\r7¿JG\nC’Xž3=X\×\Ü\à¶Sv‡\r\Î5\Ý\ËM¼h„\ÅFcŽ]F\0{ç––¸f$£–†la	\çk=<\ÔN\ß(n¸y6=Î´®}\Ã3XŠšKSÉ­‡\r—nFsô-l‰8üd2mHn\ÌL½\Ì\í5!¼%f64ž²:‚z\Ø\ÎM¼ˆ\æ\ÙºhŽKÂ‚e,Ž\ë(SVn\'7	óªI˜\ÍlÎ±`\á\Ã\rR½9Zc5?\Z3\"–\Ùs¨ý‰)–«‰\ÜD£¢²q\Ë3fÃ¸GÿÍŸ7\r¥\ÆS\Ã,-£é½•›\Ô\â†C›²\ÇS\×ú›\ÓNiz´‰S’\Þ¢ñT²\ê›hµS‘.NS³[\å\âc§’%ec\ZM0w\Âbg*?Ðš‡\Øõ\Í\È\ßZ‹“0\Ýk.óŠ\Ìq\áŒc;‹\ãùñ\ÛC¬²‘\è¹‡\Ò#ù1£\Î\Ù\Ì\ÑÌ–¾‰\Ôöob\ë«o¶•@\æ\ê\Ãóó«“¶xj\è»5XEŽ©s\â6+óm5–?7]3œßœ*‰¶€kX\äCC\Ãõ-Ø¹\Í\Ûý›Uß¨Cžh:‰•¥S4³¥‰½\áöhaŸ+\Ð\àA\Ë\Ï9\Ô(ÉŒ§Øœ™‡ˆFþ†m¢öÚžËˆ^ú&\Z\ÅA6kD»£\ÓsFþFg\ÇV`©[Ä˜‹sñ‹\Ô\ÕL4•˜¢z\å†[¿IW$\â4m°\ê\ÛF®\É\Í:M\Ôg¥[ž†YÖ›iƒXvŠi¥¼f\Üe‡>—Á«&Œ\0a§qA\Ä+Æ°R¡\Ïe\Ü\ë!y\ç\âdÂŒNkã›†7\Å\"g±\é‘r\Æ²\Å\Ê8]3s?Oó‹ù¹Bv2\×ú«Žla%L ~M¤A¥\ç²s#Xpe‹iã¦…\ìm:9‰±lÁšôH³x¹mòóp\nòN£\ÉfW\Ó\\Z\Údñ`„.À¥E¸\ïŽŽ[\n\æ\ØDŒ¬\n\Æò\Ý\Ò\\an\n]\ÑN¸µ—\Ãñ\Í,Á¾²\0–43º1;­E?“^,\Ì%(¬[7©Vp\ìAõm»WnÏ­“H}|.\È$\á±\Æ\Ùÿ»´»›ó8}\Ö\Ë\Êü—™^Ÿý!>%:\ï8\è\ïýšB\ÍT’–\Ó\'\Â\0\0\0¸IDAT‹4[r}m¸]7a[­Ž<6\\n¢\äñ\à°o»y.(¢±\î“\Ï\ÏO°,\Èm\Ö×„›¯\\:\ÉHU²9]E×\ÛU\n{¾\ä~Ê2\à\æ#˜\à3\âu\Ä\æ\Öú7_i\ë\"\ÜüD\â\Ì*^\0\ÜüDj=Žð·\ÞdÀ­7p\ëM\Üz“·\ÞdÀ­7p\ëM\Üz“·Þ¤\ÉMù\ßû®ÿ¼€›þñð\á\é^€\×\Ç:\ÔC¹¨\èÁÿsŠ¢5Ö·ž\0\0\0\0IEND®B`‚','bhopal');
/*!40000 ALTER TABLE `CANDIDATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_DETAILS`
--

DROP TABLE IF EXISTS `USER_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_DETAILS` (
  `ADHAR_NO` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MOBILE_NO` varchar(13) DEFAULT NULL,
  `USER_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ADHAR_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_DETAILS`
--

LOCK TABLES `USER_DETAILS` WRITE;
/*!40000 ALTER TABLE `USER_DETAILS` DISABLE KEYS */;
INSERT INTO `USER_DETAILS` VALUES ('101','admin','bittu','bhopal','bhopal','bittu@gmail.com','7389649682','Admin'),('123456789013','asdfg','prashoo','rewa','bhopal','shukla@gmail.com','7389649682','Voter'),('12345678922','12345','Pappu Gandhi','bhopal','bhopal','iampappu@gmail.com','4204204200','Voter'),('12345678955','12345','Krejriwal','bhopal','bhopal','khanshiman@gmail.com','4504504505','Voter'),('456974581236','bittu','prashoo shukla','bhopal','bhopal','shukla@gmail.com','9756147896','Voter');
/*!40000 ALTER TABLE `USER_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VOTING`
--

DROP TABLE IF EXISTS `VOTING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VOTING` (
  `CANDIDATE_ID` varchar(10) DEFAULT NULL,
  `USER_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `fk_VOTING_2_idx` (`CANDIDATE_ID`),
  CONSTRAINT `fk_VOTING_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER_DETAILS` (`ADHAR_NO`),
  CONSTRAINT `fk_VOTING_2` FOREIGN KEY (`CANDIDATE_ID`) REFERENCES `CANDIDATE` (`CANDIDATE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VOTING`
--

LOCK TABLES `VOTING` WRITE;
/*!40000 ALTER TABLE `VOTING` DISABLE KEYS */;
INSERT INTO `VOTING` VALUES ('C101','101'),('C101','123456789013'),('C101','12345678955'),('C102','12345678922');
/*!40000 ALTER TABLE `VOTING` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-18  0:23:06
