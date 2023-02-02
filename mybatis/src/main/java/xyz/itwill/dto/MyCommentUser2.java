package xyz.itwill.dto;

//MYCOMMENT 테이블과 MYUSER 테이블의 검색결과를 저장하기 위한 클래스
// => 1:1 관계의 조인 검색 결과를 저장하기 위한 클래스
//기존에 선언된 클래스(POJO : Plan Old Java Object)를 재사용하여 새로운 클래스 작성
// => 생산성 증가 및 유지보수의 효율성 증가
public class MyCommentUser2 {
	//MYCOMMENT 테이블(게시글정보)의 검색결과를 저장하기 위한 필드 - 검색행 1개
	// => 객체를 저장하기 위한 필드 : 포함관계
	// => 포함관계가 성립되지 위해서는 반드시 필드에 객체 저장
	private MyComment1 comment;
	
	//MYUSER 테이블(회원정보)의 검색결과를 저장하기 위한 필드 - 검색행 1개
	private MyUser user;
	
	public MyCommentUser2() {
		// TODO Auto-generated constructor stub
	}

	public MyComment1 getComment() {
		return comment;
	}

	public void setComment(MyComment1 comment) {
		this.comment = comment;
	}

	public MyUser getUser() {
		return user;
	}

	public void setUser(MyUser user) {
		this.user = user;
	}
}
