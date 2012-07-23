#!/usr/bin/perl

printf("Enter some strings terminated with end of input character:\n");
@LINES= <STDIN>;

print("\n\n");
print(reverse(@LINES));
