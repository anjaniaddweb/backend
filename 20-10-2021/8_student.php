<?php
    $android = $_POST['android'];
    $php = $_POST['php'];
    $html = $_POST['html'];
    $precision = 4;
    $total = ($android + $php + $html); // Compute total marks
    $average = number_format($total/3, $precision); //compute the average of total marks
    echo " Totamy folder is showing empty in github how i can add filesl marks of three subjects = ".$total ."";
    echo " <br>Average marks of three subjects = ".$average ."";
    
    if($total<35 || $android<35 || $php<35 || $html<35)
    {
    echo "<br>Fail";
    }
    else
    if($average>=60 && $average<70)
    {
    echo "<br>Third Class";
    }
    else
    if($average>=70 && $average<80)
    {
    echo "<br>Second Class";
    }
    else
    if($average>=80 && $average<95)
    {
    echo "<br>First Class";
    }
    else
    {
    echo "<br>Distinction";
    }
    return 0;
?>
