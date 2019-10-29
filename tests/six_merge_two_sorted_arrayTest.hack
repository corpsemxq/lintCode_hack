use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};
require_once(__DIR__.'/../vendor/autoload.hack');

class six_merge_two_sorted_arrayTest extends HackTest {
    public function provideSMTSATexample(): vec<(Vector<int>, Vector<int>, Vector<int>)> {
        return vec[
            tuple(Vector{1,2,3,4,5,6},Vector{7,8,9},Vector{1,2,3,4,5,6,7,8,9}),
            tuple(Vector{1,3,5,6},Vector{2,3,9},Vector{1,2,3,5,6,9}),
            tuple(Vector{},Vector{7,8,9},Vector{7,8,9}),
            tuple(Vector{6},Vector{-1,1,2,9},Vector{-1,1,2,6,9}),
            tuple(Vector{1,2},Vector{1,2,9},Vector{1,2,9}),
        ];
    }

    <<DataProvider("provideSMTSATexample")>>
    public function testMergeTwoArray(Vector<int> $v1, Vector<int> $v2, Vector<int> $result): void{
        \Facebook\AutoloadMap\initialize();
        $obj = new \LintCode\six_merge_two_sorted_array();
        $r = $obj -> merge_two_sorted_array($v1, $v2);
        // echo \var_dump($r);
        // echo \var_dump($result);
        expect($result == $r) -> toBeSame(true);
    }
}