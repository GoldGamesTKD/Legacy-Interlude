CREATE TABLE IF NOT EXISTS `clan_entry_applicant` (
  `charId` int NOT NULL,
  `clanId` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`charId`,`clanId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;