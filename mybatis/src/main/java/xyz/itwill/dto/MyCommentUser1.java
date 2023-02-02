package xyz.itwill.dto;

//MYCOMMENT 테이블과 MYUSER 테이블의 검색결과를 저장하기 위한 클래스
// => 1:1 관계의 조인 검색 결과를 저장하기 위한 클래스
public class MyCommentUser1 {
	//MYCOMMENT 테이블(게시글정보)의 검색결과를 저장하기 위한 필드 - 검색행 1개
	private int commentNo;
	private String commentId;
	private String commentContent;
	private String commentdate;
	
	//MYUSER 테이블(회원정보)의 검색결과를 저장하기 위한 필드 - 검색행 1개
	private String userId;
	private String userName;
	
	public MyCommentUser1() {
		// TODO Auto-generated constructor stub
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentdate() {
		return commentdate;
	}

	public void setCommentdate(String commentdate) {
		this.commentdate = commentdate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
