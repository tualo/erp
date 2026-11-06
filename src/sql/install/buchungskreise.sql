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


alter table buchungskreise add if not exists iban varchar(35) default '';
alter table buchungskreise add if not exists electronic_scheme varchar(10);
alter table buchungskreise add if not exists electronic_address varchar(255);
alter table buchungskreise add if not exists contact_name varchar(255);
alter table buchungskreise add if not exists contact_phone varchar(255);
alter table buchungskreise add if not exists contact_email varchar(255);
alter table buchungskreise add if not exists iban  varchar(255);
