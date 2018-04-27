<?php
$connection = mysqli_connect("localhost", "dbtest", "dbtest", "dbtest");
 
$selectvalue = mysqli_real_escape_string($connection, $_GET['svalue']);
 
mysqli_select_db($connection, "dbtest");
$result = mysqli_query($connection, "SELECT classes.class_Code FROM classes WHERE classes.Student_Count = '$selectvalue'");
 
echo '<option value="">Please select...</option>';
    while ($row = mysqli_fetch_array($result))
  {
    echo '<option value="'.$row['class_Code'].'">' . $row['class_Code'] . "</option>";
    //echo $row['drink_type'] ."<br/>";
  }
 
mysqli_free_result($result);
mysqli_close($connection);
 
?>