<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- member_xml_two.jsp 문서를 AJAX 기능으로 요청하여 회원목록을 XML 형식의 문서로 응답 받아
태그로 변경하여 클라이언트에게 전달하는 JSP 문서 --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/log.js"></script>
</head>
<body>
	<h1>회원목록</h1>
	<hr>
	<div id="log"></div>
	
	<script type="text/javascript">
	
	</script>
</body>
</html>