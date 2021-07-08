#< sign indicates that file has to be opened in read-only mode, > writing modeopen(DATA,"<file.txt") or die "Couldn't open file file.txt, $!";
while(<DATA>){
print "$_";			}
#The <FILEHANDL> Operator
print "What is your name?\n";
$name=<STDIN>;
print "Hello $name\n";
open(DATA,"<file.txt") or die "Can't open data";
@lines=<DATA>;
close(DATA);
#Copying files
#Open file to read
open(DATA,"<file.txt");
#Open new file to wrte
open(DATA1,">file1.txt");
#Copy data from one file to another
while(<DATA>){
print DATA1 $_;			}
close(DATA);
close(DATA1);
#Renaming a file
rename("file1.txt","file2.txt");
#Deleting an existing file
unlink("file1.txt");
#File information
my $file = 'file.txt';
my(@description, $size);
if (-e $file) {
push @description, 'binary' if (-B _);
push @description, 'a socket ' if (-S _);
push @description, 'a text file' if (-T _);
push @description, 'a block special file' if (-b _);
push @description, 'a character special file' if (-c _);
push @description, 'a directory' if (-d _);
push @description, 'executable' if (-x _);
push @description, (($size=-s _)) ? "$size bytes" : 'empty';
print "$file is ", join(', ',@description),"\n";}
#Display all the files in /tmp directory
$dir = "/xampp/htdocs/*";
my @files = glob($dir);
foreach(@files)
{
print $_. "\n";	}
#Display all the php source files in /tmp directory
$dir = "/xampp/htdocs/*.php";
@files=glob($dir);
foreach(@files)
{
print $_. "\n";	
}
#Display all the hidden files
$dir = "/xampp/htdocs/.*";
@files=glob($dir);
foreach(@files)
{
print $_. "\n";	
}
#Display all the files
$dir = "/xampp/htdocs/*";
@files=glob($dir);
foreach(@files)
{
print $_. "\n";	
}
opendir(DIR,'.') or die "Couldn't open directory, $!";
while($file=readdir DIR){
print "$file\n";}
closedir DIR;
opendir(DIR, '.') or die "Couldn't open directory, $!";
foreach (sort grep(/^.*\.pl$/,readdir(DIR))) {
   print "$_\n";
}
closedir DIR;
#Create new directory
$dir="/tmp/perl";
#This creates perl directory in /tmp directory
mkdir($dir) or die "Couldn't create $dir directory, $!";
print "Directory created successfully\n";
