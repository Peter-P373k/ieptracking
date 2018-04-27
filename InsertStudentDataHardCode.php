<?php
require 'connect.php';
 $sql ="INSERT INTO `StudentData`(`FirstName`, `LastName`, `DOB`, `OSIS`, `GradYear`, `IntakeDate`, `Sex`, `Class_id`, `TeacherEmail`) VALUES ('John','Wayne','2018-04-04','98987654','1998','2018-04-07','$Male','Y17','Peterxsharp@gmail.com')";
    $conn->exec($sql);
    echo "New record created successfully";
$conn = null;
?>