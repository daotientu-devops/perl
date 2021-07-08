#Subroutines
#A perl subroutine or function is a group of statements that together performs a task
#Perl uses the terms subroutine, method and function interchangeably
#Function definition
sub Hello{
  print "Hello, DAO TIEN A!\n";
}
#Function call
Hello();
sub Average {
#get total number of arguments passed
$n=scalar(@_);
$sum=0;
foreach $item(@_){
$sum+=$item;  		
}
$average=$sum/$n;
print "Average for the given numbers: $average\n";
}
#Function call
Average(10,20,30);
#Passing lists to subroutines
sub PrintList {
my @list=@_;
print "Given list is @list\n";
}
$a=10;
@b=(1,2,3,4);
#Function call with list parameter
PrintList($a,@b);
sub PrintHash{
my(%hash)=@_;
foreach my $key(keys %hash)  {
  my $value=$hash{$key};
  print "$key: $value\n";	
 }
}
%hash=('name'=>'Tom','age'=>19,'address'=>'HN');
#Function call with hash parameter
PrintHash(%hash);
#Returning value from a subroutine
sub Average1 {
#get total number of arguments passed
$n=scalar(@_);
$sum=0;
foreach $item(@_){
$sum+=$item;  		
}
$average=$sum/$n;
return $average;
}
#Function call
$num=Average1(10,20,30);
print "Average for the given numbers: $num\n";
#Private variables in a subroutine
#Global variable
$string="Hello, World!";
#Function definition
sub PrintHello {
#Private variable for PrintHello function
my $string;
$string = "Hello, Perl!";  
print "Inside the function $string\n";
}
#Function call
PrintHello();
print "Outside the function $string\n";
#Temporary values via local()
#Global variable
$string="Hello, World!";
#Function definition
sub PrintHello1 {
#Private variable for PrintHello function
local $string;
$string = "Hello, Perl!";  
PrintMe();
print "Inside the function PrintHello $string\n";
}
sub PrintMe {
print "Inside the function PrintMe $string\n";
}
#Function call
PrintHello1();
print "Outside the function $string\n";
#State variable via state()
use feature 'state';
sub PrintCount {
state $count=0;#initial value
print "Value of counter is $count\n";  
$count++;
}
for(1..5){
PrintCount();  
}
{
my $count=0;#initial value
sub PrintCount1{
print "Value of counter is $count\n";  
$count++;
}  
}
for(1..5){
PrintCount1();
}