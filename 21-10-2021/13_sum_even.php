<?php

function EvenOddSum($arr, $n)
{
	$even = 0;
	$odd = 0;
	for ($i = 0; $i < $n; $i++)
	{
		
		// Loop to find even, odd sum
		if ($i % 2 == 0)
			$even += $arr[$i];
		else
			$odd += $arr[$i];
	}

	echo("Odd index positions sum " . $even."<br>");
	echo("Even index positions sum " . $odd);
}

$arr = array( 10, 20, 30, 40, 50, 60 );
$n = sizeof($arr);

EvenOddSum($arr, $n);

?>