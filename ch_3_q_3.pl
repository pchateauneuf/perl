#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that reads a list of strings (on separate lines) 
until end-of-input. Then it should print the strings in code point order. 
That is, if you enter the strings fred, barney, wilma, betty, 
the output should show barney betty fred wilma. 
Are all of the strings on one line in the output or on separate lines? 
Could you make the output appear in either style?
=cut

$prompt = "Enter a list of values:\n";
print $prompt;

@user_input = <STDIN>;
chomp(@user_input);

@user_values = ("Peter","Theresa","Michael","Tory");

@selected_values = ();

foreach $user_input (@user_input) {
	push(@selected_values,$user_values[$user_input]);
}

foreach $selected_value (@selected_values) {
	print $selected_value , "\n";
}

