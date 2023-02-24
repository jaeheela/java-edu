package xyz.itwill10.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class JoinController {
	@RequestMapping(value = "/join", method=RequestMethod.GET)
	public String join() {
		return "join_form";
	}
	
	/*
	//전달값을 제공받아 Request Scope 속성값으로 저장하고 속성값을 출력하기 위한 JSP 문서의 
	//뷰이름을 반환하는 요청 처리 메소드
	// => 전달값과 같은 이름의 매개변수에 전달값을 제공받아 요청 처리 메소드에서 사용
	// => @RequestParam 어노테이션을 사용하여 매개변수와 같은 이름으로 전달되는 값이 없는 경우 400 에러코드 발생
	@RequestMapping(value = "/join", method=RequestMethod.POST)
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
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public String join(@ModelAttribute("id") String id, @ModelAttribute("passwd") String passwd
			,@ModelAttribute("name") String name,@ModelAttribute("email") String email) {
		return "join_display";
	}
	*/
	
	/*
	//전달값을 매개변수로 제공받아 객체의 필드값으로 저장하고 객체를 Request Scope 속성값으로
	//저장하고 속성값을 출력하기 위한 JSP 문서의 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public String join(@RequestParam String id, @RequestParam String passwd
			, @RequestParam String name, @RequestParam String email, Model model) {
		Member member=new Member();
		member.setId(id);
		member.setPasswd(passwd);
		member.setName(name);
		member.setEmail(email);
		
		//model.addAttribute("member", member);
		//Model.addAttribute(Object attributeValue) : Model 객체에 속성명과 속성값(객체)을  
		//저장하기 위한 메소드 - Request Scope
		// => 속성값의 자료형(클래스)을 속성명으로 자동 설정 - 첫문자는 소문자로 변환
		// => 속성값으로 원시값(Wrapper 객체) 또는 String 객체 저장 불가
		model.addAttribute(member);
		
		return "join_display";
	}
	*/

	/*
	//페이지의 전달값이 있는 경우 요청 처리 메소드의 매개변수 자료형을 VO 클래스(DTO 클래스)로
	//작성하면 Front Controller는 VO 클래스로 객체를 생성하여 매개변수에 전달하여 저장
	// => VO 클래스의 객체는 전달값의 이름과 같은 필드에 전달값을 제공받아 저장
	//Command 객체 : 전달값을 제공받아 필드에 저장된 객체로 속성값으로 저장하여 요청 처리 
	//메소드의 뷰에서 사용될 수 있도록 제공
	// => @ModelAttribute 어노테이션을 사용하여 객체를 속성값으로 저장해 뷰에게 제공 
	// => @ModelAttribute 어노테이션 생략 가능
	// => @ModelAttribute 어노테이션의 value 속성을 생략하면 Command 객체의 자료형(클래스)이
	//속성명으로 자동 설정 - 첫문자는 소문자로 변환
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public String join(@ModelAttribute Member member) {
		return "join_display";
	}
	*/
	
	/*
	//@ModelAttribute 어노테이션의 value 속성을 사용하여 뷰에게 제공될 속성값의 속성명을 변경 가능
	@RequestMapping(value = "join", method=RequestMethod.POST)
	public String join(@ModelAttribute(value = "mem") Member member, Model model) {
		if(member.getId().equals("abc123")) {//아이디가 중복된 경우
			model.addAttribute("message", "이미 사용중인 아이디를 입력 하였습니다.");
			return "join_form";//입력페이지 이동
		}
		return "join_display";
	}
	*/

	//페이지의 전달값이 있는 경우 요청 처리 메소드의 매개변수 자료형을 Map 인터페이스로
	//작성하면 Front Controller는 Map 객체를 생성하여 매개변수에 전달하여 저장
	// => 모든 전달값을 Map 객체의 엔트리로 추가하여 매개변수로 제공
	// => Map 객체의 엔트리(Entry)에는 전달값의 이름을 맵키(MapKey - String)로 제공받고
	//전달값을 맵값(MapValue - String)로 제공받아 저장
	// => Map 인터페이스로 작성된 매개변수에는 반드시 @RequestParam 어노테이션을 사용해야만
	//Map 객체의 엔트리로 전달값을 제공받아 사용 가능
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public String join(@RequestParam Map<String, String> map, Model model) {
		model.addAttribute("mem", map);
		return "join_display";
	}
}
