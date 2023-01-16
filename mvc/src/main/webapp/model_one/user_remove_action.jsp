<%@page import="xyz.itwill.dao.UserinfoModelOneDAO"%>
<%@page import="xyz.itwill.dto.UserinfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 아이디를 전달받아 USERINFO 테이블에 저장된 해당 아이디의 회원정보를 삭제하고 회원목록 
출력페이지(user_list.jsp)로 이동하는 URL 주소를 전달하는 JSP 문서 - 관리자만 요청 가능한 페이지 --%>
<%-- => 관리자가 자신의 계정을 삭제한 경우 로그아웃 처리페이지(user_logout_action.jsp)로 이동 --%>    
<%
	UserinfoDTO loginUserinfo=(UserinfoDTO)session.getAttribute("loginUserinfo");
	//비로그인 사용자이거나 로그인 사용자가 관리자가 아닌 경우 - 비정상적인 요청
	if(loginUserinfo==null || loginUserinfo.getStatus()!=9) {
		response.sendRedirect("user_error.jsp");
		return;		
	}
	
	if(request.getParameter("userid")==null) {//전달값이 없는 경우
		response.sendRedirect("user_error.jsp");
		return;
	}
	
	String userid=request.getParameter("userid");
	
	UserinfoModelOneDAO.getDAO().deleteUserinfo(userid);
	
	//로그인 사용자의 아이디와 삭제된 사용자의 아이디가 같은 경우
	if(loginUserinfo.getUserid().equals(userid)) {//관리자가 자신의 계정을 삭제한 경우
		response.sendRedirect("user_logout_action.jsp");
	} else {
		response.sendRedirect("user_list.jsp");
	}
%>
