#Scalars
#A scalar is a single unit of data. That data might be an integer number, floating point, a character, a string, a paragraph or an entire web page
$integer=200;
$negative=-300;
$floating=200.340;
$bigfloat=-1.2E-23;
#377 octal, same as 255 decimal
$octal=0377;
#FF hex, also 255 decimal
$hexa=0xff;
print "integer=$integer\n";
print "negative=$negative\n";
print "floating=$floating\n";
print "bigfloat=$bigfloat\n";
print "octal=$octal\n";
print "hexa=$hexa\n";
$var = "This is string scalar!";
$quote = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";
$escape = "This example of escape - \tHello, World!";
print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";
#Scalar Operations
$str="hello"."world";#Concatenates strings
$num=5+10;
$mul=4*5;
$mix=$str.$num;
print "str=$str\n";
print "num=$num\n";
print "mul=$mul\n";
print "mix=$mix\n";
#Multiline Strings
$string='This is
a multiline
string';
print "$string\n";
print <<EOF;
This is 
a multiline
string
EOF
#V-strings
$smile=v9786;
$foo=v102.111.111;
$martin=v77.97.114.116.105.110;
print "smile=$smile\n";
print "foo=$foo\n";
print "martin=$martin\n";
#Special Literals
print "File name ".__FILE__."\n";
print "Line number ".__LINE__."\n";
print "Package ".__PACKAGE__."\n";
#They can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";
#Arrays
@ages=(25,30,40);
@names=("John Paul","Lisa","Kumar");
print "\$ages[0]=$ages[0]\n";
print "\$ages[1]=$ages[1]\n";
print "\$ages[2]=$ages[2]\n";
print "\$names[0]=$names[0]\n";
print "\$names[1]=$names[1]\n";
print "\$names[2]=$names[2]\n";
#Accessing array elements
@days=qw/Mon Tue Wed Thu Fri Sat Sun/;
print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";
#Sequential Number Arrays
@var_10=(1..10);
@var_abc=(a..z);
print "@var_10\n";
print "@var_abc\n";
@array=(1,2,3);
print "Size: ",scalar @array,"\n";
$array[50]=4;
$size=@array;
$max_index=$#array;
print "Size: $size\n";
print "Max index: $max_index\n";
#Adding and removing elements in array
#Create a simple array
@coins=("Quarter","Dime","Nickel");
print "1.\@coins=@coins\n";
#Add one element at the end of the array
push(@coins, "Penny");
print "2.\@coins=@coins\n";
#Add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3.\@coins=@coins\n";
#Remove one element at the last of the array
pop(@coins);
print "4.\@coins=@coins\n";
#Remove one element at the beginning of the array
shift(@coins);
print "4.\@coins=@coins\n";
#Slicing array elements
@weekdays=@days[3,4,5];
print "@weekdays\n";
@weekdays=@days[3..6];
print "@weekdays\n";
#Replacing array elements
@nums=(1..20);
print "Before - @nums\n";
splice(@nums, 5, 5, 21..25);
print "After - @nums\n";
#Transform strings to arrays
#define strings
$var_string="Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names="Larry,David,Roger,Ken,Michael,Tom";
#transform above strings into arrays
@string=split('-',$var_string);
@names=split(',',$var_names);
print "$string[3]\n";
print "$names[4]\n";
#Transform arrays to strings
$string1=join('-',@string);
$string2=join(',',@names);
print "$string1\n";
print "$string2\n";
#Sorting arrays
@foods=qw(pizza steal chicken burgers);
print "Before:  @foods\n";
@foods = sort(@foods);
print "After: @foods\n";
#The ${ special variable
#Let's reset first index of all the arrays
$[=0;
print "Food at \@foods[1]: $foods[1]\n";
print "Food at \@foods[2]: $foods[2]\n";
#Merging arrays
@numbers=(1,2,3,(4,5,6));
print "numbers=@numbers\n";
@odd=(1,3,5);
@even=(2,4,6);
@numbers=(@odd,@even);
print "numbers=@numbers\n";
#Selecting elements from lists
$var=(5,4,3,2,1)[4];
print "Value of var=$var\n";
@list=(5,4,3,2,1)[1..3];
print "Value of list=@list\n";