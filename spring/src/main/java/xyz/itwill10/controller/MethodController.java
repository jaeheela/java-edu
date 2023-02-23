package xyz.itwill10.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MethodController {
	//사용자에게 값을 입력받기 위한 JSP 문서의 ViewName를 반환하는 요청 처리 메소드
	// => 클라이언트의 요청방식에 상관없이 무조건 요청 처리 메소드 호출
	@RequestMapping("/method_input")
	public String inputOne() {
		return "method_input1";
	}
	
	//입력값을 반환받아 Request Scope 속성값으로 저장하고 속성값을 출력하기 위한 JSP 문서의
	//ViewName를 반환하는 요청 처리 메소드  
	// => 클라이언트의 요청방식에 상관없이 무조건 요청 처리 메소드 호출
	@RequestMapping("/method_output")
	public String outputOne(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//클라이언트가 해당 페이지를 GET 방식으로 요청한 경우 - 비정상적인 요청
		if(request.getMethod().equals("GET")) {
			//response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);//클라이언트에게 405 에러코드 전달
			response.sendRedirect("method_input");//클라이언트에게 URL 주소 전달 -  URL 주소로 재요청
			return null;
		}
		
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		request.setAttribute("name", name);
		return "method_output";
	}
	
	//사용자에게 값을 입력받기 위한 JSP 문서의 ViewName를 반환하는 요청 처리 메소드
	// => 클라이언트가 페이지를 [GET] 방식으로 요청한 경우에만 요청 처리 메소드 호출
	//method 속성 : RequestMethod 자료형(Enum)의 상수(Constant) 중 하나를 속성값으로 설정
	// => RequestMethod 자료형(Enum)은 클라이언트의 요청방식을 상수로 제공
	// => method 속성으로 클라이언트가 페이지를 요청하기 위한 요청방식을 지정 가능
	// => method 속성값으로 설정된 요청방식외의 방법으로 페이지를 요청한 경우 405 에러코드 발생
	//[GET] 방식으로 요청 처리 메소드를 호출하기 위해 @RequestMapping 어노테이션 대신 
	//@GetMapping 어노테이션 사용 가능
	@RequestMapping(value = "/method", method = RequestMethod.GET)
	public String inputTwo() {
		return "method_input2";
	}

	//입력값을 반환받아 Request Scope 속성값으로 저장하고 속성값을 출력하기 위한 JSP 문서의
	//ViewName를 반환하는 요청 처리 메소드  
	// => 클라이언트가 페이지를 [POST] 방식으로 요청한 경우에만 요청 처리 메소드 호출
	//요청 처리 메소드를 호출하는 요청 URL 주소가 같아도 요청방식을 다르게 지정하면 다른 
	//요청 처리 메소드로 매핑 처리
	//[POST] 방식으로 요청 처리 메소드를 호출하기 위해 @RequestMapping 어노테이션 대신 
	//@PostMapping 어노테이션 사용 가능	
	@RequestMapping(value = "/method", method = RequestMethod.POST)
	public String outputTwo(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		request.setAttribute("name", name);
		return "method_output";
	}
}
