create table product(num number(4) primary key, category varchar2(50)
	, name varchar2(100), image_main varchar2(100)
	, image_detail varchar2(100),qty number(8),price number(8));

create sequence product_seq;