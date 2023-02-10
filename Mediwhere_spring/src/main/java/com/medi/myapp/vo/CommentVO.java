package com.medi.myapp.vo;

import java.sql.Date;

public class CommentVO {
	int comment_no;
	int free_number;
	int parent_no;
	int seq;
	int depth;
	String writer;
	Date regdate;
	String content;
	
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public int getFree_number() {
		return free_number;
	}
	public void setFree_number(int free_number) {
		this.free_number = free_number;
	}
	public int getParent_no() {
		return parent_no;
	}
	public void setParent_no(int parent_no) {
		this.parent_no = parent_no;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate.toString();
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "CommentVO [comment_no=" + comment_no + ", free_number=" + free_number + ", parent_no=" + parent_no
				+ ", seq=" + seq + ", depth=" + depth + ", writer=" + writer + ", regdate=" + regdate + ", content="
				+ content + "]";
	}
	
	
}
