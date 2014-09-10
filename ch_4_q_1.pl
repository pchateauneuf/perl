#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

=comment
Write a subroutine, named total, which returns the total of a list of numbers. Hint: the subroutine should not perform any I/O; it should simply process its parameters and return a value to its caller. 

Try it out in this sample program, which merely exercises the subroutine to see that it works. The first group of numbers should add up to 25.

=cut

#+++++++++++++++++++++++++++++++++++++++++

sub total{
	
	#variables
	my @user_input = @_;
	my $sum = 0;
	my $value;
	
	foreach $value (@user_input) {
		$sum = $sum + $value;
	} #foreach

	print "The sum of your input is $sum.\n";
	
}#function

#+++++++++++++++++++++++++++++++++++++++++

#variables
our $prompt;
our @input;

#input
$prompt = "Enter some numbers on different lines:\n";
print $prompt;
@input = <STDIN>;
chomp(@input);

total(@input);


