#!/usr/bin/perl

printf("Enter some strings followed by end of input:\n");
chomp (@STRINGS = <STDIN>);

@SORTED = sort(@STRINGS);
printf("\n\n");

foreach $string (@SORTED)
{
	printf("%s ", $string);
}
printf("\n\n");
foreach $string (@SORTED)
{
	printf("%s\n", $string);
}
