DELIMITER;
CREATE TABLE IF NOT EXISTS `blg_artikel` (
  `id` int(11) NOT NULL,
  `belegart` int(11) NOT NULL,
  `artikel` varchar(255) NOT NULL,
  `bemerkung` varchar(255) NOT NULL,
  `anzahl` int(11) DEFAULT 0,
  `position` int(11) DEFAULT 0,
  `epreis` decimal(16,5) DEFAULT 0.00000,
  PRIMARY KEY (`id`),
  KEY `fk_blg_artikel_artikelgruppen` (`artikel`),
  KEY `fk_blg_artikel_blg_config` (`belegart`),
  CONSTRAINT `fk_blg_artikel_artikelgruppen` FOREIGN KEY (`artikel`) REFERENCES `artikelgruppen` (`gruppe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_blg_artikel_blg_config` FOREIGN KEY (`belegart`) REFERENCES `blg_config` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);