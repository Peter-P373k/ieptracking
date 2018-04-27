<?php
$test1 = 3.16;
$test2 = 4;
$test3 ='hello world';
$test4 = true;
$test5 = array(400,20,450,90);
echo "$test3 <br> $test4 <br> $test4 <br> $test1 <br> $test5 <br>";
?>
<br>
<br>
<?php
$myArray = array('item1' => 'My Value'); 
echo $myArray. " not working properly".'<br>';
?>
<br>
<?php
$array = array("size" => "XL", "color" => "gold");
print_r(array_values($array));
?>
<br>
<br>
<?php
$squares = array();
for ($key = 0; $key < 10; $key++) {
    $squares[$key] = $key * $key;
}
print_r(array_values($squares)).'<br>';

echo $squares.'<br>';
?>
<br>
<br>
<?php
$myArray = array(1 => 'Hello', 2 => 'World');
foreach ($myArray as $key => $value) {
    echo $key . ': ' . $value . '<br>';
}
?>
<br>
<br>
<?php
$myArray = array('pizza', 'hut');
foreach ($myArray as $value) {
    echo $value . '<br>';
}
?>