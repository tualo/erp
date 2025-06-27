DELIMITER;
/* OLD VERSION
CREATE TABLE IF NOT EXISTS `kassenterminals` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kasse` int(11) NOT NULL,
  `lager` int(11) NOT NULL,
  `beleg` int(11) NOT NULL,
  `bs_auto_print` tinyint(4) DEFAULT 0,
  `bs_system` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kassenterminals_name` (`name`),
  KEY `fk_kassenterminal_hauptkassenbuecher` (`kasse`),
  KEY `fk_kassenterminal_lager` (`lager`),
  KEY `fk_kassenterminal_beleg` (`beleg`),
  CONSTRAINT `fk_kassenterminal_beleg` FOREIGN KEY (`beleg`) REFERENCES `blg_config` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_hauptkassenbuecher` FOREIGN KEY (`kasse`) REFERENCES `hauptkassenbuecher` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_lager` FOREIGN KEY (`lager`) REFERENCES `lager` (`id`) ON UPDATE CASCADE
);
*/

CREATE TABLE IF NOT EXISTS `kassenterminals` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kasse` int(11) NOT NULL,
  `lager` int(11) NOT NULL,
  `beleg` int(11) NOT NULL,
  `wgfilter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{}',
  `productlist` int(11) DEFAULT 19,
  `adminpin` varchar(10) DEFAULT 'adminPIN',
  `servicepin` varchar(100) DEFAULT '1234567890',
  `bon_header` longtext DEFAULT '\BonKopf GmbH\nBonKopf Strasse 44\n12345 Bonburg\n-------------\nSt.Nr. 212/123/00456\nHRB 1234\n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kassenterminals_name` (`name`),
  KEY `fk_kassenterminal_hauptkassenbuecher` (`kasse`),
  KEY `fk_kassenterminal_lager` (`lager`),
  KEY `fk_kassenterminal_beleg` (`beleg`),
  CONSTRAINT `fk_kassenterminal_beleg` FOREIGN KEY (`beleg`) REFERENCES `blg_config` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_hauptkassenbuecher` FOREIGN KEY (`kasse`) REFERENCES `hauptkassenbuecher` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_kassenterminal_lager` FOREIGN KEY (`lager`) REFERENCES `lager` (`id`) ON UPDATE CASCADE
);

/*
insert into kassenterminals
(id, name, kasse, lager, beleg, wgfilter, productlist, adminpin, servicepin)
values
(, 'Kassenterminal 1', 1, 1, 1, '{}', 19, 'adminPIN', '1234567890'),
*/

CREATE OR REPLACE VIEW `view_readtable_kassenterminals` AS
select
  `kassenterminals`.`productlist` AS `productlist`,
  `kassenterminals`.`servicepin` AS `servicepin`,
  `kassenterminals`.`adminpin` AS `adminpin`,
  `kassenterminals`.`wgfilter` AS `wgfilter`,
  `kassenterminals`.`id` AS `id`,
  `kassenterminals`.`name` AS `name`,
  `kassenterminals`.`kasse` AS `kasse`,
  `kassenterminals`.`lager` AS `lager`,
  `kassenterminals`.`beleg` AS `beleg`,
  `kassenterminals`.`kasse` AS `kasse_id`,
  `kassenterminals`.`lager` AS `lager_id`,
  `kassenterminals`.`beleg` AS `beleg_id`,
  `hauptkassenbuecher`.`name` AS `kassen_name`,
  `lager`.`name` AS `lager_name`,
  `blg_config`.`name` AS `blg_config_name`
from
  (
    (
      (
        `kassenterminals`
        join `hauptkassenbuecher` on(
          `kassenterminals`.`kasse` = `hauptkassenbuecher`.`id`
        )
      )
      join `lager` on(`kassenterminals`.`lager` = `lager`.`id`)
    )
    join `blg_config` on(`kassenterminals`.`beleg` = `blg_config`.`id`)
  );