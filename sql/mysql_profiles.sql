CREATE TABLE `profiles` (
  `profileId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` enum('Y','N') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'Y',
  `online` enum('Y','N') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'N',
  `regDate` datetime DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `number_logins` int(11) NOT NULL DEFAULT '0',
  `tasks` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `firstname` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `surname` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `msn` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `icq` varchar(14) COLLATE utf8_swedish_ci DEFAULT NULL,
  `birthdate` date NOT NULL DEFAULT '0000-00-00',
  `sex` enum('F','M') COLLATE utf8_swedish_ci NOT NULL DEFAULT 'F',
  `country` varchar(10) COLLATE utf8_swedish_ci DEFAULT NULL,
  `city` varchar(64) COLLATE utf8_swedish_ci NOT NULL DEFAULT '',
  `occupy` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `homepage_url` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `signature` text COLLATE utf8_swedish_ci,
  `avatar` varchar(32) COLLATE utf8_swedish_ci DEFAULT NULL,
  `presentation` text COLLATE utf8_swedish_ci,
  `status` float NOT NULL DEFAULT '0',
  `credits` tinyint(1) NOT NULL DEFAULT '0',
  `emoticons` tinyint(1) NOT NULL DEFAULT '1',
  `mus` varchar(10) COLLATE utf8_swedish_ci NOT NULL DEFAULT '0',
  `notisen` varchar(150) COLLATE utf8_swedish_ci DEFAULT NULL,
  `fbid` varchar(200) COLLATE utf8_swedish_ci DEFAULT NULL,
  `erased` datetime DEFAULT NULL,
  PRIMARY KEY (`profileId`),
  KEY `Search` (`active`,`birthdate`),
  KEY `online` (`online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci ROW_FORMAT=DYNAMIC;
