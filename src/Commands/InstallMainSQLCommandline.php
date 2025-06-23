<?php

namespace Tualo\Office\ERP\Commands;

use Garden\Cli\Cli;
use Garden\Cli\Args;
use phpseclib3\Math\BigInteger\Engines\PHP;
use Tualo\Office\Basic\ICommandline;
use Tualo\Office\ExtJSCompiler\Helper;
use Tualo\Office\Basic\TualoApplication as App;
use Tualo\Office\Basic\PostCheck;

class InstallMainSQLCommandline implements ICommandline
{

    public static function getCommandName(): string
    {
        return 'install-sql-erp';
    }

    public static function setup(Cli $cli)
    {
        $cli->command(self::getCommandName())
            ->description('installs needed sql for fibuconv module')
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
            'install/booking_circle.ds'    => 'setup booking_circle.ds',

                        
            'install/vertriebsregion'    => 'setup vertriebsregion',
            'install/vertriebsregion.ds'    => 'setup vertriebsregion.ds',
            
            'install/mengeneinheiten'    => 'setup mengeneinheiten',
            'install/mengeneinheiten.ds'    => 'setup mengeneinheiten.ds',

            'install/geschaeftsstatus'    => 'setup geschaeftsstatus',
            'install/geschaeftsstatus.ds'    => 'setup geschaeftsstatus.ds',

            'install/kundenbetreuer'    => 'setup kundenbetreuer',
            'install/kundenbetreuer.ds'    => 'setup kundenbetreuer.ds',

            'install/preiskategorien'    => 'setup preiskategorien',
            'install/preiskategorien.ds'    => 'setup preiskategorien.ds',

            'install/rechnungsdruck'    => 'setup rechnungsdruck',
            'install/rechnungsdruck.ds'    => 'setup rechnungsdruck.ds',

            'install/rechnungslegung'    => 'setup rechnungslegung',
            'install/rechnungslegung.ds'    => 'setup rechnungslegung.ds',

            'install/steuergruppen'    => 'setup steuergruppen',
            'install/steuergruppen.ds'    => 'setup steuergruppen.ds',

            'install/vertragsarten'    => 'setup vertragsarten',
            'install/vertragsarten.ds'    => 'setup vertragsarten.ds',

            'install/zahlungsarten'    => 'setup zahlungsarten',
            'install/zahlungsarten.ds'    => 'setup zahlungsarten.ds',

            'install/zahlungsschluessel'    => 'setup zahlungsschluessel',
            'install/zahlungsschluessel.ds'    => 'setup zahlungsschluessel.ds',

            'install/warenhauptgruppen'    => 'setup warenhauptgruppen',
            'install/warenhauptgruppen.ds'    => 'setup warenhauptgruppen.ds',

            'install/warengruppen'    => 'setup warengruppen',
            'install/warengruppen.ds'    => 'setup warengruppen.ds',

            'install/lager'    => 'setup lager',
            'install/lager.ds'    => 'setup lager.ds',

            'install/preisorientierung'    => 'setup preisorientierung',
            'install/preisorientierung.ds'    => 'setup preisorientierung.ds',

            'install/buchungskonten'    => 'setup buchungskonten',
            'install/buchungskonten.ds'    => 'setup buchungskonten.ds',

            'install/bfkonten'    => 'setup bfkonten',
            'install/bfkonten.ds'    => 'setup bfkonten.ds',

            'install/bfkonten_zuordnung'    => 'setup bfkonten_zuordnung',
            'install/bfkonten_zuordnung.ds'    => 'setup bfkonten_zuordnung.ds',


            'install/buchungskreise'    => 'setup buchungskreise',
            'install/buchungskreise.ds'    => 'setup buchungskreise.ds',

            'install/artikelgruppen'    => 'setup artikelgruppen',
            'install/artikelgruppen.ds'    => 'setup artikelgruppen.ds',

            'install/adressen'    => 'setup adressen',
            'install/adressen.ds'    => 'setup adressen.ds',

            'install/staffeln'    => 'setup staffeln',
            'install/staffeln.ds'    => 'setup staffeln.ds',

            'install/geschaeftsstellen'    => 'setup geschaeftsstellen',
            'install/geschaeftsstellen.ds'    => 'setup geschaeftsstellen.ds',



            'install/geschaeftsstellen_logins'    => 'setup geschaeftsstellen_logins',
            'install/geschaeftsstellen_logins.ds'    => 'setup geschaeftsstellen_logins.ds',

            'install/brieffusstextspalten'    => 'setup brieffusstextspalten',
            'install/brieffusstextspalten.ds'    => 'setup brieffusstextspalten.ds',

            'install/brieffusstext'    => 'setup brieffusstext',
            'install/brieffusstext.ds'    => 'setup brieffusstext.ds',

            'install/blg_artikel'    => 'setup blg_artikel',
            'install/blg_artikel.ds'    => 'setup blg_artikel.ds',

            'install/buchungskreise_logins'    => 'setup buchungskreise_logins',

            'install/hauptkassenbuecher'    => 'setup hauptkassenbuecher',
            'install/hauptkassenbuecher.ds'    => 'setup hauptkassenbuecher.ds',

            'install/kassenterminals'    => 'setup kassenterminals',
            'install/kassenterminals.ds'    => 'setup kassenterminals.ds',

            'install/proc.recalculateHeader'    => 'setup recalculateHeader',

            'install/proc.addForeignKeyIfNotExists'    => 'setup addForeignKeyIfNotExists',
            // immer zum schluss
            'install/fill_ds'    => 'refreshing ds data',

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
