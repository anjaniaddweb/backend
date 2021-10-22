<?php

    $num = $_POST["number"];
    $count = 0;
    for($i=2; $i<=$num; $i++)
    {
        if($num % 2 == 0)
        $count=1;
        break;
    }
    if($count == 1)
    {
        echo "$num is not a prime number";
    }
    else
    {
        echo "$num is a prime number";
    }
    
?>