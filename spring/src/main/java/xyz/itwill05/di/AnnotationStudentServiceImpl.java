package xyz.itwill05.di;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//@Component("studentService")

//@Service : Service 클래스를 스프링 컨테이너가 관리할 수 있는 Spring Bean으로 등록하기 위한 어노테이션
// => 클래스의 이름을 beanName으로 자동 설정하지만 value 속성으로 beanName 변경 가능
@Service("studentService")
public class AnnotationStudentServiceImpl implements StudentService {
	//@Autowired : 스프링 컨테이너로부터 Spring Bean를 제공받아 필드에 저장되도록 의존관계를 
	//자동으로 구현하기 위한 어노테이션
	// => 의존성 주입을 위해 필드에 사용하는 어노테이션 - 선언된 필드마다 어노테이션 설정 
	// => bean 엘리먼트에서 autowire 속성값을 [byType]으로 설정한 것과 같은 방법으로 의존성 주입 - Setter Injection
	// => Setter 메소드를 이용하여 의존관계를 설정하지만 Setter 메소드를 작성하지 않아도 의존성 주입
	//문제점)필드의 자료형과 같은 자료형의 Spring Bean이 2개 이상 존재할 경우 의존성 주입 실패 - NoUniqueBeanDefinitionException 발생 
	@Autowired
	private StudentDAO studentDAO;
	
	public AnnotationStudentServiceImpl() {
		System.out.println("### AnnotationStudentServiceImpl 클래스의 기본 생성자 호출 ###");
	}
	
	@Override
	public void addStudent(Student student) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 addStudent(Student student) 메소드 호출 ***");
		studentDAO.insertStudent(student);
	}

	@Override
	public void modifyStudent(Student student) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 modifyStudent(Student student) 메소드 호출 ***");
		studentDAO.updateStudent(student);
	}

	@Override
	public void removeStudent(int num) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 removeStudent(int num) 메소드 호출 ***");
		studentDAO.deleteStudent(num);
	}

	@Override
	public Student getStudent(int num) {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 getStudent(int num) 메소드 호출 ***");
		return studentDAO.selectStudent(num);
		
	}

	@Override
	public List<Student> getStudentList() {
		System.out.println("*** AnnotationStudentServiceImpl 클래스 getStudentList() 메소드 호출 ***");
		return studentDAO.selectStudentList();
	}
}
