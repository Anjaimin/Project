CREATE TABLE free_board ( 
    free_number int not null, /* 게시글번호 */
    free_title VARCHAR(200) not null, /* 글제목 */
    free_writer VARCHAR(50) not null primary key, /* 작성자 */
    free_pw VARCHAR(50) not null, /* 비밀번호 */
    free_regdate date default sysdate, /* 회원번호 */
    free_readcount int not null, /* 조회수 */
    free_content varchar(3000) not null /* 글 내용 */
);

CREATE SEQUENCE free_seq
start with 0
increment by 1
MAXVALUE 9999
MINVALUE 0;
