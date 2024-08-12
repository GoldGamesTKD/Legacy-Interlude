CREATE TABLE IF NOT EXISTS `clan_entry_waiting_list` (
  `char_id` int NOT NULL,
  `char_level` int NOT NULL,
  `karma` tinyint(1) NOT NULL,
  `class_id` int DEFAULT NULL,
  `char_name` char(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;