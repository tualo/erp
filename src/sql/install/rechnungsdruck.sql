DELIMITER ;
CREATE TABLE IF NOT EXISTS `rechnungsdruck` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_rechnungsdruck_name` (`name`)
);
insert ignore into `rechnungsdruck` (`id`, `name`) values ('1', 'unbekannt') ;