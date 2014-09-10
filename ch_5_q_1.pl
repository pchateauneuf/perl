#!usr/bin/perl
use 5.010;
use strict;
#use warnings;
use autodie;

=comment
Write a program that acts like cat, but reverses the order of the output lines. (Some systems have a utility like this named tac.) If you run yours as ./tac fred barney betty, the output should be all of file betty from last line to first, then barney and then fred, also from last line to first. (Be sure to use the ./ in your program’s invocation if you call it tac so that you don’t get the system’s utility instead!)
=cut

#------------------------------------
# first file

my @file_list = ("ch_5_q_1_file1.txt","ch_5_q_1_file2.txt");

foreach (@file_list) {

	#get each file name
	my $filename = $_; 

	#open file
	open FILE, "< ${filename}" or die "Could not open file: $!";

	#reverse rows
	my @rows = <FILE>;
	my @rows_reversed = reverse(@rows);
	my $file_row_count = $#rows_reversed + 1;

	#loop through output
	foreach (@rows_reversed) {
		print $_;
	}

} #loop through 2 files




close FILE;