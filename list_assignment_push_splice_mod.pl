#!/usr/bin/perl

@players = qw(Crono Marle Ayla Fabulous Lucca Magus Paul Frog Robo);
@magic = qw(Lightning Water None Gay Fire Shadow Unix Water Shadow);

foreach $player (@players)
{
	$arraySize++;
	push(@PLAYERS, $player);
}

foreach $type (@magic)
{
	push(@TYPES, $type);
}

#loop through and just remove invalid elements
$ii = 0; #index for invalid players arrays
for ($i=0; $i<$arraySize; $i++)
{
	#anything other than Fire, Water, Lightning or Shadow must be invalid
	if ( $TYPES[$i] !~ "Fire|Water|Shadow|Lightning|None" )
	{
		#the below splice removes 1 element at position $i 
		$INVALID_PLAYERS[$ii] = splice @PLAYERS, $i, 1;
		$INVALID_TYPES[$ii] = splice @TYPES, $i, 1;
		$invalidPlayers++;
		$ii++;
		$arraySize--; #the array's size has now been reduced by 1
	}
}

#now loop through and display the final array, up to the arraySize position
printf("VALID PLAYERS:\n");
for ($i=0; $i<$arraySize; $i++)
{
	printf("%s: %s\n", $PLAYERS[$i], $TYPES[$i]);	
}

if ($invalidPlayers)
{
	printf("\nINVALID PLAYERS:\n");
	for ($i=0; $i<$invalidPlayers; $i++)
	{
		printf("%s: %s\n", $INVALID_PLAYERS[$i], $INVALID_TYPES[$i]);
	}
	print("INVALID MAGIC TYPES: @INVALID_TYPES\n");
}
		
