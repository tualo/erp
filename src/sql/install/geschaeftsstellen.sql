delimiter ;
CREATE TABLE IF NOT EXISTS `geschaeftsstellen` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `kostenstelle` varchar(20) DEFAULT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `lohnartpc` int(11) DEFAULT NULL,
  `status` varchar(4) DEFAULT 'Ja',
  `auftrag` varchar(10) DEFAULT NULL,
  `zusatztext` varchar(100) DEFAULT NULL,
  `auswertungstext` varchar(20) DEFAULT '',
  `region` char(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_geschaeftsstellen_id` (`name`),
  KEY `idx_geschaeftsstellen_region` (`region`),
  CONSTRAINT `fk_geschaeftsstellen_vertriebsregion` FOREIGN KEY (`region`) REFERENCES `vertriebsregion` (`region`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
insert ignore into geschaeftsstellen (id,name) values (100,'Standard');