create table Student
	(Name varchar(52),
	 ID varchar(52) not null,
	 primary key(ID));

create table Test_Result
	(ID varchar(52) not null,
	 Korean_Score int,
	 English_Score int,
	 Math_Score int
	 foreign key(ID) references student(ID));

insert into Student values ('Lee', '1');
insert into Student values ('Kim', '2');
insert into Student values ('Choi', '3');
insert into Student values ('Yun', '4');
insert into Student values ('David', '5');
insert into Student values ('Yuna', '6');
insert into Student values ('Tony', '7');
insert into Student values ('Captin', '8');
insert into Student values ('Steve', '9');
insert into Student values ('Smith', '10');

insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('10', 100, 99, 98);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('9', 97, 96, 95);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('8', 94, 93, 92);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('7', 91, 90, 89);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('6', 88, 87, 86);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('5', 85, 84, 83);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('4', 82, 81, 80);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('3', 79, 78, 77);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('2', 76, 75, 74);
insert into Test_Result (ID, English_Score, Korean_Score, Math_Score) values ('1', 73, 72, 71);