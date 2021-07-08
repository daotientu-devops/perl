#Dereferencing
$var=10;
#Now $r has reference to $var scalar (vô hướng)
$r=\$var;
#Print value available at the location stored in $r
print "Value of $var is: ", $$r, "\n";
print "Reference type in r: ", ref($r), "\n"; # SCALAR
@var=(1,2,3);
#Now $r has reference to $var array
$r=\@var;
# Print values available at the location stored in $r.
print "Value of @var is : ", @$r, "\n";
print "Reference type in r: ", ref($r), "\n"; # ARRAY
%var = ('key1' => 10, 'key2' => 20);
#Now $r has reference to %var hash
$r=\%var;
# Print values available at the location stored in $r.
print "Value of %var is : ", %$r, "\n";
print "Reference type in r: ", ref($r), "\n"; # HASH
#Circular references
my $foo = 100;
$foo = \$foo;
print "Value of foo is: ", $$foo, "\n";
#References to functions
sub PrintHash {
my (%hash)=@_;
foreach $item(%hash){
print "Item: $item\n";		
}
}
%hash=('name'=>'Tom','age'=>19);
#Create a reference to above function
$cref=\&PrintHash;
#Function call using reference
&$cref(%hash);