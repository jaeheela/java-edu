package xyz.itwill10.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import xyz.itwill10.dto.Userinfo;
import xyz.itwill10.exception.ExistsUserinfoException;
import xyz.itwill10.exception.LoginAuthFailException;
import xyz.itwill10.service.UserinfoService;

@Controller
@RequestMapping("/userinfo")
@RequiredArgsConstructor
public class UserinfoController {
	private final UserinfoService userinfoService;
	
	//회원등록을 위해 회원정보를 입력받기 위한 뷰이름을 반환하는 요청 처리 메소드
	// => 비로그인 사용자 또는 관리자가 아닌 사용자가 페이지를 요청한 경우 인위적 예외 발생 - 예외 처리 메소드에 의해 예외 처리
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(HttpSession session) throws Exception {
		//세션에 저장된 권한 관련 객체를 반환받아 저장
		Userinfo loginUserinfo=(Userinfo)session.getAttribute("loginUserinfo");
		if(loginUserinfo==null || loginUserinfo.getStatus()!=9) {
			throw new Exception("비정상적인 요청입니다.");
		}
		
		return "userinfo/user_write";
	}
	
	/*
	//회원정보를 전달받아 USERINFO 테이블에 삽입하고 로그인 페이지를 요청하기 위한 URL 주소를
	//클라이언트에게 전달하는 요청 처리 메소드
	// => UserinfoService 객체의 메소드 호출시 예외 발생 가능 - try~catch 구문을 사용하여 예외 처리
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute Userinfo userinfo, Model model) {
		try {
			userinfoService.addUserinfo(userinfo);
		} catch (ExistsUserinfoException e) {
			//ExistsUserinfoException 객체에 저장된 에러 메세지를 속성값으로 저장
			model.addAttribute("message", e.getMessage());
			
			//ExistsUserinfoException 객체에 저장된 회원정보(사용자 입력값)를 속성값으로 저장
			model.addAttribute("userinfo", userinfo);
			
			//아이디 중복으로 예외가 발생된 경우 회원정보를 입력받기 위한 뷰이름을 반환
			return "userinfo/user_write";
		}
		
		return "redirect:/userinfo/login";		
	}
	*/
	
	//회원정보를 전달받아 USERINFO 테이블에 삽입하고 로그인 페이지를 요청하기 위한 URL 주소를
	//클라이언트에게 전달하는 요청 처리 메소드
	// => UserinfoService 객체의 메소드 호출시 예외 발생 가능 - Front Controller에게 예외 전달
	// => Front Controller는 전달받은 예외로 인해 500 에러코드 발생하여 클라이언트에게 전달 
	// => Front Controller는 해당 예외에 대한 ExceptionHandler 기능을 제공하는 메소드가 
	//작성된 경우 ExceptionHandler 기능의 메소드를 호출하여 예외 처리 가능 
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute Userinfo userinfo) throws ExistsUserinfoException {
		userinfoService.addUserinfo(userinfo);
		return "redirect:/userinfo/login";		
	}
	
	//로그인을 위해 인증정보를 입력받기 위한 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() throws Exception {
		return "userinfo/user_login";
	}
	
	//인증정보를 전달받아 로그인 처리 후 환영 메세지를 출력하기 위한 뷰이름을 반환하는 요청 처리 메소드
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Userinfo userinfo, HttpSession session) throws LoginAuthFailException {
		//인증 실패시 LoginAuthFailException 발생하고 인증 성공시 검색된 회원정보 반환받아 저장
		Userinfo authUserinfo=userinfoService.loginAuth(userinfo);
		
		//세션에 권한 관련 정보를 속성값으로 저장
		session.setAttribute("loginUserinfo", authUserinfo);
		
		return "userinfo/user_login";
	}
	
	//로그아웃 처리 후 로그인 페이지를 요청하기 위한 URL 주소를 클라이언트에게 전달하는 요청 처리 메소드
	@RequestMapping("/logout")
	public String login(HttpSession session) {
		//session.removeAttribute("loginUserinfo");
		session.invalidate();
		
		return "redirect:/userinfo/login";
	}
	
	//USERINFO 테이블에 저장된 모든 회원정보를 검색하여 속성값으로 저장하여 회원목록을 출력
	//하는 뷰이름을 반환하는 요청 처리 메소드
	// => 비로그인 사용자가 페이지를 요청한 경우 인위적 예외 발생 - 예외 처리 메소드에 의해 예외 처리
	@RequestMapping("/list")
	public String list(Model model, HttpSession session) throws Exception {
		Userinfo loginUserinfo=(Userinfo)session.getAttribute("loginUserinfo");
		if(loginUserinfo==null) {//비로그인 사용자가 페이지를 요청한 경우
			throw new Exception("비정상적인 요청입니다.");//인위적 예외 발생
		}
		
		model.addAttribute("userinfoList", userinfoService.getUserinfoList());
		
		return "userinfo/user_list";
	}
		
	//@ExceptionHandler : 메소드에 예외 처리 기능을 제공하도록 설정하는 어노테이션
	// => Controller 클래스의 요청 처리 메소드에서 예외가 발생되어 Front Controller에게 전달된
	//경우 예외 관련 객체를 제공받아 예외 처리하기 위한 메소드 - ExceptionHandler Mothod 
	//value 속성 : 예외 처리하기 위한 클래스(Class 객체)를 속성값으로 설정
	// => 다른 속성이 없는 경우 속성값만 설정 가능
	//예외 처리 메소드에서 예외 처리를 위해 필요한 객체를 매개변수로 전달받아 사용 가능하며
	//뷰이름을 반환해 JSP 문서로 응답 처리 가능 - 리다이렉트 이동 가능
	@ExceptionHandler(value = ExistsUserinfoException.class)
	public String userinfoExceptionHandler(ExistsUserinfoException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("userinfo",exception.getUserinfo());
		return "userinfo/user_write";
	}
	
	@ExceptionHandler(value = LoginAuthFailException.class)
	public String userinfoExceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("userid",exception.getUserid());
		return "userinfo/user_login";
	}
	
	/*
	@ExceptionHandler(value = Exception.class)
	public String userinfoExceptionHandler() {
		return "userinfo/user_error";
	}
	*/
}













