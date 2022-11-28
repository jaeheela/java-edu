create table GUEST(no number(10) primary key,
		name varchar2(40),
		regdate date,
		title varchar2(100),
		content varchar2(4000));

create sequence guest_seq;

desc guest;

select * from guest;
