#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that computes the circumference 
of a circle with a radius of 12.5. 
Circumference is 2π times the radius 
(approximately 2 times 3.141592654). 
The answer you get should be about 78.5.
=cut 

$radius = 12.5;
$circumference = 2*3.141592654;
$calculation = $radius * $circumference;
print "The circumference is " , $calculation , "\n";