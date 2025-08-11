delimiter ;

insert ignore into mengeneinheiten (id, name, symbol, faktor) values (1, 'STK', 'Stk.', 1.000000);
insert ignore into buchungskreise (id,name) values ('0000','Standard');

insert ignore into lager (id, name, status) values (1, 'Transitlager', 1);
insert ignore into lager (id, name, status) values (2, 'Lager 1', 1);

insert ignore into warenhauptgruppen (id, name) values (1, 'Hauptgruppe 1');

insert ignore into `warengruppen` (`id`, `warengruppe`, `wgsort`, `farbe`, `warenhauptgruppe`, `beleggruppierung`) 
values (1, 'unbekannt', 999, 'rgb(0,0,0)', 1, '') ;

insert ignore into buchungskonten (konto, name, aktiv) values ('1000', 'Bankkonto', 1);
insert ignore into bfkonten (id, name) values (1, 'Konto 1');

insert ignore into bfkonten (id, name) values (2, 'Konto 2');

insert ignore into artikelgruppen 
    (gruppen_id, gruppe, warengruppe, status, bestandsartikel, system, kommission, gebinde, 
    zusatztext, bemerkung, plugin, verkaufszeitraum_von, verkaufszeitraum_bis, averkaufszeitraum_von, averkaufszeitraum_bis, einheit, login, max_anzahl, max_weight, max_height, max_length, max_thickness, konto_id)
values
    (1, 'Gruppe 1', 1, 1, 1, 1, 1, 1, 'Zusatztext 1', 'Bemerkung 1', 'Plugin 1', '2000-01-01', '2099-12-31', '2000-01-01', '2099-12-31', 1, 'user1', 100, 100.000000, 100.000000, 100.000000, 100.000000, 1);
insert ignore into bfkonten_zuordnung (gruppe, konto_id) values ('Gruppe 1', 1);

insert ignore into blg_config 
(id, name, tabellenzusatz, adress_bezug, bezug_id, bezug_kst,transitlager) 
values (1, 'Musterbeleg','muster', 'adressen', 'kundennummer', 'kostenstelle', 1);


insert  into blg_config 
(id, name, tabellenzusatz, adress_bezug, bezug_id, bezug_kst,transitlager) 
values (2, 'Rechnung','dr', 'adressen', 'kundennummer', 'kostenstelle', 1);

