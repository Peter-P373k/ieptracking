<?php
require_once 'pet.php';

class Fish extends Pet
{
	public function swim()
	{
		return 'fish swims side to side';
	}
	public function speak() {
        return 'I am a fish!';
    }

    public function plays() {
        return 'hide and go seek';
    }
}
?>