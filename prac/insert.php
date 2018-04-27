<?php
$db = new PDO("mysql:host=localhost;dbname=kickstartapp",
 "testdb", "testdb");
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
try {
    $queryStr = "INSERT INTO users (name, password, email) 
VALUES ('admin', MD5('admin'), 'youremail@domain.com')";
    $db->query($queryStr);
} catch (PDOException $e) {
    echo $e->getMessage();
}
?>