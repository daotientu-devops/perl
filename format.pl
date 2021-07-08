#Define a report header
format EMPLOYEE1=
=====================================
@<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<@<<
$name $age
@######.##
$salary
=====================================
.
format EMPLOYEE_TOP1=
=====================================
NAME			Age
=====================================
.
select(STDOUT);
$~=EMPLOYEE1;
$^=EMPLOYEE_TOP1;
@n1=("Ali","Raza","Jaffer");
@a1=(20,30,40);
@s1=(2000.00,2500.00,4000.000);
$i=0;
foreach(@n1){
$name=$_;	
$age=$a1[$i];
$salary=$s1[$i++];
write;
}