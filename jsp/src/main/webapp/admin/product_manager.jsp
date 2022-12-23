<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 카테고리를 전달받아 PRODUCT 테이블에 저장된 해당 카테고리의 모든 제품정보를 검색하여
클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 관리자만 요청 가능한 JSP 문서 --%>    
<%@include file="/security/admin_check.jspf" %>
<%
	//전달값을 반환받아 저장
	String category=request.getParameter("category");
	if(category==null) {//전달값이 없는 경우
		category="ALL";		
	}
	
	//카테고리를 전달받아 PRODUCT 테이블에 저장된 해당 카테고리의 모든 제품정보를 검색하여
	//반환하는 DAO 클래스의 메소드 호출
	
	
%>

   
<h1>제품관리</h1>