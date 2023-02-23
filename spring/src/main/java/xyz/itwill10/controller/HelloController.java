package xyz.itwill10.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//@Controller : 요청 처리 클래스를 Spring Bean으로 등록하기 위한 어노테이션
// => 클래스의 이름을 Spring Bean의 식별자(beanName)으로 자동 설정 - 첫문자는 소문자로 변환
// => value 속성을 사용하여 Spring Bean의 식별자(beanName) 변경 가능
// => Controller 인터페이스를 상속받지 않아도 요청 처리 클래스로 처리
// => @RequestMapping 어노테이션으로 다수의 요청 처리 메소드를 작성하여 클라이언트의 요청에 대한 처리 가능
@Controller
public class HelloController {//모델(Model) 역활을 제공하는 클래스 - 요청 처리 클래스
	private static final Logger logger=LoggerFactory.getLogger(HelloController.class);

	//요청 처리 메소드는 Front Controller에게 반드시 뷰이름(ViewName) 제공
	// => Front Controller는 제공받은 뷰이름을 이용하여 응답 관련 정보로 변환(ViewResolver)하여 응답 처리
	//Front Controller에 의해 JSP 문서로 포워드 이동하여 응답되도록 뷰이름을 제공하는 방법 
	// => JSP 문서로 응답 처리하지 않을 경우 요청 처리 메소드의 반환형을 Model 또는 Map으로 설정 가능
	//1.요청 처리 메소드의 반환형을 void로 설정한 경우 Front Controller에게 메소드의 이름을 뷰이름으로 제공 
	//2.요청 처리 메소드의 반환형을 String로 설정한 경우 Front Controller에게 반환되는 문자열을 뷰이름으로 제공 
	//3.요청 처리 메소드의 반환형을 ModelAndView로 설정한 경우 Front Controller에게 반환되는 
	//ModelAndView 객체의 뷰이름을 저장하여 제공
	
	//@RequestMapping : 클라이언트 요청을 처리하기 위한 메소드를 선언하기 위한 어노테이션
	// => 기본적으로 클라이언트의 모든 요청방식(Method - GET, POST, PUT, PATCH, DELETE 등)에
	//의해 호출되는 요청 처리 메소드를 작성할 경우 사용하는 어노테이션
	// => 클라이언트의 요청방식을 구분하여 요청 처리 메소드가 호출되도록 처리하고자 할 경우 @GetMaaping
	//, @PostMapping, @PutMapping, @PatchMapping, @DeleteMapping 등의 어노테이션 사용 가능
	//value 속성 : 클라이언트의 요청 URL 주소를 속성값으로 설정
	// => 클라이언트 요청 URL 주소(식별자)로 Front Controller에 의해 요청 처리 메소드가 자동
	//호출되어 클라이언트의 요청 처리
	// => 다른 속성이 없는 경우 속성값만 설정 가능
	// => 다른 요청 처리 메소드의 value 속성값과 요청 URL 주소가 중복될 경우 WAS 시작시 에러 발생
	@RequestMapping(value = "/hello")
	public void hello() {//요청 처리 메소드
		//요청 처리 명령 작성 - Service 객체의 메소드 호출
		logger.info("[/hello] 페이지 요청 : HelloController 클래스의 hello() 메소드 호출");
	}
	
	@RequestMapping(value = "/helloViewName")
	public String helloViewName() {
		logger.info("[/helloViewName] 페이지 요청 : HelloController 클래스의 helloViewName() 메소드 호출");
		return "hello";
	}
	
	@RequestMapping(value = "/helloModelAndView")
	public ModelAndView helloModelAndView() {
		logger.info("[/helloModelAndView] 페이지 요청 : HelloController 클래스의 helloModelAndView() 메소드 호출");
		
		//ModelAndView 객체 : 요청에 대한 처리 결과를 속성값으로 저장하고 뷰이름을 저장하기 위한 객체
		//ModelAndView modelAndView=new ModelAndView();
		//modelAndView.setViewName("hello");//Setter 메소드를 이용하여 뷰이름 변경
		
		ModelAndView modelAndView=new ModelAndView("hello");//생성자를 이용하여 뷰이름 변경
		
		return modelAndView;
	}
}
















