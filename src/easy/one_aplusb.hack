namespace LintCode;

function aplusb(num $x, num $y):num {
    $res = \bcadd((string) $x , (string) $y, 1);
    return (float)$res;
}

// function aplusb(float $x, float $y): float {
//     return bcadd("".$x ,"".$y);
// }

// function aplusb(int $x, int $y): int {
//     return $x + $y;
// }


<<__EntryPoint>>
function main_aplusb(): noreturn {
    $expect = 3.3;
    $result =  aplusb(1.1,2.2);
    // echo gettype($expect);
    // echo gettype($result);
    echo ((float)$expect === (float)$result) ? "TRUE" : "FALSE";
    exit(0);
}