CREATE TABLE IF NOT EXISTS `server_variables` (
	`name` VARCHAR(86) NOT NULL DEFAULT '',
	`value` VARCHAR(255) CHARACTER SET UTF8 NOT NULL DEFAULT '',
	PRIMARY KEY (`name`)
) ENGINE=MyISAM;

INSERT IGNORE INTO `server_variables` (`name`, `value`) VALUES ('oly_season_id', '1');