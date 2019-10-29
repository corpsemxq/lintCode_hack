namespace LintCode;
require_once(__DIR__."/../vendor/autoload.hack");

class eight_rotate_string {

    public function __construct(){}

    public function rotate_string(string $input, int $offset): string {
        $len = \HH\Lib\Str\length($input);
        $firstPart = \HH\Lib\Str\slice($input, 0, $len - $offset);
        $secondPart = \HH\Lib\Str\slice($input, $len - $offset, $offset);
        return "$secondPart"."$firstPart";
    }
}

<<__EntryPoint>>
function main_eight():void {
    \Facebook\AutoloadMap\initialize();
    $obj = new eight_rotate_string();
    echo \var_dump($obj-> rotate_string("sb", 0));
}