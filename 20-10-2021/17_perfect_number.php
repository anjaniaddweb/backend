<?php
    $num=$_POST["number"];

    $sum=0;
    for($i=1;$i<$num;$i++)
    {
        if($num%$i==0)
        {
            $sum = $sum + $i;
        }
    }
    if($sum==$num)
    {
        echo $num." is Perfect Number";
    }
    else
    {
        echo $num." is not Perfect Number";
    }
?>