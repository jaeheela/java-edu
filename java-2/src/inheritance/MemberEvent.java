package inheritance;

//이벤트 관련 회원정보(아이디,이름,이메일)를 저장하기 위한 클래스
// => 회원정보를 저장하는 Member 클래스(아이디,이름)를 상속받아 작성하는 것을 권장 - 재사용성 증가
// => extends 키워드로 기존 클래스(부모클래스)를 상속받아 새로운 클래스(자식클래스) 작성
// => 자식클래스는 부모클래스의 필드 또는 메소드에 접근하여 사용 가능 - 상속성(Inheritance)
// => Java에서는 단일 상속만 가능 - 부모클래스는 하나만 설정 가능
public class MemberEvent extends Member {
	/*
	//부모클래스(Member)을 상속받아 사용하므로 필드 미선언 
	private String id;
	private String name;
	*/
	private String email;
	
	public MemberEvent() {
		// TODO Auto-generated constructor stub
	}

	public MemberEvent(String id, String name, String email) {
		super();
		//자식클래스에서 필드 또는 메소드에 접근하는 순서 
		// => 자식클래스의 필드 또는 메소드 참조 후 없는 경우 부모클래스의 필드 또는 메소드 참조
		// => 부모클래스의 은닉화 선언된 필드 또는 메소드 접근 불가능
		//this.id = id;
		setId(id);
		//this.name = name;
		setName(name);
		this.email = email;
	}
	
	/*
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
	*/

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void display() {
		//System.out.println("아이디 = "+id);
		System.out.println("아이디 = "+getId());
		//System.out.println("이름 = "+name);
		System.out.println("이름 = "+getName());
		System.out.println("이메일 = "+email);
	}
}
