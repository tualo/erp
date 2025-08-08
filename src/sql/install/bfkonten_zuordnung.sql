DELIMITER;
CREATE TABLE IF NOT EXISTS `bfkonten_zuordnung` (
  `gruppe` varchar(255) NOT NULL,
  `konto_id` int(11) NOT NULL,
  PRIMARY KEY (`gruppe`,`konto_id`),
  KEY `idx_bfkonten_zuordnung_gruppe` (`gruppe`),
  KEY `idx_bfkonten_zuordnung_konto_id` (`konto_id`),
  CONSTRAINT `fk_bfkonten_zuordnung_artikelgruppen_gruppe` FOREIGN KEY (`gruppe`) REFERENCES `artikelgruppen` (`gruppe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_zuordnung_artikelgruppen_konto_id` FOREIGN KEY (`konto_id`) REFERENCES `bfkonten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);