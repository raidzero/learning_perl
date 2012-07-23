#!/usr/bin/perl

printf("Enter a string: ");
chomp($string = <STDIN>);
printf("Enter a multiplier: ");
chomp($multiplier = <STDIN>);

for ($i = 0; $i < $multiplier; $i++)
{
	printf("%s\n", $string);
}	
