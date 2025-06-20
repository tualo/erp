DELIMITER;

CREATE TABLE IF NOT EXISTS `staffeln` (
  `gruppe` varchar(255) NOT NULL,
  `von` int(11) NOT NULL DEFAULT -1000000,
  `bis` int(11) NOT NULL DEFAULT 1000000,
  `preiskategorie` int(11) NOT NULL DEFAULT 1,
  `preis` decimal(15,6) DEFAULT 0.000000,
  `bruttopreis` decimal(15,6) DEFAULT 0.000000,
  `epreis` decimal(15,6) DEFAULT 0.000000,
  `mpreis` decimal(15,6) DEFAULT 0.000000,
  `gld` decimal(12,5) DEFAULT 0.00000,
  `gebiet` varchar(50) DEFAULT '',
  `json_formel` varchar(4000) DEFAULT '',
  `zeitraum_von` date NOT NULL DEFAULT '2000-01-01',
  `zeitraum_bis` date NOT NULL DEFAULT '2099-12-31',
  PRIMARY KEY (`gruppe`,`preiskategorie`,`von`,`bis`,`zeitraum_von`,`zeitraum_bis`),
  KEY `idx_staffeln_gruppe` (`gruppe`),
  KEY `idx_staffeln_preiskategorie` (`preiskategorie`),
  CONSTRAINT `fk_staffeln_gruppe` FOREIGN KEY (`gruppe`) REFERENCES `artikelgruppen` (`gruppe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_staffeln_preiskategorie` FOREIGN KEY (`preiskategorie`) REFERENCES `preiskategorien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

