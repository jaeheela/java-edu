package xyz.itwill10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dto.Student;
import xyz.itwill10.service.StudentService;

//SpringMVC Framework를 사용하여 웹프로그램을 작성하는 방법
// => 테이블 >> DTO 클래스 >> DAO 클래스(Mybatis) >> Service 클래스 >> Controller 클래스 
// >> 테스트 프로그램(JUint) - 단위 프로그램(모듈) 테스트 >> HTML 문서를 JSP 문서로 변환 
// >> 통합 프로그램 테스트 - 브라우저 이용

//Controller 클래스 : 클라이언트 요청을 처리하기 위한 기능의 객체를 생성하기 위한 클래스

//Controller 클래스는 Front Controller(DispatcherServlet 객체)의 객체로 제공받아 사용되도록 
//반드시 Spring Bean으로 등록
// => @Controller 클래스는 @Controlle 어노테이션을 사용하여 Spring Bean으로 등록되도록 처리
// => @Controller 어노테이션을 사용하면 클라이언트 요청에 의해 호출될 요청 처리 메소드 작성
// => @Controller 어노테이션를 스프링 컨테이너가 처리하기 위해서는 반드시 클래스를 작성한 패키지를  
//Spring Bean Configuration File(servlet-context.xml)의 component-scan 엘리먼트로 검색되도록 설정

@Controller
@RequiredArgsConstructor
public class StudentController {
	//Controller 클래스의 요청 처리 메소드에서 사용될 Service 객체를 저장하기 위한 필드 선언
	// => @Autowired 어노테이션을 사용한 생성자로 필드의 인젝션 처리
	private final StudentService studentService;
	
	//학생정보를 입력받기 위한 JSP 문서 관련 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping(value = "/student/add", method = RequestMethod.GET)
	public String add() {
		return "student/student_add";
	}
	
	//학생정보를 전달받아 STUDENT 테이블에 삽입하고 회원목록 출력페이지를 요청할 수 있는
	//URL 주소를 클라이언트에게 전달하는 요청 처리 메소드
	@RequestMapping(value = "/student/add", method = RequestMethod.POST)
	public String add(@ModelAttribute Student student,Model model) {
		try {
			//STUDENT 테이블에 학생정보 삽입시 PK 제약조건에 의해 예외 발생 가능
			studentService.addStudent(student);
		} catch (Exception e) {
			model.addAttribute("message", "이미 사용중인 학번을 입력 하였습니다.");
			return "student/student_add";
		}
		return "redirect:/student/display";//리다이렉트 이동
	}
	
	//STUDENT 테이블에 저장된 모든 학생정보를 검색하여 속성값으로 저장하고 학생목록을 출력하는
	//JSP 문서 관련 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping("/student/display")
	public String display(Model model) {
		model.addAttribute("studentList",studentService.getStudentList());
		return "student/student_display";
	}
}
