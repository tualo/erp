DELIMITER;
CREATE TABLE IF NOT EXISTS `bfkonten_zuordnung` (
  `gruppe` varchar(255) NOT NULL,
  `konto_id` int(11) NOT NULL,
  `gueltig` date NOT NULL DEFAULT '2099-12-31',
  PRIMARY KEY (`gruppe`,`konto_id`,`gueltig`),
  KEY `idx_bfkonten_zuordnung_konto_id_gueltig` (`konto_id`,`gueltig`),
  CONSTRAINT `fk_bfkonten_zuordnung_artikelgruppen_gruppe` FOREIGN KEY (`gruppe`) REFERENCES `artikelgruppen` (`gruppe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_bfkonten_zuordnung_artikelgruppen_konto_id` FOREIGN KEY (`konto_id`, `gueltig`) REFERENCES `bfkonten` (`id`, `gueltig`) ON DELETE CASCADE ON UPDATE CASCADE
);