package xyz.itwill.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xyz.itwill.dao.GuestDAO;
import xyz.itwill.dto.GuestDTO;

//입력페이지(insert.html)에서 전달된 게시글을 반환받아 GUEST 테이블에 삽입하고 클라이언트에게
//게시글목록 출력페이지(select.itwill)로 이동하기 위한 URL 주소 전달 - 처리페이지
@WebServlet("/insert.itwill")
public class GuestInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//비정상적인 요청에 대한 처리
		if(request.getMethod().equals("GET")) {//클라이언트가 서블릿을 [GET] 방식으로 요청한 경우
			//클라이언트에게 에러코드 전달
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);//405
			return;
		}
		
		//리퀘스트 메세지의 몸체부에 저장되어 전달되는 값(POST)에 대한 캐릭터셋 변경
		request.setCharacterEncoding("utf-8");
		
		//전달값(게시글)을 반환받아 저장
		String name=request.getParameter("name");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
		//DTO 객체를 생성하여 전달값으로 필드값 변경
		GuestDTO guest=new GuestDTO();
		guest.setName(name);
		guest.setTitle(title);
		guest.setContent(content);
		
		//게시글(GuestDTO 객체)을 전달받아 GUEST 테이블에 삽입하는 DAO 클래스의 메소드 호출
		GuestDAO.getDAO().insertGuest(guest);
		
		//클라이언트에게 301 상태코드와 URL 주소 전달
		response.sendRedirect("select.itwill");//리다이렉트 이동
	}

}
