<?php
//da= dearness allowance
//hra=house rent allowance

$basic_salary = 30000;
$house_rent_allowance = $basic_salary * 0.5;
$dearness_allowance = $basic_salary * 0.2;

$gross_salary = $basic_salary + $dearness_allowance + $house_rent_allowance;

echo "Gross Salary is : ".$gross_salary;
?>

