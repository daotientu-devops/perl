# Scalar variables
# Creating variables
$age = 25;
$name = "John Paul";
$salary = 1445.50;
print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";
# Array variables
@ages = (25, 30, 40);
@names = ("John Paul", "Lisa", "Kumar");
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
# Hash variables
# A hash is a set of key/value pairs. Hash variables are preceded by a percent (%) sign.
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'}=$data{'John Paul'}\n";
print "\$data{'Lisa'}=$data{'Lisa'}\n";
print "\$data{'Kumar'}=$data{'Kumar'}\n";
#Variable context
@names = ('John Paul', 'Lisa', 'Kumar');
@copy=@names;
$size=@names;
print "Given names are: @copy\n";
print "Number of names are: $size\n";