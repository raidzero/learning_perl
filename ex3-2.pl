#!/usr/bin/perl

print("Enter some numbers followed by end of input:\n");
@NUMBERS = <STDIN>;

@NAMES = qw(fred betty barney dino pebbles bamm-bamm);

foreach $number (@NUMBERS)
{
	printf("%s ", $NAMES[$number]);
}
print("\n");
