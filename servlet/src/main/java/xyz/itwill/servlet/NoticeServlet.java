package xyz.itwill.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//오늘 날짜의 공지사항 파일을 읽어 파일내용을 웹문서로 생성하여 클라이언트에게 전달하는 서블릿
// => 오늘 날짜의 공지사항 파일이 없는 경우 클라이언트에게는 공지사항이 없음을 알리는 웹문서 전달
// => 공지사항 파일은 /WEB-INF/notice 폴더에 년월일(yyyyMMdd.txt)을 이용하여 작성
@WebServlet("/notice.itwill")
public class NoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
