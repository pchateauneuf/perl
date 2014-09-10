#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

=comment
 Extra credit exercise: write a subroutine, called &above_average, which takes a list of numbers and returns the ones which are above the average (mean). (Hint: make another subroutine that calculates the average by dividing the total by the number of items.) Try your subroutine in this test program.
=cut

#++++++++++++++++++++++++++++++

sub get_average{

	#variables
	my @input = @_;
	my $sum = 0;
	my $value;
	my $count;
	my $average;
	
	#get sum
	foreach $value (@input) {
		$sum = $sum + $value;
	} #foreach
	
	#get count
	$count = $#input + 1;
	
	#get average
	$average = $sum / $count;
	
	#return
	return $average;
	
} #get_average

sub get_above_average{

	#variables
	my ($average,@input) = @_;    #input
	my $value;					  #var
	my @above_average_array;	  #array
	my $start = 0;				  #var
	my $count;					  #var
	my $output;                   #var
	
	#get numbers
	foreach $value (@input) {
		if ($value > $average) {
			push(@above_average_array,$value);
		}#if
	} #foreach

	return @above_average_array;
	
}#get_above_average

#++++++++++++++++
#variables
my $prompt = "enter a series of numbers:\n";
my @input;
my $average;
my @above_average;

#call
print $prompt;
@input = <STDIN>;
$average = get_average(@input);
print "The average is $average.\n";

@above_average = get_above_average($average,@input);
chomp(@above_average);

print "The numbers above the average include\n@above_average\n";