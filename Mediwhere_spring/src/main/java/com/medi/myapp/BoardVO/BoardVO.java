package com.medi.myapp.BoardVO;

import java.sql.Date;
import java.time.LocalDate;

public class BoardVO {
	
		private int free_number;
		private String free_title;
		private String free_writer;
		private String free_pw;
		private Date free_regdate;
		private int free_readcount;
		private String free_content;
		

		public int getFree_number() {
			return free_number;
		}
		public void setFree_number(int free_number) {
			this.free_number = free_number;
		}
		public String getFree_title() {
			return free_title;
		}
		public void setFree_title(String free_title) {
			this.free_title = free_title;
		}
		public String getFree_writer() {
			return free_writer;
		}
		public void setFree_writer(String free_writer) {
			this.free_writer = free_writer;
		}
		public String getFree_pw() {
			return free_pw;
		}
		public void setFree_pw(String free_pw) {
			this.free_pw = free_pw;
		}
		public Date getFree_regdate() {
			return free_regdate;
		}
		public void setFree_regdate(Date free_regdate) {
			this.free_regdate = free_regdate;
		}
		public int getFree_readcount() {
			return free_readcount;
		}
		public void setFree_readcount(int free_readcount) {
			this.free_readcount = free_readcount;
		}
		public String getFree_content() {
			return free_content;
		}
		public void setFree_content(String free_content) {
			this.free_content = free_content;
		}
		
	}