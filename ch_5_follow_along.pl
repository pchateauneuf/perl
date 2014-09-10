#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;
use autodie;

#--------------------------------------

my $line = "hi";

print "Is line defined? 1 if YES, undef is NO: \"" , defined($line) , "\"\n";

if (defined($line)) {
	print "Line is defined.\n";
} else {
	print "Line is not defined.\n";
}

#--------------------------------------

print "Enter items:\n";
my @input = <STDIN>;

foreach (@input) {
	print "You said: " , $_ , "\n";
}

print "\n\n";
#--------------------------------------

my @array;
@array = ("First","Second","Third");
print "@array";

print "\n\n";
#--------------------------------------
#printf

my $user = "pchateauneuf";
my $days_to_die = 13;

printf ("Hello, %s, your password will expire in %d days!\n" ,
       $user,         # %s = string
	   $days_to_die); # %d = decimal integer

print "\n\n";
#--------------------------------------
#open / close

my $selected_output = "my_output.txt";
print "Filehandle: LOG\n";
print "Mode: > (create/overwrite)\n";
print "File: $selected_output\n";
open LOG, ">" , $selected_output;
print "done.";



print "\n\n";
#--------------------------------------
#open / close

my $selected_output = "my_output.txt";
my $success;

print "Filehandle: LOG\n";
print "Mode: > (create/overwrite)\n";
print "File: $selected_output\n";
$success = open LOG, ">" , $selected_output;

if (!$success) {
	print "file failed to open.\n";
} else {
	print "file is open.\n"
}

close LOG;
print "file is closed.";

print "\n\n";

#--------------------------------------
# warn

my $selected_output = "my_output2.txt";
my $success;

print "Filehandle: LOG\n";
print "Mode: > (create/overwrite)\n";
print "File: $selected_output\n";
$success = open LOG, "<" , $selected_output;

if (!$success) {
	warn "Cannot create logfile.";
} else {
	print "file is open.\n"
}

close LOG;
print "file is closed.";

print "\n\n";

#--------------------------------------
#die
#use autodie;

my $selected_output = "my_output2.txt";
my $success;

print "Filehandle: LOG\n";
print "Mode: > (create/overwrite)\n";
print "File: $selected_output\n";
$success = open LOG, "<" , $selected_output;

=comment
if (!$success) {
	die "Cannot create logfile: $!";
} else {
	print "file is open.\n"
}
=cut
close LOG;
print "file is closed.";

print "\n\n";


#--------------------------------------