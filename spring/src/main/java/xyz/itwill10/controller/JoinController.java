package xyz.itwill10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class JoinController {
	@RequestMapping(value = "join", method=RequestMethod.GET)
	public String join() {
		return "join_form";
	}
	
	/*
	//전달값을 제공받아 Request Scope 속성값으로 저장하고 속성값을 출력하기 위한 JSP 문서의 
	//뷰이름을 반환하는 요청 처리 메소드
	// => 전달값과 같은 이름의 매개변수에 전달값을 제공받아 요청 처리 메소드에서 사용
	// => @RequestParam 어노테이션을 사용하여 매개변수와 같은 이름으로 전달되는 값이 없는 경우 400 에러코드 발생
	@RequestMapping(value = "join", method=RequestMethod.POST)
	public String join(@RequestParam String id, @RequestParam String passwd
			,@RequestParam String name,@RequestParam String email, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("passwd", passwd);
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		return "join_display";
	}
	*/
	
	/*
	//전달값을 제공받아 Request Scope 속성값으로 저장하고 속성값을 출력하기 위한 JSP 문서의 
	//뷰이름을 반환하는 요청 처리 메소드
	// => 전달값과 같은 이름의 매개변수에 전달값을 제공받아 요청 처리 메소드에서 사용
	// => @ModelAttribute 어노테이션을 사용하여 매개변수에 저장된 값을 속성값으로 저장하여 뷰(View) 제공
	//@ModelAttribute : 객체(값)을 뷰에게 제공하기 위한 어노테이션
	// => 메소드에 @ModelAttribute 어노테이션을 사용하면 메소드의 반환값을 속성값으로 저장하여
	//요청 처리 클래스의 모든 요청 처리 메소드의 뷰에게 제공
	// => 매개변수에 @ModelAttribute 어노테이션을 사용하면 매개변수에 저장된 값을 속성값으로 
	//저장하여 요청 처리 메소드의 뷰에게 제공
	//value 속성 : 뷰(JSP)에서 속성값을 사용하기 위한 속성명을 속성값으로 설정
	// => 다른 속성이 없는 경우 속성값만 설정 가능
	//@ModelAttribute 어노테이션을 사용하면 매개변수와 같은 이름의 전달값이 없어도 400 에러코드 미발생
	@RequestMapping(value = "join", method=RequestMethod.POST)
	public String join(@ModelAttribute("id") String id, @ModelAttribute("passwd") String passwd
			,@ModelAttribute("name") String name,@ModelAttribute("email") String email) {
		return "join_display";
	}
	*/
	
	//전달값을 매개변수로 제공받아 객체의 필드값으로 저장하고 객체를 Request Scope 속성값으로
	//저장하고 속성값을 출력하기 위한 JSP 문서의 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping(value = "join", method=RequestMethod.POST)
	public String join(@RequestParam String id, @RequestParam String passwd
			,@RequestParam String name,@RequestParam String email, Model model) {

		return "join_display";
	}
}










