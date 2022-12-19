<%@page import="xyz.itwill.util.Utility"%>
<%@page import="xyz.itwill.dao.MemberDAO"%>
<%@page import="xyz.itwill.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 회원정보를 전달받아 MEMBER 테이블에 삽입하고 로그인정보 입력페이지(member_login.jsp)로
이동하기 위한 URL 주소 전달하는 JSP 문서 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getMethod().equals("GET")) {
		//include 태그에 의해 스레드가 이동된 JSP 문서는 클라이언트에게 에러코드나 URL 주소 전달 불가능
		// => 자바스크립트를 이용하여 처리
		//response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		//return;
		
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error_400';");
		out.println("</script>");
		return;
	}

	//post 방식으로 요청하여 전달되는 값에 대한 캐릭터셋 변경
	//include 태그에 의해 스레드가 이동된 JSP 문서는 request 객체의 캐릭터셋 변경 불가능
	// => 요청 JSP 문서(index.jsp - 템플릿 페이지)에서 request 객체의 캐릭터셋을 변경하여 사용 가능
	//request.setCharacterEncoding("utf-8");
	
	//전달값을 반환받아 저장
	String id=request.getParameter("id");
	//전달받은 비밀번호를 암호화 처리하여 저장
	String passwd=Utility.encrypt(request.getParameter("passwd"));
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile1")+"-"
		+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
	String zipcode=request.getParameter("zipcode");
	String address1=request.getParameter("address1");
	String address2=request.getParameter("address2");
	
	//MemberDTO 객체를 생성하여 전달값으로 필드값 변경
	MemberDTO member=new MemberDTO();
	member.setId(id);
	member.setPasswd(passwd);
	member.setName(name);
	member.setEmail(email);
	member.setMobile(mobile);
	member.setZipcode(zipcode);
	member.setAddress1(address1);
	member.setAddress2(address2);

	//회원정보를 전달받아 MEMBER 테이블에 삽입하는 DAO 클래스의 메소드 호출
	MemberDAO.getDAO().insertMember(member);
	
	//클라이언트에게 URL 주소 전달
	out.println("<script type='text/javascript'>");
	out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=member&work=member_login';");
	out.println("</script>");
%>
