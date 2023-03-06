package xyz.itwill10.dto;

import lombok.Data;

//create table restboard(num number primary key, writer varchar2(50), content varchar2(100),regdate date);
//create sequence restboard_seq;
@Data
public class RestBoard {
	private int num;
	private String writer;
	private String content;
	private String regdate;
}
