#!/usr/bin/perl

@players = qw(Crono Marle Lucca Magus);
@magic = qw(Lightning Water Fire Shadow);

foreach $player (@players)
{
	push(@PLAYERS, $player);
}

foreach $type (@magic)
{
	push(@TYPES, $type);
}

for ($i=0; $i<=3; $i++)
{
	printf("%s: %s\n", $PLAYERS[$i], $TYPES[$i]);
}
