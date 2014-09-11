#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#------------------------

# USING HASHES

# DEFINE HASH
my %music_genre = ("Architects" => "Metal",
                   "Comeback Kid" => "Hardcore");

# PRINT ONE VALUE FROM HASH
say $music_genre{"Architects"};

# GET KEYS AND VALUES COUNT FROM HASH
my $keys = keys %music_genre;
my $values = values %music_genre;
say "Keys: $keys";
say "Values: $values";

#------------------------
# THE EACH FUNCTION

my $key;
my $value;
my $hash_dump;

while (($key, $value) = each %music_genre){
	say "$key => $value";
}

print "\n\n";

#------------------------
# FOREACH

foreach $hash_dump (%music_genre) {
	say $hash_dump;
}

print "\n\n";

#------------------------
# TYPICAL USE OF HASH

# DEFINE HASH
my %band_albums = ();  

# SET HASH VALUES
$band_albums{"Architects"} = 6;
$band_albums{"Comeback Kids"} = 5;
$band_albums{"Noname"} = 0;

# CHECK HASH KEY EXISTANCE
if (exists $band_albums{"Noname"}) {
	say "Noname!";
} else {
	say "that key doesn't exist."
} #if

# DELETE FROM HASH
delete $band_albums{"Noname"};

# CHECK HASH KEY EXISTANCE
if (exists $band_albums{"Noname"}) {
	say "Noname!";
} else {
	say "Key = \"Noname\" doesn't exist."
} #if


print "\n\n";

#------------------------

# HASH ELEMENT INTERPOLATION

say "Here are the band names:";

foreach my $album (keys %band_albums) {
	say $album;
} #foreach

say "";

say "Here are the band album counts:";

foreach my $band (values %band_albums) {
	say $band;
} #foreach

print "\n\n";

#------------------------

# ENVIRONMENT

say %ENV;

#------------------------