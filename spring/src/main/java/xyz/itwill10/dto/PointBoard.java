package xyz.itwill10.dto;

import lombok.Data;

//create table pointboard(num number primary key, writer varchar2(20), subject varchar2(100));
//create sequence pointboard_seq;
@Data
public class PointBoard {
	private int num;
	private String writer;
	private String subject;
}
