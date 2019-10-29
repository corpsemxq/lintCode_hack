use function Facebook\FBExpect\expect;
use type Facebook\HackTest\{DataProvider, HackTest};
require_once(__DIR__."/../vendor/autoload.hack");

class eight_rotate_stringTest extends HackTest {

    public function provideExample(): vec<(string, int, string)> {
        return vec[
            tuple("sb",0, "sb"),
            tuple("abcdefg",3, "efgabcd"),
            tuple("a", 1, "a"),
            tuple("aaa", 1, "aaa")
        ];
    }

    <<DataProvider("provideExample")>>
    public function testRotateString(string $input, int $offset, string $res): void {
        \Facebook\AutoloadMap\initialize();
        $obj = new \LintCode\eight_rotate_string();
        expect($res = $obj->rotate_string($input, $offset)) -> toBeSame($res);
    }

}