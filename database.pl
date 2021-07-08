use DBI;
use strict;
my $driver="mysql";
my $database="n2cms";
my $dsn="DBI:$driver:database=$database";
my $userid="root";
my $password="";
my $dbh=DBI->connect($dsn,$userid,$password) or die $DBI::errstr;
print $dbh;
my $sth=$dbh->prepare("INSERT INTO tags(name,slug,description,meta_title,meta_keyword,meta_description,is_deleted,is_actived) 
values('hoa cúc','hoa-cuc','Hoa cúc','hoa cúc','hoa cúc','hoa cúc',0,1)");
#Read operation
my $sth=$dbh->prepare("SELECT name, slug FROM tags");
$sth->execute() or die $DBI::errstr;
print "Number of rows found: " + $sth->rows;
while(my @row=$sth->fetchrow_array()){
	my($name,$slug)=@row;
	print "Keyword=$name,Slug=$slug\n";
}
$sth->finish();
#Commit is the operation which gives a green signal to database to finalize the changes and after this operation no change can be reverted to its orignal position
$dbh->commit or die $DBI::errstr;