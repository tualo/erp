delimiter ;
CREATE TABLE IF NOT EXISTS `buchungskreise` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vat_id` varchar(50) DEFAULT '',
  `firmen_name` varchar(100) DEFAULT '',
  `firmen_strasse` varchar(100) DEFAULT '',
  `firmen_plz` varchar(10) DEFAULT '',
  `firmen_ort` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ;
