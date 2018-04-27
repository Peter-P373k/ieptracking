<?php
require 'newdog.php';
require 'cat.php';
require 'fish.php';
include 'lizard.php';
include 'parrot.php';


$fido = new Dog('Fido');
echo 'The dog\'s name is: ' . $fido->name . '<br>';
echo 'The dog says: ' . $fido->speak() . '<br>';
echo 'The dog plays: ' . $fido->plays() . '<br>';

$mittens = new Cat('Mittens');
echo 'The cat\'s name is: ' . $mittens->name . '<br>';
echo 'The cat says: ' . $mittens->speak() . '<br>';
echo 'The cat plays: ' . $mittens->plays() . '<br>';

$bubbles = new Fish('Bubbles');
echo 'The fish\'s name is: ' . $bubbles->name . '<br>';
echo 'The fish moves is: ' . $bubbles->swim() . '<br>';
echo 'The fish says: ' . $bubbles->speak() . '<br>';

/*$larry = new Lizard('Larry');
echo 'The lizard\'s name is: ' . $larry->name . '<br>';
//echo 'The lizard moves is: ' . $larry->crawl() . '<br>';
//echo 'The lizard says: ' . $larry->speak() . '<br>';

$bill = new Parrot('Bill');
echo 'The bird\'s name is: ' . $bill->name . '<br>';
//echo 'The bird moves is: ' . $bill->fly() . '<br>';
//echo 'The bird says: ' . $bill->speak() . '<br>';
*/
?>