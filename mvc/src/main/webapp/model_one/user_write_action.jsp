<%@page import="xyz.itwill.dao.UserinfoModelOneDAO"%>
<%@page import="xyz.itwill.dto.UserinfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 회원정보를 전달받아 USERINFO 테이블에 삽입하고 로그인정보 입력페이지(user_login.jsp)로
이동하기 위한 URL 주소를 전달하는 JSP 문서 --%>    
<%
	if(request.getMethod().equals("GET")) {
		response.sendRedirect("user_error.jsp");
		return;
	}

	request.setCharacterEncoding("utf-8");
	
	String userid=request.getParameter("userid");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	int status=Integer.parseInt(request.getParameter("status"));
	
	UserinfoDTO userinfo=new UserinfoDTO();
	userinfo.setUserid(userid);
	userinfo.setPassword(password);
	userinfo.setName(name);
	userinfo.setEmail(email);
	userinfo.setStatus(status);

	UserinfoModelOneDAO.getDAO().insertUserinfo(userinfo);
	
	response.sendRedirect("user_login.jsp");
%>
