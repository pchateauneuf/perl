#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

=comment
Using the subroutine from the previous problem, make a program to calculate the sum of the numbers from 1 to 1,000.
=cut

#++++++++++++++++++++
#variables
my @input = 1..1000;
my $total = 0;

#++++++++++++++++++++
#functions
sub get_total{

	#variables
	my @input = @_;
	my $sum = 0;
	my $value;
	
	#work
	foreach $value (@input) {
		$sum = $sum + $value;
	} #foreach

	#return
	return $sum;
	
}#get_total


#++++++++++++++++++++
#work
$total = get_total(@input);

print "The sum of numbers 1 to 1000 is $total.\n";