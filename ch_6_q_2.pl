#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#------------------------

=comment
Write a program that reads a series of words (with one word per line[187]) until end-of-input, then prints a summary of how many times each word was seen. (Hint: remember that when an undefined value is used as if it were a number, Perl automatically converts it to 0. It may help to look back at the earlier exercise that kept a running total.) So, if the input words were fred, barney, fred, dino, wilma, fred (all on separate lines), the output should tell us that fred was seen 3 times. For extra credit, sort the summary words in code point order in the output.
=cut

# PROMPT USER INPUT
say "Input a series of words pressing <RETURN> in between each.";
say "Press CTL+D when complete.";

# USER INPUT
chomp(my @user_input = <STDIN>);

# CREATE HASH
my %input_hash = ();

#CREATE HASH
foreach my $value (@user_input) {
	
	# CREATE A VARIABLE FOR EACH UNIQUE INPUT
	my $current_input = $value => 0;
	
	# CONDITION
	if ($input_hash{$current_input}) {
		
		# IF VARIABLE EXISTS, ADD TO HASH VALUE
		$input_hash{$current_input} = $input_hash{$current_input} + 1;

	} else {
		
		# IF VARIABLE DOES NOT EXIST, SET HASH VALUE
		$input_hash{$current_input} = 1
		
	} #if
	
} # foreach

# SET KEY/VALUE VARIABLES
my $key;
my $value;

while (($key, $value) = each %input_hash) {
	say "$key => $value";
} #while

#------------------------