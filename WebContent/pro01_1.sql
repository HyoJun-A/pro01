-- datatables 플러그인 페이지 사용
-- https://datatables.net/

select * from membera;
select * from boarda;
desc boarda;

select no, title, author, resdate 
from (select rownum rn, no, title, author, resdate from boarda order by resdate desc) t1
where t1.rn between 1 and 10;

--select no, title, author, resdate 
--from (select rownum rn, no, title, author, resdate from boarda order by resdate desc) t1
--where t1.rn between ? and ?;


select count(*) as cnt from boarda;

select * from boarda;
drop table boarda;
desc boarda;
drop sequence bseq;
delete from boarda;
create sequence bseq;
create table boarda(
no number primary key,
title	varchar2(100)	not null,
content	varchar2(600),
author varchar2(16),
resdate date default sysdate,
CONSTRAINT bfk FOREIGN key(author) REFERENCES membera(id)
);


insert into boarda values(bseq.nextval, '테스트 글1', '테스트 글1의 내용 입니다.', 'ahj', sysdate);
insert into boarda values(bseq.nextval, '테스트 글2', '테스트 글2의 내용 입니다.', 'ahj', sysdate);
insert into boarda values(bseq.nextval, '테스트 글3', '테스트 글3의 내용 입니다.', 'ahj', sysdate);
insert into boarda values(bseq.nextval, '테스트 글4', '테스트 글4의 내용 입니다.', 'ahj', sysdate);
insert into boarda values(bseq.nextval, '테스트 글5', '테스트 글5의 내용 입니다.', 'admin', sysdate);
insert into boarda values(bseq.nextval, '테스트 글6', '테스트 글6의 내용 입니다.', 'admin', sysdate);
insert into boarda values(bseq.nextval, '테스트 글7', '테스트 글7의 내용 입니다.', 'admin', sysdate);
insert into boarda values(bseq.nextval, '테스트 글8', '테스트 글8의 내용 입니다.', 'admin', sysdate);
insert into boarda values(bseq.nextval, '테스트 글9', '테스트 글9의 내용 입니다.', 'gywns3217', sysdate);
insert into boarda values(bseq.nextval, '테스트 글10', '테스트 글10의 내용 입니다.', 'gywns3217', sysdate);
insert into boarda values(bseq.nextval, '테스트 글11', '테스트 글11의 내용 입니다.', 'gywns3217', sysdate);
insert into boarda values(bseq.nextval, '테스트 글12', '테스트 글12의 내용 입니다.', 'gywns3217', sysdate);
select * from boarda;


select a.no no, a.title title, a.content content, b.name name,to_char(a.resdate, 'yyyy-MM-dd') resdate, a.author author 
from boarda a inner join membera b on a.author=b.id where a.no=12;

--select a.no no, a.title title, a.content content, b.name name,to_char(a.resdate, 'yyyy-MM-dd') resdate, a.author author 
--from boarda a inner join membera b on a.author=b.id where a.no=?;

select * from 