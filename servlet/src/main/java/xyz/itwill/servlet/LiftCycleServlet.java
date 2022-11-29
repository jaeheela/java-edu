package xyz.itwill.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿(웹프로그램)은 클라이언트 요청에 의해 WAS 프로그램에 등록된 서블릿 클래스를 읽어
//메모리에 저장하고 서블릿 객체로 생성하여 요청 처리 메소드를 호출
// => 클라이언트 요청에 의한 서블릿 객체가 이미 생성되어 있는 경우 새로운 서블릿 객체를 
//생성하지 않고 기존 서블릿 객체를 사용하여 요청 처리 메소드 호출
// => WAS 프로그램 종료되면 WAS 프로그램에 의해 관리되는 모든 서블릿 객체 소멸
// => WAS 프로그램의 주요 기능 중 하나는 서블릿 객체를 관리하는 웹컨테이너(WebContainer) 기능 제공
//컨테이너(Container) : 프로그램 관련 객체(Component)의 생명주기(LifeCycle)를 관리(생성,사용,소멸)하는 프로그램

@WebServlet("/life.itwill")
public class LiftCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
