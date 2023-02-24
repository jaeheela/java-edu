package xyz.itwill10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//TilesView : 요청 처리 메소드의 반환값(ViewName)을 제공받아 다수의 JSP 문서를 합쳐 하나의
//템플릿 페이지의 JSP 문서로 응답하기 위한 기능을 제공하는 뷰프로그램 - ViewResolver
//1.TilesView 관련 라이브러리(tiles-extras)를 프로젝트에 빌드 처리 - 메이븐 : pom.xml
//2.요청 처리 메소드의 반환값(ViewName)을 제공받아 응답할 템플릿 페이지 설정
// => TilesView 환경설정파일(XML)을 작성하여 설정 - /WEB-INF/spring/appServlet/tiles.xml

@Controller
public class TilesController {
	@RequestMapping("/")
	public String tiles() {
		return "main";
	}
}
