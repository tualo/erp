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

alter table kassenterminals
  add column if not exists productlist tinyint(4) default 0,
  add column if not exists adminpin varchar(10) default 'adminPIN',
  add column if not exists servicepin varchar(100) default '1234567890',
  add column if not exists wgfilter longtext character set utf8mb4 collate utf8mb4_bin default '{}',
  add column if not exists bon_header longtext default '';


create table if not exists  kassenterminals_client_id (
  kassenterminal varchar(36) primary key,
  tss_client_id varchar(36) not null,
  constraint `fk_kassenterminals_client_id`
  foreign key (kassenterminal)
  references kassenterminals(id)
);

alter table kassenterminals_client_id
  add column if not exists last_tx_read datetime not null default '1970-01-01 00:00:00';

alter table kassenterminals_client_id
  add column if not exists tss varchar(36) default null ;

create index if not exists `idx_kassenterminals_client_id` on kassenterminals_client_id (kassenterminal, tss_client_id);

create table if not exists kassenterminals_client_id_tx (
  tss varchar(36) not null,
  id varchar(36) not null,
  tx_id varchar(36) not null,
  primary key (tss, id,tx_id),
  val json not null,
  key `idx_kassenterminals_client_id_tx` (`tss`, `id`),
  constraint `fk_kassenterminals_client_id_tx`
  foreign key (tss, id)
  references kassenterminals_client_id(kassenterminal, tss_client_id)
  on delete restrict on update restrict
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