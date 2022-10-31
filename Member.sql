-- 테이블 구현 후 DB  ERD 작성
-- 파일 > 임포트 > 데이터 딕셔너리 > 커넥터 선택 : xe > 계정 선택 : system > 테이블 선택 : memberA, boardA
create table memberA(
    id	varchar2(16)	primary key,
    pw	varchar2(20)	not null,
    name varchar2(50)	not null,
    email varchar2(100)	,
    tel varchar2(13),
    regdate date default sysdate
);

create table boardA(
    no number primary key,
    title varchar2(100)	not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    CONSTRAINT fk_bd FOREIGN key (author) REFERENCES memberA(id)
);