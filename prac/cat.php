<?php
require_once 'pet.php';

class Cat extends Pet
{
    public function speak() {
        return 'Meow!';
    }

    public function plays() {
        return 'chase mice';
    }
}
?>