<?php
    $number=$_POST['num'];
    $c=0;
    while($number!=0)
    {
        if($number>$c)
        {
            $c=$number;
        }
    }
    echo $c;
?>