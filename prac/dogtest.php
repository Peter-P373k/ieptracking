<?php
require 'classdog.php';

$dog = new Dog('Fido');
echo 'The dog\'s name is: ' . $dog->name . '<br>';
echo 'The dog says: ' . $dog->speak() . '<br>';
$red =new Dog ('bigRed');
echo 'The dog\'s name is : ' . $red->name .'<br>';
echo 'The dog says:' . $red->speak() . '<br>';
$fifi = new Dog('Fifi');
echo 'The dog\'s name is: ' . $fifi->name . '<br>';
echo 'The dog says: ' . $fifi->speak() . '<br>';
?>