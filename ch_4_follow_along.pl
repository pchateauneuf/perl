#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#+++++++++++++++++++++++++++
my $addition;

sub sum_of_numbers{

	#variables
	my($num1,$num2) = @_;
	my $result;
	
	$result = $num1 + $num2;
	
	return $result;
	
	
}

$addition = sum_of_numbers(5,10) , "\n";
print $addition;

print "\n\n\n\n";
#+++++++++++++++++++++++++++



sub get_range{
	
	#variables
	my($first_num,$second_num) = @_;
	my $index;
	my @range;
	
	#work
	foreach  $index ($first_num..$second_num) {
		push(@range,$index);
	} #foreach
	
	print "Array: (";
	
	foreach (@range) {
		if ($_ == $second_num) {
			print "\"" , $_ , "\"";
		} else {
			print "\"" , $_ , "\",";
		}
	} #foreach
	
	print ")\n"
	
} #sub

get_range(1,10);


#+++++++++++++++++++++++++++


sub running_sum{

	#variables
	state $sum = 0; #persistant
	state @numbers; #persistant
	my $number;		#private
	
	#work
	foreach $number (@_) {
		push(@numbers,$number);
		$sum = $sum + $number;
	}
	
	print "The sum of (@numbers) is $sum.\n"
	
}#sub

running_sum(2,1);
running_sum(2,1);






