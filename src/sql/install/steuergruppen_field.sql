DELIMITER ;
create or replace view `steuergruppen_field` as select `steuergruppen`.`steuergruppe` AS `name`,`steuergruppen`.`feld` AS `feld` from `steuergruppen` union select 'steuerschluessel' AS `name`,'steuerschluessel' AS `feld`;
