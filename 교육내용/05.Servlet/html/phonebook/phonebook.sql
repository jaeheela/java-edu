create table phonebook(phone varchar2(20) primary key, name varchar2(20), address varchar2(50));
INSERT INTO phonebook values('010-1111-1111','홍길동','서울시 송파구');
INSERT INTO phonebook values('010-2222-2222','임꺽정','서울시 강남구');
INSERT INTO phonebook values('010-3333-3333','전우치','부천시 원미구');
INSERT INTO phonebook values('010-4444-4444','일지매','수원시 팔달구');
INSERT INTO phonebook values('010-5555-5555','장길산','인천시 월미구');
commit;

select * from phonebook;

desc phonebook;