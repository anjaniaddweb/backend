<?php

function count_even_odd( $arr, $arr_size)
{
	$even_count = 0;		
	$odd_count = 0;	
		
		
	// loop to read all the values in
	// the array
	for( $i = 0 ; $i < $arr_size ; $i++)
	{
		// checking if a number is
		// completely divisible by 2
		if ($arr[$i] & 1 == 1)
			$odd_count ++ ;	
		else			
			$even_count ++ ;		
	}

	echo "Number of Even Elements = " ,
		$even_count," <br>Number of odd " ,
			"elements = " ,$odd_count ;	
}

	$arr = array(2, 3, 4, 5, 6);
	$n = count($arr);

	count_even_odd($arr, $n);

?>
