create table free_comment (
	comment_no number constraint pk_no primary key,
     free_number number,
     parent_no number,
	seq number,
     depth number,
	writer varchar2(30),
	regdate date,
      content varchar2(1000)
	);