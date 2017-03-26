/*Query a*/
.print 'Number of married students'
select count(*) from students where marital='yes';

/*Query b*/
.print 'Number of students staying in married hostels: '
select count(*) from students where hostel='married';

/* Query c*/
.print 'Number of faculty members: '
select count(*) from facstaff where facorstaff='fac';

.print 'Number of staff: '
select count(*) from facstaff where facorstaff='staff';

.print 'Number of students: '
select count(*) from students;

.print 'Number of family members: '
select distinct count(id) from family; 


