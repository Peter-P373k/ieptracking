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
    catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
	{
    echo $sql . "<br>" . $e->getMessage();
    }
?>