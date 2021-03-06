#!/usr/bin/perl

printf("Enter some player names:\n");
printf("(CTRL+D to terminate input on a blank line)\n");
chomp (@players = <STDIN>);
printf("Enter their respective magic types:\n");
chomp(@magic = <STDIN>);

foreach $player (@players)
{
	push(@PLAYERS, $player);
}

foreach $type (@magic)
{
	push(@TYPES, $type);
}

#loop through and just remove invalid elements
$ii = 0; #index for invalid players arrays
for ($i=0; $i<@PLAYERS; $i++)
{
	#anything other than Fire, Water, Lightning or Shadow must be invalid
	if ( $TYPES[$i] !~ "Fire|Water|Shadow|Lightning|None" )
	{
		#the below splice removes 1 element at position $i 
		$INVALID_PLAYERS[$ii] = splice @PLAYERS, $i, 1;
		$INVALID_TYPES[$ii] = splice @TYPES, $i, 1;
		$ii++;
	}
}

#now loop through and display the final array, up to the arraySize position
printf("VALID PLAYERS:\n");
for ($i=0; $i<@PLAYERS; $i++)
{
	printf("%s: %s\n", $PLAYERS[$i], $TYPES[$i]);	
}


if (@INVALID_PLAYERS)
{
	printf("\nINVALID PLAYERS:\n");
	for ($i=0; $i<@INVALID_PLAYERS; $i++)
	{
		printf("%s: %s\n", $INVALID_PLAYERS[$i], $INVALID_TYPES[$i]);
	}
	@REVERSED_INVALID_TYPES = reverse(@INVALID_TYPES);
	print("INVALID MAGIC TYPES: @REVERSED_INVALID_TYPES (", scalar @INVALID_TYPES, ")\n");
}
