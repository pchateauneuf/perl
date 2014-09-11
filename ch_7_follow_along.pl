#!usr/bin/perl -w
use 5.010;
use strict;
use warnings;

#------------------------

# SIMPLE PATTERNS

$_ = "hello world";
my $expression = "lo wo";

# EXPRESSION ALWAYS BETWEEN / /
if (/$expression/) {
	say "Regular expression \"$expression\" matched to \"$_\"";
}

print "\n\n";
#------------------------

# UNICODE PROPERTIES

# CHECK FOR TRUE:  \p{something}  - lowercase 'p'
# CHECK FOR FALSE: \P{something}  - uppercase 'P'

$_ = "hello world 123";

# CHECK FOR WHITESPACE
if (/\p{Space}/) {
	say "Your var has a space";
} else {
	say "Your var has no space";
}

# CHECK FOR DIGITS
if (/\p{Digit}/) {
	say "Your var has a digit";
} else {
	say "Your var has no digit";
}

print "\n\n";

#------------------------

# UNICODE PROPERTIES

# CHECK FOR TRUE:  \p{something}  - lowercase 'p'
# CHECK FOR FALSE: \P{something}  - uppercase 'P'

$_ = "helloworld123";

# CHECK FOR WHITESPACE
if (/\P{Space}/) {
	say "Your var has no space";
} else {
	say "Your var has a space";
}

# CHECK FOR DIGITS
if (/\P{Digit}/) {
	say "Your var has no digit";
} else {
	say "Your var has a digit";
}

print "\n\n";

#------------------------

# METACHARACTERS

# SIMPLE QUANTIFIERS

# . MATCHES PRECEDING CHARACTER EXACTLY 1 TIME

$_ = "Peter";

if (/Pet.r/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# * MATCHES THE PRECEDING CHARACTER ANY NUMBER OF TIMES (INCLUDING 0)

$_ = "Peeeeeter";

if (/Pet*er/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

$_ = "Peeeeeter";

if (/Pe*ter/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# .* MATCHES *ANY CHARACTER* *ANY NUMBER* OF TIMES

$_ = "Peter junkJunkJunk Chateauneuf";

if (/Peter.*Chateauneuf/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# + MATCHES THE PRECEDING CHARACTER AT LEAST 1 TIME

$_ = "Peter       Chateauneuf";

if (/Peter +Chateauneuf/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

$_ = "Peter   S. Chateauneuf";

if (/Peter S. +Chateauneuf/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# ? MAKES THE PRECEDING CHARACTER OPTIONAL

$_ = "PeterChateauneuf";

if (/Peter ?Chateauneuf/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# + CAN MATCH GROUPS OF CHARACTERS

$_ = "PeterPeterPeterPeter";

if (/(Peter)+/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

# | ACTS AS AN 'OR'

$_ = "Pete";

if (/(Pete)|(Mike)/) {
	say "Matched \"$_\" to expression";
} else {
	say "Did not match $_ to expression";
}

print "\n\n";
#------------------------

# CHARACTER CLASSES

$_ = "PeTE";

if (/[a-z]/) {
	say "$_ contains some lowercase"
} else {
	say "$_ contains no lowercase"
}

$_ = "PeTE";

if (/[a-f]/) {
	say "$_ contains some letters between a and f"
} else {
	say "$_ contains no letters between a and f"
}

$_ = "PETE012585";

if (/[(a-z0-9)]/) {
	say "$_ contains some lowercase letters or some numbers"
} else {
	say "$_ contains no lowercase letters and no numbers"
}

$_ = "PETE";

if (/[^0-9]/) {
	say "$_ contains no numbers"
} else {
	say "$_ contains some numbers"
}

# \d CAN BE SUBSTITUTED FOR [0-9]

$_ = "PETE";

if (/[^\d]/) {
	say "$_ contains no numbers"
} else {
	say "$_ contains some numbers"
}















#------------------------