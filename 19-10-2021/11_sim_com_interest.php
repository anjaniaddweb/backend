<?php

// p = principle
// t = time
// r = rate
// CI = compound interest
// SI = Simple interest

$p=5;
$r=7;
$t=9;
$CI = NULL;

$SI=($p * $r *$t)/100;
echo "Simple Interest = ".$SI;

$CI = $p * (pow((1 + $r / 100), $t));
echo "<br>Compound Interest = " . $CI;

?>


