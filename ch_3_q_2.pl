#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that reads a list of numbers (on separate lines) 
until end-of-input and then prints for each number the 
corresponding person’s name from the list shown below. 
(Hardcode this list of names into your program. 
That is, it should appear in your program’s source code.) 
For example, if the input numbers were 1, 2, 4, and 2, 
the output names would be fred, betty, dino, and betty:
 fred betty barney dino wilma pebbles bamm-bamm
=cut

$prompt = "Enter list keys to see corresponding values.\n";

print $prompt;

@user_input = <STDIN>;
chomp(@user_input);

@user_names = ("Peter","Theresa","Michael","Tory");

foreach $user_input (@user_input) {
	print $user_names[$user_input] , "\n";
}