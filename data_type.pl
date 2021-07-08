#Scalar
#Arrays
#Hashes
#Numeric Literals
#String Literals
# This is case of interpolation.
$str="Welcome to \ntutorials";
print "$str\n";
# This is case of non-interpolation.
$str='Welcome to \ntutorials';
print "$str\n";
# Only W will become upper case.
$str="w\uelcome to tutorialspoint.com!";
print "$str\n";
# Whole line will become capital.
$str="w\Uelcome to tutorialspoint.com!";
print "$str\n";
# A portion of line will become capital.
$str="Welcome to \Ututorialspoint\E.com!";
print "$str\n";
# Backsalash non alpha-numeric including spaces.
$str = "\QWelcome to tutorialspoint's family";
print "$str\n";