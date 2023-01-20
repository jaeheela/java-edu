<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 사용자 입력값을 전달받아 클라이언트에게 전달하는 JSP 문서 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
	<h1>EL 내장객체 - Request Parameter</h1>
	<hr>
	<h3>EL 미사용</h3>
	<ul>
		<li>이름 = <%=request.getParameter("name") %></li>
		<li>주소 = <%=request.getParameter("address") %></li>
	</ul>
</body>
</html>