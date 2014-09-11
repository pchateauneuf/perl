#!usr/bin/perl
use 5.010;
use strict;
#use warnings;
use autodie;

=comment
Modify the previous program to let the user choose the column width, so that entering 30, hello, good-bye (on separate lines) would put the strings at the 30th column. (Hint: see Interpolation of Scalar Variables into Strings in Chapter 2, about controlling variable interpolation.) For extra credit, make the ruler line longer when the selected width is larger.
=cut


#-----------------------------------
# COLUMN VARIABLES

my $column_markers = "1234567890";
my $column_multiplier = 6;
my $column_spacer = ".";

#-----------------------------------

# GET USER INPUT
say "Enter column width:";
chomp (my $column_width = <STDIN>);

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