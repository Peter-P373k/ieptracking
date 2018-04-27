<?php
require_once 'pet.php';

class Dog extends Pet
{
    public function speak() {
        return 'Woof! Woof!';
    }

    public function plays() {
        return 'fetch';
    }
}
?>