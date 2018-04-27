<?php
// set database connection information as variables
$servername = "localhost";
$username = "dbtest";
$password = "test";
$dbname = "ieptracker";
// Set user input into variables to pass as parameters 
	$users_LastName = $_POST['LastName'];
	$users_EmailAddress = $_POST['EmailAddress'];
	$users_FirstName = $_POST['FirstName'];

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully\n"; 
	//$sql = "INSERT INTO TeacherData (FirstName, LastName, EmailAddress)
    //VALUES ('Peter', 'Ibrahim', 'pibrahim@p373kbtc.org')";
	// Insert variables passed from used into database field. Database ieptracker table TeacherData
	
	$sql = "INSERT INTO `ieptracker`.`TeacherData` (`FirstName`, `LastName`, `EmailAddress`) VALUES ('$users_FirstName', '$users_LastName Test', '$users_EmailAddress')";

    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
	{
    echo $sql . "<br>" . $e->getMessage();
    }
?>