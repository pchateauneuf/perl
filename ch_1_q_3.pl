#!usr/bin/perl
use 5.010;
use warnings;

#+++++++++++++++++++++++++++

@lines = `perldoc -u -f atan2`;
foreach(@lines) {
	s/\w<([^>]+)>/\U$1/g;
	print;
}