<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="page_error.jsp"%>
<%
	//String text="ABCDEFG";
	String text=null;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>page Directive - errorPage 속성</h1>
	<hr>
	<p>errorPage 속성에는 JSP 문서 실행시 에러(예외)가 발생될 경우 클라이언트에게 500 에러코드
	대신 에러페이지로 응답하기 위한 웹문서의 URL 주소를 속성값으로 설정 - 클라이언트의 URL 주소 미변경</p>
	<hr>
	<p>문자열의 문자갯수 = <%=text.length() %></p>
</body>
</html>