<?php
class Dog
{
    public $name;

    public function __construct($name) {
        $this->name = $name;
    }

    public function speak() {
        return 'Woof! Woof!';
    }
}
?>