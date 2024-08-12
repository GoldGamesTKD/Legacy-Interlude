CREATE TABLE IF NOT EXISTS `character_status_bonuses`
(
    `char_obj_id`        INT              NOT NULL DEFAULT '0',
    `class_index`        TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `bonus_points`       TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `elixir_points`      TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `used_elixir_points` TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `str`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `con`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `dex`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `int`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `wit`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    `men`                TINYINT UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`char_obj_id`, `class_index`)
) ENGINE = MyISAM;