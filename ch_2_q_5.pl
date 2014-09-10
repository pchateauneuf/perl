#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that prompts for and reads a 
string and a number (on separate lines of input) 
and prints out the string the number of times 
indicated by the number on separate lines. (
Hint: use the x operator.) 
If the user enters “fred” and “3”, 
the output should be three lines, each saying “fred”. 
If the user enters “fred” and “299792,” 
there may be a lot of output.
=cut

print "Enter a string: ";
chomp($str1 = <STDIN>);
print "Enter a number: ";
chomp($num1 = <STDIN>);

print "Output: \n";
$counter = 0;
while ($counter < $num1) {
	$counter = $counter + 1;
	print $str1 , "\n";
}