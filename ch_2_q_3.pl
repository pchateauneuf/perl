#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Modify the program from the previous exercise 
so that, if the user enters a number less than zero, 
the reported circumference will be zero, 
rather than negative.
=cut

$circumference = 2*3.141592654;
print "Enter radius: ";
$radius = <STDIN>;

if ($radius >= 0) {
	$calculation = $radius * $circumference;
	print "Circumference is: " , $calculation , "\n";
} else {
	print "You entered a negative number\n";
}