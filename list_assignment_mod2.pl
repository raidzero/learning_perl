#!/usr/bin/perl

@players = qw(Crono Marle Lucca Magus);
@magic = qw(Lightning Water Fire Shadow);

for ($i=0; $i<=3; $i++)
{
	printf("%s: %s\n", $players[$i], $magic[$i]);
}
