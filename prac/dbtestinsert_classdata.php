<?php
// set database connection information as variables
$servername = "localhost";
$username = "dbtest";
$password = "dbtest";
$dbname = "dbtest";
// Set user input into variables to pass as parameters 
	$class_Code = $_POST['ClassCode'];
	$Student_Count = $_POST['Number_Student'];
	$Teacher_ID = $_POST['Teacher_Email'];
    $classID="1"

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully\n"; 
	//$sql = "INSERT INTO TeacherData (FirstName, LastName, EmailAddress)
    //VALUES ('Peter', 'Ibrahim', 'pibrahim@p373kbtc.org')";
	// Insert variables passed from used into database field. Database ieptracker table TeacherData
	
	$sql = "INSERT INTO `classes`(`Class_id`, `class_Code`, `Student_Count`, `Teacher_ID`) VALUES ($classID,$class_Code,$Student_Count,$Teacher_ID)";

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