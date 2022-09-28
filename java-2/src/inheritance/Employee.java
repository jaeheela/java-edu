package inheritance;

//사원정보(사원번호,사원이름)를 저장하기 위한 클래스
// => 모든 사원 관련 클래스가 상속받아야 되는 부모클래스
// => 객체 생성이 목적이 아닌 상속이 목적인 클래스로 작성 - 추상클래스 작성하는 것을 권장
//추상클래스(Abstract Class) : abstract 제한자를 사용하여 선언된 클래스 
// => 객체 생성 불가능 - 상속 전용 클래스
// => 형식) public abstract class 클래스명 {}
public abstract class Employee {
	private int empNo;
	private String empName;
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}

	public Employee(int empNo, String empName) {
		super();
		this.empNo = empNo;
		this.empName = empName;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}
	
	//자식클래스에서 부모클래스의 메소드를 오버라이드 선언하지 않아도 에러 미발생
	// => 자식클래스에서 오버라이드 선언하지 않은 경우 부모클래스의 메소드가 호출되어 사용
	public int computePay() {
		return 0;
	}
}









