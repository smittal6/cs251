/*Query a*/
.print 'Number of married students'
select count(*) from students where marital="yes";

/*Query b*/
.print 'Number of students staying in married hostels: '
select count(*) from students where hostel="married";

/* Query c*/
.print 'Number of faculty members: '
select count(*) from facstaff where facorstaff="fac";

.print 'Number of staff: '
select count(*) from facstaff where facorstaff="staff";

.print 'Number of students: '
select count(*) from students;

.print 'Number of family members: '
select distinct count(id) from family; 

/* Query d*/
.print 'Query d'
select (select distinct count(id) from family where (relid>=1 and relid<=50))/(select count(*) from facstaff where facorstaff="fac");

/*Query f*/
.print 'Query F'
select ((select count(*) from students where ugorpg="ug" and advisor1 is not null)*100)/(select count(*) from students where ugorpg="ug");

/*Query g*/
.print 'Query G'
select id from facstaff where (faculty
