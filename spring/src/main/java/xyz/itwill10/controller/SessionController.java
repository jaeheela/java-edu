package xyz.itwill10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill10.dto.Hewon;

@Controller
public class SessionController {
	//아이디를 전달받아 회원정보를 검색하여 반환하는 메소드 - Service 클래스의 메소드
	private Hewon getHewon(String id) {
		Hewon hewon=new Hewon();
		hewon.setId(id);
		hewon.setName("홍길동");
		hewon.setEmail("abc@itwill.xyz");
		return hewon;
	}
	
	//아이디를 전달받아 회원정보를 뷰에게 제공하기 위한 요청 처리 메소드
	// => 요청 처리 메소드에 의해 제공된 회원정보가 출력되도록 뷰 작성
	@RequestMapping("/hewon_view")
	public String view(@RequestParam(defaultValue = "abc123") String id, Model model) {
		//Service 클래스의 메소드를 호출하여 아이디를 전달해 해당 아이디의 회원정보를 
		//검색하여 반환받아 저장
		Hewon hewon=getHewon(id);
		
		//Model 객체를 사용하여 검색된 회원정보를 속성값으로 저장하여 뷰에게 제공 
		// => 요청 처리 메소드의 뷰에게만 속성값을 제공하여 출력 처리 - Request Scope
		//model.addAttribute("hewon", hewon);
		//속성값으로 저장된 객체의 자료형(클래스의 이름 - 첫문자는 소문자로 변환)이 자동으로 속성명으로 설정
		model.addAttribute(hewon);//속성명 생략 가능  
		
		return "hewon_view";
	}
	
	//아이디를 전달받아 회원정보를 뷰에게 제공하기 위한 요청 처리 메소드
	// => 요청 처리 메소드에 의해 제공된 회원정보를 입력태그의 초기값으로 사용되도록 뷰 작성
	@RequestMapping(value="/hewon_update", method = RequestMethod.GET)
	public String update(@RequestParam(defaultValue = "abc123") String id, Model model) {
		Hewon hewon=getHewon(id);
		model.addAttribute(hewon);
		return "hewon_update";
	}
}












