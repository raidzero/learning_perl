#!/usr/bin/perl

@players = qw(Crono Marle Fabulous Lucca Magus Paul Robo);
@magic = qw(Lightning Water Gay Fire Shadow Unix Shadow);

foreach $player (@players)
{
	$arraySize+=1;
	push(@PLAYERS, $player);
}

foreach $type (@magic)
{
	push(@TYPES, $type);
}

for ($i=0; $i<$arraySize; $i++)
{
	#anything other than Fire, Water, Lightning or Shadow must be invalid
	if ( $TYPES[$i] !~ "Fire|Water|Shadow|Lightning" )
	{
		printf("INVALID: %s (%s)\n", $PLAYERS[$i], $TYPES[$i]);
	} else {
		printf("%s: %s\n", $PLAYERS[$i], $TYPES[$i]);
	}	
}

