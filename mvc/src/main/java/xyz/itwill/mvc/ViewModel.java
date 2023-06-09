package xyz.itwill.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xyz.itwill.dto.UserinfoDTO;
import xyz.itwill.service.UserinfoService;

//클라이언트가 [/view.do]로 요청한 경우 실행될 모델 클래스
// => 로그인 사용자만 요청 가능하도록 권한 설정
// => 아이디를 전달받아 USERINFO 테이블에 저장된 해당 아이디의 회원정보를 검색하여 request 속성값으로 저장
// => [user_view.jsp]로 포워드 이동하기 정보가 저장된 ActionForward 객체 반환
public class ViewModel implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward actionForward=new ActionForward();
		try {
			HttpSession session=request.getSession();
			UserinfoDTO loginUserinfo=(UserinfoDTO)session.getAttribute("loginUserinfo");
			//비로그인 사용자인 경우 - 비정상적인 요청
			if(loginUserinfo==null) {
				throw new Exception();
			}
			
			if(request.getParameter("userid")==null) {
				throw new Exception();
			}
			
			String userid=request.getParameter("userid");
			
			//UserinfoService 클래스의 getUserinfo() 메소드를 호출하여 반환된 회원정보를
			//포워드 이동될 JSP에서 사용하기 위해 request 속성값으로 저장
			// => UserinfoService 클래스의 getUserinfo() 메소드에서 해당 아이디의 회원정보가
			//검색되지 않은 경우 UserinfoNotFoundException 발생 >> 에러페이지 이동
			request.setAttribute("userinfo", UserinfoService.getService().getUserinfo(userid));
			
			actionForward.setForward(true);
			actionForward.setPath("/model_two/user_view.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			actionForward.setForward(false);
			actionForward.setPath("error.do");
		}
		return actionForward;
	}

}
