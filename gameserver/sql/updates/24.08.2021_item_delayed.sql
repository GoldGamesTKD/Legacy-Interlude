ALTER TABLE `items_delayed`
    ADD COLUMN `variationId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `enchant_level`,
    ADD COLUMN `variationId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' AFTER `variationId1`;