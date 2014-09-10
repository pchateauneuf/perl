#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

=comment
Write a subroutine named greet that welcomes the person you name by telling them the name of the last person it greeted:
 greet( "Fred" );
greet( "Barney" );
This sequence of statements should print:
 Hi Fred! You are the first one here!
Hi Barney! Fred is also here!
=cut

#-------------------------------------------------------------

sub greet{

	#variables
	my @input = @_;
	state @name_list;
	state $run_val = 0;
	my $count = 0;
	
	#count number of runs
	$run_val = $run_val + 1;
		
	#add name to array
	push(@name_list,@input);
	
	#get count of array
	$count = $#name_list;
	
	if ($run_val == 1) {
		print "Hi @input! You are the first one here!\n";
	} else {
		print "Hi @input! @name_list[$count-1] is also here!\n";
	}
	
}#greet

#-------------------------------------------------------------

greet("Pete");
greet("Mike");
