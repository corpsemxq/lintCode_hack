use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};
require_once(__DIR__.'/../../vendor/autoload.hack');

class two_trailing_zeroTest extends HackTest {
    public function provoidTTZTexample(): vec<(int, int)> {
        return vec[
            tuple(0,0),
            tuple(0,0),
            tuple(5,1),
            tuple(10,2),
            tuple(15,3),
            tuple(16,3)
            ];
    }

    <<DataProvider("provoidTTZTexample")>>
    public function testtrailingzeros(int $in, int $out): void {
        \Facebook\AutoloadMap\initialize();
        $obj = new two_trailing_zeros();
        expect($result = $obj->trailing_zero($in))->toBeSame($out);
    }
}