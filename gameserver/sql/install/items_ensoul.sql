CREATE TABLE IF NOT EXISTS `items_ensoul` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slot_n1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `slot_n2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `slot_bm` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;