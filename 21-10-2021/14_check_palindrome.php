<?php
function palindrome($arr, $n)
{
    
    $flag = 0;
 
        for ($i = 0; $i <= $n / 2 &&
                 $n != 0; $i++)
    {
 
      if ($arr[$i] != $arr[$n - $i - 1])
     {
         $flag = 1;
         break;
        }
    }
 
    if ($flag == 1)
        echo "Not Palindrome";
    else
        echo " The array is Palindrome";
}
 
$arr = array(10,12,6,12,10);
$n = count($arr);
 
palindrome($arr, $n);
 
?>