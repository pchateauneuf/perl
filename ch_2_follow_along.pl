#!usr/bin/perl -w
use 5.010;
use warnings;
use diagnostics;
use utf8;

#+++++++++++++++++++++++++++

$num = 1_2_3_4_5;
print $num , "\n";

$num = 2**3;
print $num , "\n";

$str = "coke\tsprite";
print $str , "\n";

$str = "Pete"x3;
print $str , "\n";

$str = "Pete";
print ${str} , "r" , "\n";

#+++++++++++++++++++++++++++

$num = 2;
$num **= 3;
print $num , "\n";

#+++++++++++++++++++++++++++

$code_point = ord("A");

print $code_point , "\n";

$character = chr($code_point);

print $character , "\n";

#+++++++++++++++++++++++++++

$num1 = 1;
$num2 = 1;
$check = $num1 == $num2;

print "num1 == num2: " , $check , "\n";

#+++++++++++++++++++++++++++

$str1 = "PETER";
$str2 = "PETE";
$check = $str1 eq $str2;

print "str1 == str2: " , $check , "\n";

if ($str1 eq "PETER") {
	print "Name is " , $str1 , "\n";
} else {
	print "Name is not " , $str1 , "\n";
}

$comparison = $str1 eq $str2;

if ($comparison) {
	print "This boolean works.\n";
}

if (!$comparison) {
	print "This NOT boolean works.\n";
}

#+++++++++++++++++++++++++++

print "Enter a value:";
$line = <STDIN>;

if ($line eq "\n") {
	print "Blank line entered.\n";
} else {
	print "Value entered: " , $line , "\n";
}

#+++++++++++++++++++++++++++

$count = 0;
while ($count < 10) {
	$count = $count + 1;
	print "count is now " , $count , "\n";
}

#+++++++++++++++++++++++++++

$n = 1;
$sum = 0;
while ($n < 10) {
	$n = $n + 1;
	$sum = $sum + $n;
}
print "The total value is " , $sum , "\n";

#+++++++++++++++++++++++++++

$input_question = "Please input a phrase: ";
print $input_question;
$input_answer = <STDIN>;

if ($input_answer ne "\n") {
	print "Your answer: " , $input_answer , "\n";
} else {
	print "No input given.\n";
}











#+++++++++++++++++++++++++++