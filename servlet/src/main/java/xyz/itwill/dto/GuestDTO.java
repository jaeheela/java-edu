package xyz.itwill.dto;

/*
이름      널?       유형             
------- -------- -------------- 
NO      NOT NULL NUMBER(10)      - 글번호
NAME             VARCHAR2(40)    - 작성자
REGDATE          DATE            - 작성일자
TITLE            VARCHAR2(100)   - 제목
CONTENT          VARCHAR2(4000)  - 내용
*/

public class GuestDTO {
	private int no;
	private String name;
	private String regdate;
	private String title;
	private String content;
	
	public GuestDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
