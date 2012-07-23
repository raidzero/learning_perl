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

#loop through and just remove invalid elements
for ($i=0; $i<$arraySize; $i++)
{
	#anything other than Fire, Water, Lightning or Shadow must be invalid
	if ( $TYPES[$i] !~ "Fire|Water|Shadow|Lightning" )
	{
		#s the below plice removes 1 element at position $i 
		splice @PLAYERS, $i, 1;
		splice @TYPES, $i, 1;
		$arraySize--; #the array's size has now been reduced by 1
	}
}

#now loop through and display the final array, up to the arraySize position
for ($i=0; $i<$arraySize; $i++)
{
	printf("%s: %s\n", $PLAYERS[$i], $TYPES[$i]);	
}
