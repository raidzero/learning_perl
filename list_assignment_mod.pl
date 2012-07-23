#!/usr/bin/perl

($players[0][0], $players[1][0], $players[2][0], $players[3][0]) = qw(Crono Marle Lucca Magus);
($players[0][1], $players[1][1], $players[2][1], $players[3][1]) = qw(Lightning Water Fire Shadow);

for ($i=0; $i<=3; $i++)
{
	printf("%s: %s\n", $players[$i][0], $players[$i][1]);
}
