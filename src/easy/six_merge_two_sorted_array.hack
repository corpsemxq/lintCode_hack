namespace LintCode;

class six_merge_two_sorted_array {

    public function __construct() {}

    public function merge_two_sorted_array(Vector<int> $v1, Vector<int> $v2): Vector<int> {
        $i = 0;
        $j = 0;
        $v1_length = $v1 -> count();
        $v2_length = $v2 -> count();
        $v1_i = 0;
        $v2_i = 0;
        // echo $v1_length;
        // echo "\n";
        // echo $v2_length;
        $result = Vector{};
        while ($v1_i < $v1_length && $v2_i < $v2_length) {
            if ($v1[$v1_i] < $v2[$v2_i]) {
                $result->add($v1[$v1_i]);
                $v1_i++;
            } else if($v1[$v1_i] > $v2[$v2_i]){
                $result->add($v2[$v2_i]);
                $v2_i++;
            } else {
                $result->add($v2[$v2_i]);
                $v2_i++;
                $v1_i++;
            }
        }
        if ($v1_i < $v1_length) {
            for ($i = $v1_i ; $i < $v1_length; $i++) {
                $result->add($v1[$v1_i++]);
            }
        }
        if ($v2_i < $v2_length) {
            for ($i = $v2_i; $i < $v2_length; $i ++) {
                $result->add($v2[$v2_i++]);
            }
        }
        return $result;
    }
}

<<__EntryPoint>>
function main_merge(): void {
    $obj = new six_merge_two_sorted_array();
    $result =  $obj-> merge_two_sorted_array(Vector{1,2,3},Vector{2,3,4});
    foreach ($result as $v) {
        echo "\n";
        echo $v;
    }
}


// Merge two given sorted non-duplicate ascending integer array A and B into a new sorted integer array.

// Input:  A=[1], B=[1]
// Output: [1]	
// Explanation:  return array merged.

// Input:  A=[1,2,3,4], B=[2,4,5,6]
// Output: [1,2,3,4,5,6]	
// Explanation: return array merged.
