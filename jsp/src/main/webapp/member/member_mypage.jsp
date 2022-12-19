<%@page import="xyz.itwill.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로그인 사용자의 정보를 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 로그인 사용자만 요청 가능한 JSP 문서 --%>
<%--
	//세션에 저장된 권한 관련 정보를 반환받아 저장
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");

	//비로그인 사용자가 JSP 문서를 요청한 경우 - 비정상적인 요청에 대한 응답 처리
	if(loginMember==null) {
		out.println("<script type='text/javascript'>");
		out.println("location.href='"+request.getContextPath()+"/index.jsp?workgroup=error&work=error_400';");
		out.println("</script>");
		return;
	}
--%>
<%-- 권한 관련 중복코드를 JSPF 파일로 작성하여 include 디렉티브를 이용하여 포함하여 사용 --%>
<%-- => 코드의 중복을 최소화 하여 생산성을 높이고 유지보수의 효율성 증가 --%>
<%@include file="/security/login_check.jspf" %>    
<h1>내정보</h1>
<div id="detail">
	<p>아이디 = <%=loginMember.getId() %></p>
	<p>이름 = <%=loginMember.getName() %></p>
	<p>이메일 = <%=loginMember.getEmail() %></p>
	<p>전화번호 = <%=loginMember.getMobile() %></p>
	<p>주소 = [<%=loginMember.getZipcode() %>]<%=loginMember.getAddress1() %> <%=loginMember.getAddress2() %></p>
	<p>회원가입날짜 = <%=loginMember.getJoinDate() %></p>
	<p>마지막 로그인 로그인 날짜 = <%=loginMember.getLastLogin() %></p>
</div>


















