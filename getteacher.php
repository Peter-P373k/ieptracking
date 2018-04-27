<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$q = intval($_GET['q']);

$con = mysqli_connect('localhost','dbtest','dbtest','dbtest');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"dbtest");
$sql="SELECT * FROM TeacherData WHERE Email_address = * ";
$result = mysqli_query($con,$sql);

echo "<table>
<tr>
<th>Email_address</th>
<th>Last_name</th>
<th>First_Name</th>
<th>Hometown</th>
<th>Job</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['Email_address'] . "</td>";
    echo "<td>" . $row['Last_Name'] . "</td>";
    echo "<td>" . $row['First_Name'] . "</td>";
    echo "<td>" . $row['Hometown'] . "</td>";
    echo "<td>" . $row['Job'] . "</td>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>