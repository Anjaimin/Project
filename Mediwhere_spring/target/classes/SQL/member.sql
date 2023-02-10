CREATE TABLE medi_member (
    
    userid VARCHAR(50) not null primary key, /* 아이디 */
    password VARCHAR(50) not null, /* 비밀번호 */
    name VARCHAR2(20) not null,     /* 이름 */
    birth VARCHAR2(50) not null, /* 생년월일 */
    license VARCHAR(20) not null, /* 의사면허번호 */
    dept VARCHAR(20) not null, /* 전공과목 */
    regdate date default sysdate /* 회원가입일 */
);



CREATE SEQUENCE medi_seq
       START WITH 0    /* 1로 넣으면 회원번호가 2부터 들어가서 0부터 시작하게 설정함 */
       INCREMENT BY 1
       MAXVALUE 999999999
       MINVALUE 0;
