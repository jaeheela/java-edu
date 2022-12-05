package xyz.itwill.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//게시글목록 출력페이지(select.itwill)에서 전달된 글번호를 반환받아 GUEST 테이블에 저장된 해당 
//글번호의 게시글을 삭제하고 게시글목록 출력페이지(select.itwill)로 이동하기 위한 URL 주소 전달
//하는 서블릿 - 처리페이지 
@WebServlet("/delete.itwill")
public class GuestDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
