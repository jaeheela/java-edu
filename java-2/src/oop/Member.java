package oop;

//회원정보(아이디,이름,이메일)를 저장하기 위한 클래스
// => VO(Value Object) 클래스 : 값 저장이 목적인 객체를 생성하기 위한 클래스
public class Member {
	//필드(Field) 선언
	private String id;
	private String name;
	private String email;
	
	//생성자(Constructor) 선언
	// => 생성자를 선언하지 않으면 매개변수가 없는 기본 생성자가 제공되어 처리
	// => 생성자를 선언하면 기본 생성자는 미제공
		
	//메소드(Method) 선언
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
}
