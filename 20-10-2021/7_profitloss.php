<?php

$cost_price=$_POST["costprice"];
$sell_price=$_POST["sellprice"];

function checkProfit($cost_price,$sell_price){
    $profit=$sell_price-$cost_price;
    return $profit;
}

function checkLoss($cost_price,$sell_price){
    $loss=$cost_price-$sell_price;
    return $loss;
}

if ($sell_price == $cost_price)
    echo "No profit nor Loss"; 
else if ($sell_price > $cost_price)
    echo checkProfit($cost_price,$sell_price)." Profit ";
else
    echo checkLoss($cost_price,$sell_price)." Loss ";
 
?>