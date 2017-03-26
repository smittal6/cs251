/*Query a*/
.print 'Number of married students'
select count(*) from students where marital="y";

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

.print 'Total: '
select (
select count(*) from facstaff where facorstaff="fac"+
select count(*) from students+
select distinct count(id) from family+
select count(*) from facstaff where facorstaff="staff");
/* Query d*/
.print 'Average number of family members per faculty member'
select (select distinct count(id) from family where (relid>=1 and relid<=50))/(select count(*) from facstaff where facorstaff="fac");

/*Query E*/

/*Query f*/
.print 'Percentage of UG students having an advisor'
select ((select count(*) from students where ugorpg="ug" and advisor1 is not null)*100.0)/(select count(*) from students where ugorpg="ug");

/*Query g
.print 'Query G'
select id from facstaff where (facstaff.id=(select advisor2 from students) and facstaff.department!=(select department from students));*/
