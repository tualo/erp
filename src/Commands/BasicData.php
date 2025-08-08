<?php

namespace Tualo\Office\ERP\Commandline;

use Tualo\Office\Basic\ICommandline;
use Tualo\Office\Basic\CommandLineInstallSQL;

class BasicData extends CommandLineInstallSQL  implements ICommandline
{
    public static function getDir(): string
    {
        return dirname(__DIR__, 1);
    }
    public static $shortName  = 'erp-basicdata';
    public static $files = [
        'basic/data' => 'setup data',
    ];
}
