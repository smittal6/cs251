create table facstaff(
  name varchar(50) not null,
  id integer primary key,
  addr varchar(70) not null,
  phonenum varchar(11),
  department varchar(10) not null,
  facorstaff varchar(5) not null
);

create table students(
  name varchar(50) not null,
  id integer primary key,
  addr varchar(70) not null,
  department varchar(10) not null,
  ugorpg varchar(2) not null,
  hostel varchar(10) not null,
  marital varchar(3) not null,
  phonenum varchar(11),
  advisor1 integer,
  advisor2 integer,
  a1dep varchar(10),
  a2dep varchar(10),
  check (a1dep is null or a1dep=department),
  check ((ugorpg="pg" and a1dep is not null) or (ugorpg="ug")),
  foreign key(advisor1,advisor2) references facstaff(id,id)
);

create table family(
  name varchar(50) not null,
  id integer not null,
  phonenum varchar(11),
  addr varchar(70) not null,
  relation varchar(10) not null,
  relid integer not null,
  foreign key(relid) references students(id),
  foreign key(relid) references facstaff(id)
);

create table hod(
  department varchar(10) primary key,
  id integer not null,
  foreign key(id) references facstaff(id)
);
.separator ','
.import facstaff.csv facstaff
.import student.csv students
.import members.csv family
.import hod.csv hod
