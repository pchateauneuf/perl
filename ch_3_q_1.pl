#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

=comment
Write a program that reads a list of strings on separate lines 
until end-of-input and prints out the list in reverse order. 
If the input comes from the keyboard, you’ll probably need to 
signal the end of the input by pressing Control-D on Unix, 
or Control-Z on Windows.
=cut

$prompt = "Enter a list of items. Hit <RETURN> between each entry.  CTL+D when done.\n";

print $prompt;

@user_input = <STDIN>;
chomp(@user_input);

@feedback = reverse(@user_input);

print "Your REVERSED list is: " , @feedback , "\n";


