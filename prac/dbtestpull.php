<?php
$db = new PDO("mysql:host=localhost;dbname=dbtest",
 "dbtest", "dbtest");
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
try {
    $queryStr = "SELECT * FROM TeacherData";
    $query = $db->prepare($queryStr);
    $query->execute();
    while ($row = $query->fetch()) {
        echo $row['Email_address'] . ' - ' . $row['Status'] . ' - ' . 
$row['Last_Login'] . ' - ' . $row['First_name'];
        echo '<br>';
    }
    $query->closeCursor();
} catch (PDOException $e) {
    echo $e->getMessage();
}
?>