<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
	<h1>EL 내장객체 - Request Header</h1>
	<hr>
	<h3>EL 미사용</h3>
	<ul>
		<%-- request.getHeader(String name) : 리퀘스트 메세지의 머릿부에 저장된 값들중
		원하는 값을 이름을 이용하여 반환하는 메소드 --%>
		<li>현재 접속 서버 = <%=request.getHeader("host") %></li>
		<li>브라우저 종류 = <%=request.getHeader("user-Agent") %></li>
		<li>전달 가능한 문서 종류 = <%=request.getHeaders("accept").nextElement() %></li>
	</ul>
	<hr>
	<h3>EL 사용</h3>
	<ul>
		<%-- EL 표현식에서 header 내장객체 또는 headerValues 내장객체를 이용하여 리퀘스트 
		메세지의 머릿부에 저장된 값들중 원하는 값을 이름(맵키)으로 제공받아 출력 가능 --%>
		<li>현재 접속 서버 = ${header.host }</li>
		<li>브라우저 종류 = ${header["user-Agent"] }</li>
		<li>전달 가능한 문서 종류 = ${headerValues.accept[0] }</li>
	</ul>
</body>
</html>
