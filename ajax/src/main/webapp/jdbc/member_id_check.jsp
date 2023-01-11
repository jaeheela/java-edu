<?xml version="1.0" encoding="utf-8"?>
<%@page import="xyz.itwill.dao.AjaxMemberDAO"%>
<%@page import="xyz.itwill.dto.AjaxMemberDTO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 아이디를 전달받아 AJAX_MEMBER 테이블에 저장된 기존 회원정보의 아이디와 비교하여 아이디
중복 검사 결과값을 XML 데이타로 응답하는 JSP 문서 --%>
<%
	String id=request.getParameter("id");

	if(id==null || id.equals("")) {
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}
	
	//아이디를 전달받아 AJAX_MEMBER 테이블에 저장된 해당 아이디의 회원정보를 검색하여 반환
	//하는 DAO 클래스의 메소드 호출
	// => 반환값 - null : 회원정보 미검색(아이디 사용 가능) 
	// => 반환값 - AjaxMemberDTO 객체  : 회원정보 검색(아이디 사용 불가능 - 중복)
	AjaxMemberDTO ajaxMember=AjaxMemberDAO.getDAO().selectAjaxMember(id);
%>
<result>
	<% if(ajaxMember==null) {//검색된 회원정보가 없는 경우 - 아이디 사용 가능 %>
	<code>possible</code>
	<% } else {//검색된 회원정보가 있는 경우 - 아이디 사용 불가능 %>
	<code>impossible</code>
	<% } %>
</result>