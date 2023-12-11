DELIMITER ;
CREATE TABLE IF NOT EXISTS `warengruppen` (
  `id` int(11) NOT NULL,
  `warengruppe` varchar(100) NOT NULL,
  `wgsort` int(11) DEFAULT 999,
  `farbe` varchar(20) DEFAULT 'rgb(0,0,0)',
  `warenhauptgruppe` int(11) DEFAULT 0,
  `beleggruppierung` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_warengruppen_warengruppe` (`warengruppe`),
  KEY `idx_warenhauptgruppe` (`warenhauptgruppe`),
  CONSTRAINT `fk_waregruppen_warenhauptgruppe` FOREIGN KEY (`warenhauptgruppe`) REFERENCES `warenhauptgruppen` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
);

insert ignore into `warengruppen` (`id`, `warengruppe`, `wgsort`, `farbe`, `warenhauptgruppe`, `beleggruppierung`) 
values (1, 'unbekannt', 999, 'rgb(0,0,0)', 1, '') ;