#!/usr/bin/perl

printf("Please enter a radius: ");
chomp($radius = <STDIN>);

if ($radius > 0)
{	
	$circumference = (2*3.14159) * $radius;
} else {
	$circumference = 0;
}

printf("Circumference of radius %d is %d.\n", $radius, $circumference);
