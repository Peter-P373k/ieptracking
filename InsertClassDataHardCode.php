<?php
require 'connect.php';
 $sql ="INSERT INTO `classes`(`Class_id`, `class_Code`, `Student_Count`, `Teacher_ID`) VALUES (null,'V320','15','erte@p373kbtc.org')";
    $conn->exec($sql);
    echo "New record created successfully";
$conn = null;
?>