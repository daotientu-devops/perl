$a=10;
$var=<<"EOF";
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be 
interpolated. For example value of a = $a
EOF
print "$var\n";
print "Hello, DAO TIEN TU\n";
$var = <<'EOF';
This is case of single quote so variable value will be 
interpolated. For example value of a = $a
EOF
print "$var\n";
$result = "This is \"number\"";
print "$result\n";
print "\$result\n";
=begin comment
This is all part of multiline comment.
You can use as many lines as you like
These comments will be ignored by the 
compiler until the next =cut is encountered.=cut
