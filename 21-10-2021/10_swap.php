<?php
    
    $arr1 = array(1,2,3,4);
    $arr2 = array(10,20,30,40);

    function printArray($a){
        for($i = 0; $i<count($a); $i++){
            echo $a[$i]." ";
        }
    }
    echo "Before Swap:<br>";
    echo " : First Array <br>".printArray($arr1);
    echo " = Second Array ".printArray($arr2);

    function swap(&$a, &$b){
        for($i = 0; $i < count($a); $i++){
            $a[$i] = $a[$i] + $b[$i];
            $b[$i] = $a[$i] - $b[$i];
            $a[$i] = $a[$i]-$b[$i];
        }
    }
    
    swap($arr1, $arr2);
    echo "<br><br>After Swap:<br>";
    echo " : First Array <br>".printArray($arr1);
    echo " : Second Array ".printArray($arr2);
?>