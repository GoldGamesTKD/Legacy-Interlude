ALTER TABLE character_variables DROP KEY `value`;
ALTER TABLE character_variables CHANGE COLUMN value value VARCHAR(1000) NOT NULL DEFAULT '0' COLLATE 'utf8_general_ci' AFTER name;
