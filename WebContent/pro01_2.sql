create table faqa(
    NO NUMBER primary key,
    TITLE VARCHAR2(100) not null,
    CONTENT VARCHAR2(600),
    AUTHOR VARCHAR2(16),
    RESDATE DATE DEFAULT sysdate,
    gubun number not null,      --질문/답변 구분
    parno number not null       --질문/답변 공통 번호
);

create sequence fseq;
drop sequence fseq;
delete from faqa;
insert into faqa values(fseq.nextval, 'Kia Digital Key(NFC)란 무엇인가요?', 'NFC란 무엇인가요?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '직영 서비스센터 운영 시간은 어떻게 됩니까?', '서비스센터 운영 시간은 어떻게 됩니까?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '사용설명 분실했는데 어떻게 재발급 받을 수 있나요?', '재발급 받을 수 있나요?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '내 차 관리를 위한 필수 앱, MyKia는 어떤 서비스 인가요?', 'MyKia가 어떤 서비스 인가요?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '기아 통합 계정이 무엇인가요?', '기아 통합 계정이란?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '일반 리모컨 또는 스마트 키 차량의 핸들 락(잠김) 해제 방법을 알려주세요', '해제 방법 알려주세요', 'admin', sysdate, 0, fseq.currval);

insert into faqa values(fseq.nextval, 'Kia Digital Key(NFC)란 무엇인가요?', 'Kia Digital Key는 NFC 안테나가 장착된 스마트폰 또는 카드 키로 차량의 도어를 열고 시동을 걸 수 있는 새로운 서비스입니다. ', 'admin', sysdate, 1, 1);
insert into faqa values(fseq.nextval, '직영 서비스센터 운영 시간은 어떻게 됩니까?', '직영 서비스센터의 업무시간은 평일(월~금) 08:30~17:30까지 이며, 중식시간은 12:30~13:30 입니다.', 'admin', sysdate, 1, 2);
insert into faqa values(fseq.nextval, '사용설명 분실했는데 어떻게 재발급 받을 수 있나요?', ' 사용설명서 분실 및 중고차 구입을 하신 경우에는 기아멤버스 홈페이지를 통해 보실 수 있습니다. https://members.kia.com/kr/view/qmym/qdir/qmym_qdir_direction.do에서 확인하실 수 있습니다.', 'admin', sysdate, 1, 3);
insert into faqa values(fseq.nextval, '내 차 관리를 위한 필수 앱, MyKia는 어떤 서비스 인가요?', '날씨, 차량 상태를 포함 사용자 데이터 기반 개인 맞춤형 화면과 콘텐츠를 제공합니다.', 'admin', sysdate, 1, 4);
insert into faqa values(fseq.nextval, '기아 통합 계정이 무엇인가요?', '기아 통합 계정은, 기아닷컴 / 기아멤버스 홈페이지 / MyKia 모바일 앱 / 기아 디지털키 / Kia Connect 등 기아에서 제공하는 서비스를 사용하기 위한 계정으로, 하나의 ID로 모든 서비스를 이용할 수 있습니다.', 'admin', sysdate, 1, 5);
insert into faqa values(fseq.nextval, '일반 리모컨 또는 스마트 키 차량의 핸들 락(잠김) 해제 방법을 알려주세요', '일반 리모컨 적용 차량 또는 이모빌라이져 적용 차량의 핸들락(잠김) 해제방법 ① 왼손으로 핸들을 잡고 오른손으로 키셋트에 키를 꽂는다 ② 핸들을 좌우로 힘껏 움직이면서 동시에 ACC 방향으로 키를 돌린다.  ', 'admin', sysdate, 1, 6);



select * from faqa order by parno, gubun;
commit;