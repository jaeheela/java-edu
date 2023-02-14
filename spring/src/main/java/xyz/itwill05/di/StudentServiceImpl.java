package xyz.itwill05.di;

import java.util.List;

//Service 클래스 : 프로그램 실행에 필요한 데이타 처리 기능을 모듈화하여 제공하는 클래스 - 컴퍼넌트
// => Service 클래스의 메소드는 DAO 클래스의 메소드를 호출하여 작성 - 모듈화
// => DAO 클래스는 Service 클래스와 포함관계(의존관계)로 설정되도록 작성
//=> Service 클래스가 변경돼도 Service 클래스와 관계가 있는 클래스(모델 클래스)에 영향을 최소화
//하기 위해 반드시 인터페이스 상속받아 작성 - 결합도를 낮춰 유지보수의 효율성 증가
public class StudentServiceImpl implements StudentService {
	//StudentJdbcDAO 객체를 저장하기 위한 필드
	// => 필드에 StudentJdbcDAO 객체를 저장해야만 의존관계가 성립 
	// => StudentServiceImpl 클래스의 메소드에서 StudentJdbcDAO 객체의 메소드 호출 가능
	//문제점)DAO 클래스가 변경될 경우 Service 클래스의 필드 및 메소드 변경 
	// => 결합도가 높아 유지보수의 효율성 감소
	//해결법)DAO 클래스가 반드시 상속받아야 되는 인터페이스로 필드 선언
	// => 필드에는 인터페이스를 상속받은 모든 DAO 클래스의 객체 저장 가능
	//private StudentJdbcDAO studentJdbcDAO;
	
	//StudentDAO 인터페이스를 상속받은 모든 DAO 클래스의 객체를 저장할 수 있는 필드
	// => StudentDAO 인터페이스를 상속받은 DAO 클래스의 객체를 저장해야만 의존관계 성립
	// => Service 클래스의 메소드에서 필드로 메소드를 호출하여 필드에 저장된 자식 객체의 
	//메소드 호출 - 오버라이딩에 의한 다형성 : 결합도를 낮춰 유지보수의 효율성 증가
	// => DAO 클래스가 변경돼도 Service 클래스의 영향 최소화
	private StudentDAO studentDAO;
	
	public StudentServiceImpl() {
		System.out.println("### StudentServiceImpl 클래스의 기본 생성자 호출 ###");
	}

	public StudentServiceImpl(StudentDAO studentDAO) {
		super();
		this.studentDAO = studentDAO;
		System.out.println("### StudentServiceImpl 클래스의 매개변수가 선언된 생성자 호출 ###");
	}

	public StudentDAO getStudentDAO() {
		return studentDAO;
	}

	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
		System.out.println("*** StudentServiceImpl 클래스 setStudentDAO(StudentDAO studentDAO) 메소드 호출 ***");
	}

	@Override
	public void addStudent(Student student) {
		System.out.println("*** StudentServiceImpl 클래스 addStudent(Student student) 메소드 호출 ***");
	}

	@Override
	public void modifyStudent(Student student) {
		System.out.println("*** StudentServiceImpl 클래스 modifyStudent(Student student) 메소드 호출 ***");
	}

	@Override
	public void removeStudent(int num) {
		System.out.println("*** StudentServiceImpl 클래스 removeStudent(int num) 메소드 호출 ***");
	}

	@Override
	public Student getStudent(int num) {
		System.out.println("*** StudentServiceImpl 클래스 getStudent(int num) 메소드 호출 ***");
		return null;
	}

	@Override
	public List<Student> getStudentList() {
		System.out.println("*** StudentServiceImpl 클래스 getStudentList() 메소드 호출 ***");
		return null;
	}
}
