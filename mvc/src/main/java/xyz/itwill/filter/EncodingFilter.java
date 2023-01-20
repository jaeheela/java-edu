package xyz.itwill.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

//필터 클래스 : 특정 웹프로그램 요청에 대한 웹프로그램 실행 전 또는 후에 동작될 명령을 작성하기 위한 클래스
// => 웹프로그램 실행 전 동작될 명령으로 리퀘스트 메세지(요청 관련 정보 - HttpServletRequest 
//객체)의 정보를 변경하는 명령 작성 
//=> 웹프로그램 실행 후 동작될 명령으로 리스폰즈 메세지(응답 관련 정보 - HttpServletResponse 
//객체)의 정보를 변경하는 명령 작성 

//필터 클래스는 반드시 Filter 인터페이스를 상속받아 작성하며 @WebFilter 어노테이션 또는 [web.xml]
//파일에서 필터 클래스를 필터로 등록하고 필터가 동작되기 위한 URL 패턴정보를 매핑 처리

//클라이언트가 요청하는 모든 웹프로그램에 대해 실행 전 리퀘스트 메세지의 몸체부에 저장되어 
//전달되는 문자값에 대한 문자형태(캐릭터셋)을 변경하는 필터 클래스 - 인코딩 필터
public class EncodingFilter implements Filter {
	//변경할 캐릭터셋를 저장하기 위한 필드
	private String encoding;
	
	//필터 클래스로 객체가 생성된 후 가장 먼저 1번만 호출되는 메소드 - 필터 객체의 초기화 작업
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		encoding="utf-8";
	}
	
	//요청 웹프로그램 실행 전 또는 후에 동작될 명령을 작성하는 메소드
	// => 등록된 URL 패턴의 웹프로그램 실행 전에 자동 호출되는 메소드
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//웹프로그램 실행 전에 동작될 명령 작성 - 리퀘스트 메세지의 정보 변경
		if(request.getCharacterEncoding()==null || 
				!request.getCharacterEncoding().equalsIgnoreCase(encoding)) {
			request.setCharacterEncoding(encoding);
		}
		
		//FilterChain.doFilter(ServletRequest request, ServletResponse response)
		// => 요청 웹프로그램을 연결하여 실행되도록 설정하는 메소드
		chain.doFilter(request, response);//요청 웹프로그램 실행
		
		//웹프로그램 실행 후에 동작될 명령 작성 - 리스폰트 메세지의 정보 변경
		//response.setContentType("text/html; charset=utf-8");
	}
}















