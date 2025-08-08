DELIMITER ;
CREATE TABLE IF NOT EXISTS `warengruppen` (
  `id` int(11) NOT NULL,
  `warengruppe` varchar(100) NOT NULL,
  `wgsort` int(11) NOT NULL DEFAULT 999,
  `farbe` varchar(20) NOT NULL DEFAULT 'rgb(0,0,0)',
  `warenhauptgruppe` int(11) NOT NULL DEFAULT 0,
  `beleggruppierung` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_warengruppen_warengruppe` (`warengruppe`),
  KEY `idx_warenhauptgruppe` (`warenhauptgruppe`),
  CONSTRAINT `fk_waregruppen_warenhauptgruppe` FOREIGN KEY (`warenhauptgruppe`) REFERENCES `warenhauptgruppen` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);

