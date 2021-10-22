<?php
    $total = 600;
    echo "Total Rupees are: ". $total."<br>";
    $c100 = floor($total/100);
    $r = $total%100;

    $c50 = floor($r/50);
    $r = $r%50;
    
    $c20 = floor($r/20);
    $r = $r%20;

    $c10 = floor($r/10);
    $r = $r%10;

    $c5 = floor($r/5);
    $r = $r%5;

    $c2 = floor($r/2);
    $r = $r%2;

    $c1 = $r;

    echo "<br>coins of 100 are : ".$c100."<br>";
    echo "coins of 50 are : ".$c50."<br>";
    echo "coins of 20 are : ".$c20."<br>";
    echo "coins of 10 are : ".$c10."<br>";
    echo "coins of 5 are : ".$c5."<br>";
    echo "coins of 2 are : ".$c2."<br>";
    echo "coins of 1 are : ".$c1."<br>";
?>