#!usr/bin/perl
use 5.010;
use strict;
use warnings;
use autodie;

open LOG, ">> log_file.txt";
select LOG;  #select the filehandle you want to edit
$| = 1; #flush the buffer
select STDOUT; #set back to standard out
printf LOG "add to log file.\n"; #print to log filehandle

#-----------------------------------------

our @array = (1,2,3,4);

say "@array";

say LOG "new line via say.";