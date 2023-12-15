DELIMITER;

CREATE TABLE IF NOT EXISTS `buchungskonten` (
    `konto` varchar(100) NOT NULL,
    `name` varchar(255) DEFAULT NULL,
    `aktiv` tinyint(4) DEFAULT 1,
    PRIMARY KEY (`konto`)
);

CREATE OR REPLACE VIEW `view_readtable_buchungskonten` AS
select
    `buchungskonten`.`konto` AS `konto`,
    `buchungskonten`.`name` AS `name`,
    `buchungskonten`.`aktiv` AS `aktiv`,
    `buchungskonten`.`konto` AS `display`
from
    `buchungskonten`;