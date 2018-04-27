<?php
require_once 'connect.php';
$sql ="INSERT INTO `classes`(`Class_id`, `class_Code`, `Student_Count`, `Teacher_ID`) VALUES ([001],'V30','14','Tomlinson@p373kbtc.org')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>