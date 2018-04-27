<?php
require 'connect.php';
$code=$_POST["class_code"];
$gradyear=$_POST["year"];
$lname=$_POST["lname"];
$fname=$_POST["fname"];
$osis=$_POST["osis"];
$gender=$_POST["Gender"];
$temail = $_POST["Temail"];
echo $temail,$gender,$osis,$fname,$lname,$gradyear,$code;
 $sql = "INSERT INTO `StudentData`(`FirstName`, `LastName`, `DOB`, `OSIS`, `GradYear`, `IntakeDate`, `Sex`, `Class_id`, `TeacherEmail`) VALUES ('$fname','$lname','2018-04-04','$osis','$year','2018-04-07','$gender','$code','$temail')";
    $conn->exec($sql);
    echo "New record created successfully";
?>