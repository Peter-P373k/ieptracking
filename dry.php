<html>
<body>
<form action="welcome.php" method="post">
First Name: <input type="text" name="FirstName"><br>
Last Name: <input type="text" name="LastName"><br>
E-mail: <input type="text" name="EmailAddress"><br>
<input type="submit">
</form>
<?php
$servername = "localhost";
$username = "dbtest";
$password = "test";
$dbname = "ieptracker";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully\n"; 
	$sql = "INSERT INTO TeacherData (FirstName, LastName, EmailAddress)
    VALUES ('Peter', 'Ibrahim', 'pibrahim@p373kbtc.org')";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
</body>
</html>

//INSERT INTO `ieptracker`.`TeacherData` (`FirstName`, `LastName`, `EmailAddress`) VALUES ('PeterTest', 'IbrahimTest', 'Peterxsharp@gmail.com');
//$sql = "INSERT INTO `ieptracker`.`TeacherData` (`FirstName`, `LastName`, `EmailAddress`) VALUES (\'PeterTest\', \'IbrahimTest\', \'Peterxsharp@gmail.com\');";
