#Match operator
$bar="This is foo and again foo";
if ($bar=~/foo/) {
print "First time is matching\n";  		
} else {
print "First time is not matching\n";  
}
$bar="foo";
if ($bar=~/foo/) {
print "Second time is matching\n";  		
} else {
print "Second time is not matching\n";  
}
######################################
$bar="This is foo and again foo";
if ($bar=~m[foo]) {
print "First time is matching\n";  		
} else {
print "First time is not matching\n";  
}
$bar="foo";
if ($bar=~m{foo}) {
print "Second time is matching\n";  		
} else {
print "Second time is not matching\n";  
}
#Matching only once
@list = qw/food foosball subeo footnote terfoot canic footbrdige/;
foreach(@list) {
$first=$1 if /(foo.*?)/;
$last=$1 if /(foo.*)/;
}
print "First: $first, Last: $last\n";
#Regular expression variable
$string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n";
print "Matched $&\n";
print "After $'\n";
#The substitution operator
#s///, is really just an extension of the match operator that allows you ti replace the text matched with some new text.
#s/PATTERN/REPLACEMENT/;
$string = "The cat sat on the mat";
$string =~ s/cat/dog/;
print "$string\n";
#The translation operator
$string='The cat sat on the mat';
$string =~ tr/a/o/;
print "$string\n";
#The /d mofifier deletes the characters matching SEARCHLIST that do not have a corresponding entry in REPLACEMENTLIST
$string = 'the cat sat on the mat.';
$string =~ tr/a-z/b/d;
print "$string\n";
#The last modifier,/s/removes the duplicate sequences of characters that were replaced
$string = 'food';
$string = 'food';
$string =~ tr/a-z/a-z/s;
print "$string\n";
#More complex regular expressions
$string = "Cats go Catatonic\nWhen given Catnip";
($start)=($string=~/\A(.*?) /);
@lines=$string=~/^(.*?) /gm;
print "First word: $start\n", "Line starts: @lines\n";
#Grouping matching
$time="12:05:30";
$time=~m/(\d+):(\d+):(\d+)/;
my($hours,$minutes,$seconds)=($1,$2,$3);
print "Hours: $hours, Minutes: $minutes, Second: $seconds\n";
$date='03/26/1999';
$date=~s#(\d+)/(\d+)/(\d+)#$3/$1/$2#;
print "$date\n";
#The \G Assetion
$string = "The time is: 12:31:02 on 4/12/00";
$string =~/:\s+/g;
($time)=($string=~/\G(\d+:\d+:\d+)/);
$string =~/.+\s+/g;
($date)=($string=~m{\G(\d+/\d+/\d+)});
print "time: $time, Date: $date\n";