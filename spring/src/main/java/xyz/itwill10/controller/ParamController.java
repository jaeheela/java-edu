package xyz.itwill10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ParamController {
	@RequestMapping(value = "/param", method = RequestMethod.GET)
	public String form() {
		return "param_form";
	}
	
	/*
	//요청 처리 메소드에 HttpServletRequest 인터페이스로 매개변수를 선언하면 Front Controller에게
	//클라이언트의 요청정보가 저장된 HttpServletRequest 객체를 제공받아 사용 가능
	// => HttpServletRequest 객체의 메소드를 호출하여 페이지 요청시 전달된 값을 반환받아 처리
	@RequestMapping(value = "/param", method = RequestMethod.POST)
	public String result(HttpServletRequest request) throws UnsupportedEncodingException {
		String food=request.getParameter("food");
		request.setAttribute("food", food);
		return "param_display";
	}
	*/
	
	/*
	//요청 처리 메소드에서 페이지 요청시 전달되는 값의 이름과 같은 이름으로 String 자료형의
	//매개변수를 선언하면 Front Controller에 의해 전달값이 매개변수에 자동으로 저장되어 제공
	// => 전달값의 이름과 매개변수의 이름이 같지 않을 경우 매개변수에는 [null] 저장
	//클라이언트 요청에 의해 웹프로그램이 실행되기 전과 후에 원하는 명령을 실행할 수 있는
	//필터를 [web.xml] 파일에 등록하여 사용 가능
	// => 클라이언트의 모든 요청에 대해 요청정보가 저장된 리퀘스트 메세지의 몸체부의 문자형식을
	//변경하는 필터가 사용되도록 [web.xml] 파일을 이용하여 설정 - 인코딩 필터 적용
	// => 필터는 Front Controller 전에 위치되어 요청과 응답 관련 정보 변경 가능 - WAS에 의해 제어 
	@RequestMapping(value = "/param", method = RequestMethod.POST)
	public String result(String food, Model model) {
		model.addAttribute("food", food);
		return "param_display";
	}
	*/
	
	/*
	//전달값을 저장하기 위한 매개변수에 @RequestParam 어노테이션 사용
	//@RequestParam : 전달값을 매개변수에 저장하기 위한 어노테이션
	// => 매개변수의 이름과 같은 이름의 전달값이 없는 경우 400 에러 발생
	// => 매개변수에 반드시 전달값이 저장되도록 설정하기 위한 어노테이션
	@RequestMapping(value = "/param", method = RequestMethod.POST)
	public String result(@RequestParam String food, Model model) {
		model.addAttribute("food", food);
		return "param_display";
	}
	*/
	
	//value 속성 : 전달값의 이름을 속성값으로 설정
	// => @RequestParam 속성을 사용하여 전달값의 이름으로 값을 제공받아 매개변수에 저장 가능
	// => 전달값의 이름과 매개변수의 이름이 다른 경우 사용
	// => 다른 속성이 없는 경우 속성값만 설정 가능
	@RequestMapping(value = "/param", method = RequestMethod.POST)
	public String result(@RequestParam(value = "foodname") String food, Model model) {
		model.addAttribute("food", food);
		return "param_display";
	}
}










