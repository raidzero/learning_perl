#!/usr/bin/perl

printf("Enter a number: ");
chomp($num1 = <STDIN>);
printf("Enter another number: ");
chomp($num2 = <STDIN>);

$product = $num1 * $num2;

printf("The product is: %d\n", $product);
