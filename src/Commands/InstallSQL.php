<?php

namespace Tualo\Office\ERP\Commands;

use Garden\Cli\Cli;
use Garden\Cli\Args;
use phpseclib3\Math\BigInteger\Engines\PHP;
use Tualo\Office\Basic\ICommandline;
use Tualo\Office\ExtJSCompiler\Helper;
use Tualo\Office\Basic\TualoApplication as App;
use Tualo\Office\Basic\PostCheck;

class InstallSQL implements ICommandline
{

    public static function getCommandName(): string
    {
        return 'install-sql-erp';
    }

    public static function setup(Cli $cli)
    {
        $cli->command(self::getCommandName())
            ->description('installs needed sql for erp module')
            ->opt('client', 'only use this client', true, 'string');
    }


    public static function setupClients(string $msg, string $clientName, string $file, callable $callback)
    {
        $_SERVER['REQUEST_URI'] = '';
        $_SERVER['REQUEST_METHOD'] = 'none';
        App::run();

        $session = App::get('session');
        $sessiondb = $session->db;
        $dbs = $sessiondb->direct('select username db_user, password db_pass, id db_name, host db_host, port db_port from macc_clients ');
        foreach ($dbs as $db) {
            if (($clientName != '') && ($clientName != $db['db_name'])) {
                continue;
            } else {
                App::set('clientDB', $session->newDBByRow($db));
                PostCheck::formatPrint(['blue'], $msg . '(' . $db['db_name'] . '):  ');
                $callback($file);
                PostCheck::formatPrintLn(['green'], "\t" . ' done');
            }
        }
    }

    public static function run(Args $args)
    {

        $files = [

            'install/ds_class'    => 'setup ds_class',

            'install/booking_circle'    => 'setup booking_circle',

            'install/einspeiserkennzeichen'    => 'setup einspeiserkennzeichen',


            'install/vertriebsregion'    => 'setup vertriebsregion',

            'install/mengeneinheiten'    => 'setup mengeneinheiten',

            'install/geschaeftsstatus'    => 'setup geschaeftsstatus',

            'install/kundenbetreuer'    => 'setup kundenbetreuer',

            'install/preiskategorien'    => 'setup preiskategorien',

            'install/rechnungsdruck'    => 'setup rechnungsdruck',

            'install/rechnungslegung'    => 'setup rechnungslegung',

            'install/steuergruppen'    => 'setup steuergruppen',

            'install/vertragsarten'    => 'setup vertragsarten',

            'install/zahlungsarten'    => 'setup zahlungsarten',

            'install/zahlungsschluessel'    => 'setup zahlungsschluessel',

            'install/warenhauptgruppen'    => 'setup warenhauptgruppen',

            'install/warengruppen'    => 'setup warengruppen',

            'install/lager'    => 'setup lager',

            'install/preisorientierung'    => 'setup preisorientierung',

            'install/buchungskonten'    => 'setup buchungskonten',

            'install/bfkonten'    => 'setup bfkonten',

            'install/buchungskreise'    => 'setup buchungskreise',

            'install/artikelgruppen'    => 'setup artikelgruppen',

            'install/kombiartikel'    => 'setup kombiartikel',

            'install/bfkonten_zuordnung'    => 'setup bfkonten_zuordnung',

            'install/adressen'    => 'setup adressen',

            'install/staffeln'    => 'setup staffeln',

            'install/geschaeftsstellen'    => 'setup geschaeftsstellen',

            'install/geschaeftsstellen_logins'    => 'setup geschaeftsstellen_logins',

            'install/brieffusstextspalten'    => 'setup brieffusstextspalten',

            'install/brieffusstext'    => 'setup brieffusstext',

            'install/blg_artikel'    => 'setup blg_artikel',

            'install/buchungskreise_logins'    => 'setup buchungskreise_logins',

            'install/hauptkassenbuecher'    => 'setup hauptkassenbuecher',

            'install/kassenterminals'    => 'setup kassenterminals',

            'install/proc.recalculateHeader'    => 'setup recalculateHeader',

            'install/proc.addForeignKeyIfNotExists'    => 'setup addForeignKeyIfNotExists',
            // immer zum schluss
            'install/fill_ds'    => 'refreshing ds data',


            'install/ds/adressen.ds'    => 'dataset setup adressen.ds',
            'install/ds/artikelgruppen.ds'    => 'dataset setup artikelgruppen.ds',
            'install/ds/bfkonten.ds'    => 'dataset setup bfkonten.ds',
            'install/ds/bfkonten_steuersatz.ds'    => 'dataset setup bfkonten_steuersatz.ds',
            'install/ds/bfkonten_zuordnung.ds'    => 'dataset setup bfkonten_zuordnung.ds',
            'install/ds/booking_circle.ds'    => 'dataset setup booking_circle.ds',
            'install/ds/blg_artikel.ds'    => 'dataset setup blg_artikel.ds',
            'install/ds/blg_config.ds'    => 'dataset setup blg_config.ds',
            'install/ds/geschaeftsstatus.ds'    => 'dataset setup geschaeftsstatus.ds',

            'install/ds/geschaeftsstellen.ds'    => 'dataset setup geschaeftsstellen.ds',
            'install/ds/geschaeftsstellen_logins.ds'    => 'dataset setup geschaeftsstellen_logins.ds',

            'install/ds/hauptkassenbuecher.ds'    => 'dataset setup hauptkassenbuecher.ds',
            'install/ds/kassenterminals.ds'    => 'dataset setup kassenterminals.ds',
            'install/ds/kundenbetreuer.ds'    => 'dataset setup kundenbetreuer.ds',
            'install/ds/lager.ds'    => 'dataset setup lager.ds',
            'install/ds/mengeneinheiten.ds'    => 'dataset setup mengeneinheiten.ds',
            'install/ds/preiskategorien.ds'    => 'dataset setup preiskategorien.ds',
            'install/ds/preisorientierung.ds'    => 'dataset setup preisorientierung.ds',
            'install/ds/rechnungsdruck.ds'    => 'dataset setup rechnungsdruck.ds',
            'install/ds/rechnungslegung.ds'    => 'dataset setup rechnungslegung.ds',
            'install/ds/staffeln.ds'    => 'dataset setup staffeln.ds',
            'install/ds/steuergruppen.ds'    => 'dataset setup steuergruppen.ds',
            'install/ds/steuergruppen_field.ds'    => 'dataset setup steuergruppen_field.ds',
            'install/ds/vertragsarten.ds'    => 'dataset setup vertragsarten.ds',
            'install/ds/vertriebsregion.ds'    => 'dataset setup vertriebsregion.ds',
            'install/ds/warengruppen.ds'    => 'dataset setup warengruppen.ds',
            'install/ds/warenhauptgruppen.ds'    => 'dataset setup warenhauptgruppen.ds',
            'install/ds/zahlungsarten.ds'    => 'dataset setup zahlungsarten.ds',
            'install/ds/zahlungsschluessel.ds'    => 'dataset setup zahlungsschluessel.ds',
            'install/ds/warengruppen.ds'    => 'dataset setup warengruppen.ds',

            'install/ds/buchungskonten.ds'    => 'dataset setup buchungskonten.ds',
            'install/ds/buchungskreise.ds'    => 'dataset setup buchungskreise.ds',

            //'install/ds/kombiartikel.ds'    => 'dataset setup kombiartikel.ds',


            /*
            adressen.ds.sql                 einspeiserkennzeichen.ds.sql    rechnungsdruck.ds.sql
artikelgruppen.ds.sql           geschaeftsstatus.ds.sql         rechnungslegung.ds.sql
bfkonten_steuersatz.ds.sql      geschaeftsstellen_logins.ds.sql staffeln.ds.sql
bfkonten_zuordnung.ds.sql       geschaeftsstellen.ds.sql        steuergruppen_field.ds.sql
bfkonten.ds.sql                 hauptkassenbuecher.ds.sql       steuergruppen.ds.sql
blg_artikel.ds.sql              kassenterminals.ds.sql          vertragsarten.ds.sql
booking_circle.ds.sql           kundenbetreuer.ds.sql           vertriebsregion.ds.sql
brieffusstext.ds.sql            lager.ds.sql                    warengruppen.ds.sql
brieffusstextspalten.ds.sql     mengeneinheiten.ds.sql          warenhauptgruppen.ds.sql
buchungskonten.ds.sql           preiskategorien.ds.sql          zahlungsarten.ds.sql
buchungskreise.ds.sql           preisorientierung.ds.sql        zahlungsschluessel.ds.sql
*/

        ];


        foreach ($files as $file => $msg) {
            $installSQL = function (string $file) {

                $filename = dirname(__DIR__) . '/sql/' . $file . '.sql';
                $sql = file_get_contents($filename);
                $sql = preg_replace('!/\*.*?\*/!s', '', $sql);
                $sql = preg_replace('#^\s*\-\-.+$#m', '', $sql);

                $sinlgeStatements = App::get('clientDB')->explode_by_delimiter($sql);
                foreach ($sinlgeStatements as $commandIndex => $statement) {
                    try {
                        App::get('clientDB')->execute($statement);
                        App::get('clientDB')->moreResults();
                    } catch (\Exception $e) {
                        echo PHP_EOL;
                        PostCheck::formatPrintLn(['red'], $e->getMessage() . ': commandIndex => ' . $commandIndex);
                    }
                }
            };
            $clientName = $args->getOpt('client');
            if (is_null($clientName)) $clientName = '';
            self::setupClients($msg, $clientName, $file, $installSQL);
        }
    }
}
