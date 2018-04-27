<!DOCTYPE html>
<html>
<body>
<div> "This is showing up"</div>
//<?php
  //  $myPDO = new PDO('mysql:host=localhost;dbname=ieptracker', 'dbtest', 'test');
//	?>
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
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
	{
    echo $sql . "<br>" . $e->getMessage();
    }

?>

</body>
</html>


