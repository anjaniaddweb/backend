<?php

//da= dearness allowance
//hra=house rent allowance
//pf=provident fund
$basic_salary = 30000;
$house_rent_allowance = $basic_salary * 0.5;
$dearness_allowance = $basic_salary * 0.2;
$provident_fund = $basic_salary * 0.3;
$medical = $basic_salary * 0.1;

$gross_salary = ($basic_salary + $house_rent_allowance + $dearness_allowance) - ($provident_fund + $medical);

echo "Gross salary is : ".$gross_salary;

?>