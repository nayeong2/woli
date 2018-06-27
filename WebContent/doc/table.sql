drop table memeber;

create table member
(
	id varchar2(16),
	name varchar2(20) not null,
	pass varchar2(16),
	email1 varchar2(16),
	email2 varchar2(50),
	joindate date default sysdate,
	constraint member_id_pk primary key(id)

);


create table member_detail
(
	id varchar2(16),
	zipcode varchar2(5),
	addr1 varchar2(100),
	addr2 varchar2(100)
	tel1 varchar2(3),
	tel2 varchar2(4),
	tel3 varchar2(4),
	constraint member+detail_id_fk foreign key (id)
	references by member (id)

);

create table zipcode
(
	zipcode varchar2(5).
	sido varchar2(20),
	gugun varchar2(20),
	doro varchar2(100)

);



select *
from member m, member_detail d
where m.id = d.id
and m.id= 'ralla';