#The ?: operator
$name = "Ali";
$age = 10;
$status = ($age > 60) ? "A senior citizen" : "Not a senior citizen";
print "$name is - $status\n";
#The loop
#for (;;) {
#printf "This loop will run forever.\n"	;
#}	
#Date & Time
@months=qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
@days=qw(Sun Mon Tue Wed Thu Fri Sat Sun);
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
print "$mday $months[$mon] $days[$wday]\n";
$datestring = localtime();
print "Local date and time $datestring\n";
$datestring=gmtime();
print "GMT date and time $datestring\n";
#Format date and time
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
print "Time format - HH:MM:SS\n";
printf("%02d:%02d:%02d\n",$hour,$min,$sec);
#Epoch time
$epoc=time();
print "Number of seconds since Jan 1, 1970 - $epoc\n";
$epoc = $epoc-24*60*60;#one day before of current date
$datestring=localtime($epoc);
print "Yesterday's date and time $datestring\n";