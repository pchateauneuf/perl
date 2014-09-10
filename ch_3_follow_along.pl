#!usr/bin/perl -w
use 5.010;
#use strict;
use warnings;

#+++++++++++++++++++++++++++++++

$artist_name[0] = "Comeback Kid";
$artist_name[1] = "Counterparts";
$artist_name[2] = "Every Time I Die";

print $artist_name[0] , "\n\n\n\n";

#+++++++++++++++++++++++++++++++

$end = $#artist_name;
print "We have " , $end + 1 , " items in our array.\n";

#+++++++++++++++++++++++++++++++

@music_genre = ("Metal","Metalcore","Hardcore");

print $music_genre[1] , "\n";

push(@music_genre,"Post-Hardcore");

print $music_genre[3] , "\n\n\n\n";

#+++++++++++++++++++++++++++++++

@removed_music_genre = splice(@music_genre,2,1,"replacement");

print $music_genre[0] , "\n";
print $music_genre[1] , "\n";
print $music_genre[2] , "\n";
print $music_genre[3] , "\n\n\n\n\n\n";

#+++++++++++++++++++++++++++++++


$end = $#music_genre + 1;
$counter = 0;
$print = 0;

while ($counter < $end) {
	$print = $music_genre[$counter];
	print $print , "\n";
	$counter = $counter + 1;
}

print "\n\n\n\n\n";

#+++++++++++++++++++++++++++++++

print "FOR EACH:\n";

foreach $music_genre (@music_genre) {
	print $music_genre , "\n";
}









