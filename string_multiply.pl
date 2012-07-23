#!/usr/bin/perl

printf("Enter a string: ");
chomp($string = <STDIN>);
printf("Enter a multiplier: ");
chomp($multiplier = <STDIN>);

$i = 0;
while ($i < $multiplier)
{
	printf("%s\n", $string);
	$i++;
}	
