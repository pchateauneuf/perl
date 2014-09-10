#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that prompts for and reads 
two numbers (on separate lines of input) and 
prints out the product of the two numbers 
multiplied together.
=cut

print "Please enter a number: ";
chomp($num1 = <STDIN>);
print "Please enter a second number: ";
chomp($num2 = <STDIN>);
$calculation = $num1 * $num2;
print $num1 , " multiplied by " , $num2 , " is " , $calculation , "\n";