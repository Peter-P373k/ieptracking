<?php
require 'connect.php';
$code=$_POST["class_code"];
$NOS=$_POST["NOS"];
$temail = $_POST["Temail"];
echo $code, $NOS, $temail;
 $sql = "INSERT INTO `classes`(`Class_id`, `class_Code`, `Student_Count`, `Teacher_ID`) VALUES (null, '$code', '$NOS', '$temail')";
    $conn->exec($sql);
    echo "New record created successfully";
?>