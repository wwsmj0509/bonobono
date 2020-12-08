
select * from tab;


drop table userstest purge;

select * from userstest;

insert into userstest(id,pwd,name) values('admin','1111','어드민');

create sequence board_seq increment by 1  start with 1 nocycle nocache;

insert into boardtest(idx,userid,title,content) values(board_seq.nextval,'admin','test1','test11');

drop sequence board_seq;
drop table boardtest purge;


select * from boardtest;




create table userlist(
userid varchar2(15) primary key,
pwd varchar2(12) not null,
name varchar2(20) not null,
email varchar2(20) not null,
address varchar2(30),
chk varchar2(12));


create table boardlist(
idx number(6) primary key,		--글번호
userid varchar2(15)not null,	--유져이름
content varchar2(200)),		--글내용
logtime DATE DEFAUKY SYSDATE);

create table reply(
idx number(6)	primary key	
boardidx number(6)not null ,
content varchar2(200)),
logtime DATE DEFAUKY SYSDATE);


create sequence user_seq increment by 1 start with 1 nocycle nocache;
drop sequence board_seq;




