CREATE TABLE IF NOT EXISTS `clan_entry_recruit` (
  `clan_id` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  `information` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detailed_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `application_type` tinyint(1) NOT NULL,
  `recruit_type` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`clan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;