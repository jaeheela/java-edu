<%@page import="xyz.itwill.util.Utility"%>
<%@page import="xyz.itwill.dto.BoardDTO"%>
<%@page import="xyz.itwill.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 게시글(새글 또는 답글)을 전달받아 BOARD 테이블에 삽입하고 게시글목록 출력페이지(board_list.jsp)로
이동하기 위한 URL 주소를 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 로그인 사용자만 요청 가능한 JSP 문서 --%>    

<%-- 비정상적인 요청에 대한 응답 처리 --%>
<%@include file="/security/login_check.jspf" %>

<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error_400';");
		out.println("</script>");
		return;		
	}

	//전달값을 반환받아 저장
	int ref=Integer.parseInt(request.getParameter("ref"));
	int reStep=Integer.parseInt(request.getParameter("reStep"));
	int reLevel=Integer.parseInt(request.getParameter("reLevel"));
	String pageNum=request.getParameter("pageNum");
	//사용자로부터 입력받아 전달된 값에 태그 관련 문자가 존재할 경우 회피문자로 변경하여 저장
	// => XSS 공격에 대한 방어 
	//String subject=request.getParameter("subject");
	//String subject=Utility.stripTag(request.getParameter("subject"));
	String subject=Utility.escapeTag(request.getParameter("subject"));
	int status=1;
	if(request.getParameter("secret")!=null) {
		status=Integer.parseInt(request.getParameter("secret"));
	}
	String content=Utility.escapeTag(request.getParameter("content"));
	
	//BOARD_SEQ 시퀸스의 다음값(자동 증가값)을 검색하여 반환하는 DAO 클래스의 메소드 호출
	// => 게시글(새글 또는 답글)의 글번호(NUM 컬럼값)로 저장
	// => 새글인 경우에는 게시글의 그룹번호(REF 컬럼값)로 저장
	int num=BoardDAO.getDAO().selectNextNum();
	
	//게시글 작성자의 컴퓨터 IP 주소를 반환받아 저장 - IP 컬럼값으로 저장
	//request.getRemoteAddr() : JSP 문서를 요청한 클라이언트의 IP 주소를 반환하는 메소드
	// => 이클립스에 등록되어 동작되는 WAS 프로그램은 기본적으로 IPV6 프로토콜의 128Bit 형식에 IP 주소 제공
	//IPV4 프로토콜의 32Bit 형식에 IP 주소를 제공받을 수 있도록 이클립스 실행 환경 변경
	// => Run >> Run Configurations... >> Apache Tomcat >> 사용중인 Apache Tomcat 선택
	//    >> Arguments >> VM Arguments >> [-Djava.net.preferIPv4Stack=true] 추가 >> Apply 
	String ip=request.getRemoteAddr();
	//System.out.println("ip = "+ip);
	
	//새글과 답글을 구분하여 BOARD 테이블의 컬럼값으로 저장될 변수값 변경
	// => board_write.jsp 문서에서 hidden 타입으로 전달된 ref, reStep, reLevel 변수값
	//(새글 - 초기값, 답글 - 부모글) 변경
	if(ref==0) {//새글인 경우
		//BOARD 테이블의 REF 컬럼값에는 자동 증가값(num 변수값)이 저장되도록 ref 변수값을 변경하고
		//RE_STEP 컬럼과 RE_LEVEL 컬럼에는 [0]이 저장되도록 reStep 변수와 reLevel 변수의 값 사용  
		ref=num;
	} else {//답글인 경우
		//부모글의 정보(ref 변수값과 reStep 변수값)를 전달받아 BOARD 테이블에 저장된 게시글에서
		//REF 컬럼값과 ref 변수값이 같은 게시글 중 RE_STEP 컬럼값이 reStep 변수값보다 커다란
		//모든 게시글의 RE_STEP 컬럼값이 1씩 증가되도록 변경하는 DAO 클래스 메소드 호출
		// => 답글의 검색 순서가 변경되어 다시 정렬되도록 RE_STEP 컬럼값 변경
		BoardDAO.getDAO().updateReStep(ref, reStep);
		
		//BOARD 테이블의 REF 컬럼값에는 부모글의 전달값이 저장되도록 ref 변수값을 사용하고
		//RE_STEP 컬럼과 RE_LEVEL 컬럼에는 reStep 변수와 reLevel 변수의 값을 1 증가시켜 저장되도록 변경
		reStep++;
		reLevel++;
	}
	
	//BoardDTO 객체를 생성하여 변수값으로 필드값 변경
	BoardDTO board=new BoardDTO();
	board.setNum(num);
	board.setId(loginMember.getId());
	board.setSubject(subject);
	board.setRef(ref);
	board.setReStep(reStep);
	board.setReLevel(reLevel);
	board.setContent(content);
	board.setIp(ip);
	board.setStatus(status);

	//게시글을 전달받아 BOARD 테이블에 삽입하는 DAO 클래스의 메소드 호출
	BoardDAO.getDAO().insertBoard(board);
	
	//페이지 이동
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=board&work=board_list&pageNum="+pageNum+"';");
	out.println("</script>");
%>   
