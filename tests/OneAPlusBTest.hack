use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};
require_once(__DIR__.'/../vendor/autoload.hack');


class OneAPlusBTest extends HackTest {
    public function provideSquareExamples(): vec<(num, num, num)> {
        return vec[
            tuple(1,2,3),
            tuple(2,2,4),
            tuple(-1,1,0),
            tuple(1.1,2.2,3.3)
        ];
    }

    <<DataProvider("provideSquareExamples")>>
    public function testAplusb(num $in, num $in2, num $expected_output): void {
        \Facebook\AutoloadMap\initialize();
        // printf(aplusb($in, $in2));
        $result = \LintCode\aplusb($in, $in2);
        expect((float)$result) -> toBeSame((float)$expected_output);
    }
}

// function main(): noreturn {
//     $testObj = new one_aplusb_Test();
//     testObj.getTestClassName()
// }