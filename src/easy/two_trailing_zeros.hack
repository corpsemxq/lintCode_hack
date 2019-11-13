// Write an algorithm which computes the number of trailing zeros in n factorial.
// Example 1:
// 	Input:  11
// 	Output: 2
	
// 	Explanation: 
// 	11! = 39916800, so the output should be 2

// Example 2:
// 	Input:  5
// 	Output: 1
	
// 	Explanation: 
// 	5! = 120, so the output should be 1.

require_once(__DIR__.'/../../vendor/autoload.hack');


class two_trailing_zeros {
    public function __construct(){
    }

    public function trailing_zero(int $input): int {
        $max = HH\Lib\Math\INT64_MAX;
        // printf($max);
        if ($input <= 4) {
            return 0;
        }
        if ($input > 20) {
            return 0;
        }
        $currResult = 1;
        $count = 0;
        for ($i = 2; $i <= $input; $i++) {
            $currResult = $currResult * $i;
        }
        $currResult = (string) $currResult;
        $str_len = HH\Lib\Str\length($currResult);
        // printf("$str_len \n");
        for ($i = $str_len - 1; $i >= 0; $i--) {
            $curr = HH\Lib\Str\slice($currResult, $i, 1);
            if ($curr == "0") {
                // printf("$count \n");
                $count += 1;
            } else {
                break;
            }
        }
        return $count;

    }
}

<<__EntryPoint>>
function trailing_zero_main() : void {
    \Facebook\AutoloadMap\initialize();
    $obj = new two_trailing_zeros();
    printf("\n");
    $result = $obj->trailing_zero(10);
    echo "$result";
}