#!/usr/bin/perl

printf("Please enter a radius: ");
chomp($radius = <STDIN>);
$circumference = (2*3.14159) * $radius;

printf("Circumference of radius %d is %d.\n", $radius, $circumference);
