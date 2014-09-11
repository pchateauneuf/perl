#!usr/bin/perl
use 5.010;
use strict;
#use warnings;
use autodie;

=comment
Write a program that asks the user to enter a list of strings on separate lines, printing each string in a right-justified, 20-character column. To be certain that the output is in the proper columns, print a “ruler line” of digits as well. (This is simply a debugging aid.) Make sure that you’re not using a 19-character column by mistake! For example, entering hello, good-bye should give output something like this:
 
notice both end here: 
...................v  
123456789012345678901234567890123456789012345678901234567890
               hello
            good-bye
=cut

#-----------------------------------
# COLUMN VARIABLES

my $column_width = 20;
my $column_markers = "1234567890";
my $column_multiplier = 6;
my $column_spacer = ".";

#-----------------------------------

# GET USER INPUT
say "Enter a list pressing <RETURN> between each item. CTL+D when done.";
chomp(my @user_input = <STDIN>);

# SET DEBUG AID
print ${column_markers}x${column_multiplier} , "\n";

# LOOP THROUGH INPUT
foreach (@user_input) {
	my $input_length = length($_);
	#print "input length " , $input_length , "\n";
	my $spacers_needed = $column_width - $input_length;
	#print "spacers needed " , $spacers_needed , "\n";
	print ${column_spacer}x${spacers_needed} , $_ , "\n";
}

#-----------------------------------