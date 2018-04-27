<?php
class Pet
{
    public $name;

    public function __construct($name) {
        $this->name = $name;
    }

    public function speak() {
        return 'nothing';
    }
}
?>