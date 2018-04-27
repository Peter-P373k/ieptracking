<?php
require_once 'pet.php'

class Parrot extends Pet;
{
	
	public function fly()
	{
		return 'bird is flying';
	}
}
?>