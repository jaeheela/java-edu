package xyz.itwill.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//컨트롤러(Controller - Servlet) : 클라이언트의 모든 요청을 받아 모델(Model - Class)의 요청
//처리 메소드를 호출하여 요청을 처리하고 처리결과를 뷰(View - JSP)로 전달받아 응답되도록
//제어하는 웹프로그램

//1.클라이언트의 모든 요청을 받을 수 있도록 서블릿을 설정하여 단일 진입점의 기능 구현
// => Front Controller Pattern
//@WebServlet("URL") : 서블릿 클래스를 웹프로그램(서블릿)으로 등록하고 요청 URL 주소를 매핑하는 어노테이션
// => 매핑 설정될 URL 주소에 패턴문자(* : 전체 또는 ? : 문자 하나)를 사용하여 URL 패턴 등록 가능  
// => @WebServlet("*.do") : 클라이언트가 [XXX.do] 형식의 URL 주소로 요청한 경우 서블릿 실행
// => @WebServlet 어노테이션 대신 [web.xml] 파일에서 서블릿 클래스를 웹프로그램(서블릿)으로
//등록하고 URL 주소 매핑 처리
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//클라이언트의 요청을 처리하기 위한 자동 호출되는 메소드
	// => 클라이언트가 서블릿(웹프로그램)을 요청할 때마다 서블릿 객체를 이용하여 반복적으로 호출
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("ControllerServlet 클래스의 service() 메소드 호출");
		
		//2.클라이언트 요청 분석 : 요청 URL 주소 이용 - http://localhost:8000/mvc/XXX.do
		//HttpServletRequest.getRequestURI() : 요청 URL 주소에서 URI 주소를 반환하는 메소드 
		String requestURI=request.getRequestURI();
		//System.out.println("requestURI = "+requestURI);//requestURI = /mvc/XXX.do
		
		//HttpServletRequest.getContextPath() : 요청 URL 주소에서 컨텍스트 경로를 반환하는 메소드 
		String contextPath=request.getContextPath();
		//System.out.println("contextPath = "+contextPath);//contextPath = /mvc
		
		//클라이언트 요청에 대란 요청값을 반환받아 저장
		String command=requestURI.substring(contextPath.length());
		//System.out.println("command = "+command);//command = /XXX.do
		
		//3.클라이언트 요청을 모델(Model)을 사용하여 처리하고 뷰(View) 관련 정보를 반환받아 저장
		// => 모델 역활의 Java 클래스로 객체를 생성하여 요청 처리 메소드 호출
		// => 하나의 요청에 대해 하나의 모델이 처리되도록 설정 - Command Controller Pattern
		
		//회원관리 프로그램에서 클라이언트 요청에 대한 모델 객체가 매핑되도록 설계
		// => 로그인정보 입력페이지(환영메세지 출력페이지) - /loginForm.do >> LoginFormModel Class
		// => 로그인 처리페이지 - /login.do >> LoginModel Class
		// => 로그아웃 처리페이지 - /logout.do >> LogoutModel Class
		// => 회원정보 입력페이지 - /writeForm.do >> WriteFormModel Class
		// => 회원정보 삽입페이지 - /write.do >> WriteModel Class
		// => 회원목록 출력페이지 - /list.do >> ListModel Class
		// => 회원정보 출력페이지 - /view.do >> ViewModel Class
		// => 변경회원정보 입력페이지 - /modifyForm.do >> ModifyFormModel Class
		// => 회원정보 변경페이지 - /modify.do >> ModifyModel Class
		// => 회원정보 삭제페이지 - /remove.do >> RemoveModel Class
		// => 에러메세지 출력페이지 - /error.do >> ErrorModel Class
		
		//모델 클래스가 상속받은 인터페이스를 이용하여 참조변수 선언
		// => 참조변수에는 인터페이스를 상속받은 모든 자식클래스(모델)로 생성된 객체 저장 가능
		Action action=null;
		
		if(command.equals("/loginForm.do")) {
			action=new LoginFormModel();
		} else if(command.equals("/login.do")) {
			action=new LoginModel();
		} else if(command.equals("/error.do")) {
			action=new ErrorModel();
		} else {//요청에 대한 모델 클래스가 없는 경우
			action=new ErrorModel();
		}
		
		//인터페이스 참조변수를 이용하여 추상메소드를 호출하면 참조변수에 저장된 모델 객체에
		//오버라이드 선언된 요청 처리 메소드 호출 - 오버라이드에 의한 다형성
		// => 요청 처리 메소드에 의해 요청 처리 후 응답 관련 정보가 저장된 ActionForward 
		//객체를 반환받아 저장
		ActionForward actionForward=action.execute(request, response);
		
		//4.응답 관련 정보를 저장된 ActionForward 객체를 이용하여 응답 처리
		if(actionForward.isForward()) {//ActionForward 객체의 forward 필드값이 [true]인 경우 - 포워드 이동
			//컨트롤러에서 뷰(XXX.jsp)로 스레드를 이동하여 JSP 문서의 실행결과(HTML 문서)를 
			//클라이언트에게 전달하여 응답
			request.getRequestDispatcher(actionForward.getPath()).forward(request, response);
		} else {//ActionForward 객체의 forward 필드값이 [false]인 경우 - 라다이렉트 이동
			//컨트롤러에서 클라이언트에게 요청 URL 주소(XXX.do)를 전달하여 재요청하도록 응답
			response.sendRedirect(actionForward.getPath());
		}
	}
}
