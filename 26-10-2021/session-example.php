<html>
<head>
<title>Session</title>
</head>
<body>
<form method="post" action="session-example.php">

    Enter Name : <input type="text" name="name"> <br/>
    Enter Age : <input type="text" name="age"> <br/>
    Enter City : <input type="text" name="city"> <br/>
    <br/>
    <input type="submit" name="Submit1" value="Create Session">
    <input type="submit" name="Submit2" value="Retrieve Session">
    <input type="submit" name="Submit3" value="Delete Session">
</form>
</body>
</html>

<?php
session_start();

if(isset($_POST["Submit1"]))
{
    $_SESSION["name"]=$_POST["name"];
    $_SESSION["age"]=$_POST["age"];
    $_SESSION["city"]=$_POST["city"];
    echo "Session Created !!";
}

elseif(isset($_POST['Submit2']))
{
    if(isset($_SESSION["name"]))
    {
        echo "Name = ". $_SESSION["name"]."<br/>";
        echo "Age = ". $_SESSION["age"]."<br/>";
        echo "City = ". $_SESSION["city"]."<br/>";
    }
    else
    {
        echo "Session deleted !!";
    }
}
elseif(isset($_POST['Submit3']))
{
    session_destroy();
    echo "Session deleted !!";
}

?>
