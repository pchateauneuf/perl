#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

=comment
Modify the previous program to tell each new person the names of all the people it has previously greeted:
 greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
This sequence of statements should print:
 Hi Fred! You are the first one here!
Hi Barney! I've seen: Fred
Hi Wilma! I've seen: Fred Barney
Hi Betty! I've seen: Fred Barney Wilma
=cut

#-------------------------------------------------------------

sub greet{

	#variables
	my @input = @_;
	state @name_list;
	state $run_val = 0;
	my $count = 0;
	my $start = 0;
	my $value;
	
	#count number of runs
	$run_val = $run_val + 1;
		
	#add name to array
	push(@name_list,@input);
	
	#get count of array
	$count = $#name_list;
	
	if ($run_val == 1) {
		print "Hi @input! You are the first one here!\n";
	} else {
		print "Hi @input! I've seen:";
		for $value ($start..$count-1) {
			print $name_list[$value] , " ";
			$start = $start + 1;
		}#while
	}
	
	print "\n";
	
}#greet

#-------------------------------------------------------------

greet("Pete");
greet("Mike");
greet("Theresa");
greet("Tory");
