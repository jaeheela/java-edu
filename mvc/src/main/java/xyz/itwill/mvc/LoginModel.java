package xyz.itwill.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.itwill.exception.AuthFailException;
import xyz.itwill.service.UserinfoService;

//클라이언트가 [/login.do]로 요청한 경우 실행될 모델 클래스
// => 로그인정보를 전달받아 USERINFO 테이블에 저장된 회원정보와 비교하여 인증 처리
// => 인증 성공 : 세션에 권한 관련 정보를 저장하고 [loginForm.do]로 리다이렉트 이동하기
//정보가 저장된 ActionForward 객체 반환
// => 인증 실패 : [user_login.jsp]로 포워드 이동하기 위한 정보가 저장된 ActionForward 
//객체 반환 - 에러메세지와 아이디를 request 속성값으로 저장하여 JSP 문서에 제공
public class LoginModel implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward actionForward=new ActionForward();
		//요청을 처리하면서 발생되는 모든 예외를 처리하기 위한 예외처리 기능 구현
		try {
			if(request.getMethod().equals("GET")) {//비정상적인 요청인 경우
				throw new Exception();//인위적 예외 발생
			}
			
			//전달값을 반환받아 저장
			String userid=request.getParameter("userid"); 
			String password=request.getParameter("password");
			
			//모델 클래스의 요청 처리 메소드에서는 Service 객체로 메소드를 호출하여
			//데이타베이스 관련된 작업이 처리되도록 작성
			
			//UserinfoService 클래스의 auth() 메소드를 호출하여 인증 처리
			// => AuthFailException이 발생된 경우 인증 실패 
			UserinfoService.getService().auth(userid, password);
		} catch (AuthFailException e) {
			request.setAttribute("message", e.getMessage());
			request.setAttribute("userid", request.getParameter("user_id"));
			actionForward.setForward(true);
			actionForward.setPath("/model_two/user_login.jsp");
		} catch (Exception e) {
			//모든 예외에 대한 처리 명령 작성 
			// => [error.do]로 리다이렉트 이동하기 위한 정보가 저장된 ActionForward 객체 반환
			e.printStackTrace();//서버 콘솔에 에러메세지 출력
			actionForward.setForward(false);
			actionForward.setPath("error.do");
		}
		return actionForward;
	}
}












