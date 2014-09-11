#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#------------------------

=comment
Write a program that will ask the user for a given name and report the corresponding family name. Use the names of people you know, or (if you spend so much time on the computer that you don’t know any actual people) use the following table:

Input	Output
fred	flintstone
barney	rubble
wilma	flintstone
=cut

# SET HASH
my %family_hash = (
			        "Peter"   => "Shaw",
					"Theresa" => "Louise"
				  );

# PROMPT USER FOR INPUT
say "Enter a hash key:";
chomp(my $user_input = <STDIN>);

# FORMAT OUTPUT
my $output = $family_hash{$user_input};

# CONDITION
if ($output) {
	say "The value for key \"$user_input\" is $output";
} else {
	say "Key \"$user_input\" doesn't exist"
}




				  