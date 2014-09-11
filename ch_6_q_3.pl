#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#------------------------

=comment
Write a program to list all of the keys and values in %ENV. Print the results in two columns in ASCIIbetical order. For extra credit, arrange the output to vertically align both columns. The length function can help you figure out how wide to make the first column. Once you get the program running, try setting some new environment variables and ensuring that they show up in your output.
=cut

# VARIABLES
my $key;
my $value;

# PRINT CURRENT ENVIRONMENT VARIABLES
while (($key,$value) = each %ENV) {
	say "$key => $value";
}

