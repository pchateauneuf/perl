#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Modify the program from the previous exercise 
to prompt for and accept a radius from 
the person running the program. 
So, if the user enters 12.5 for the radius, 
she should get the same number as in the 
previous exercise.
=cut

$circumference = 2*3.141592654;
print "Enter radius: ";
$radius = <STDIN>;
$calculation = $radius * $circumference;
print "Circumference is: " , $calculation , "\n";