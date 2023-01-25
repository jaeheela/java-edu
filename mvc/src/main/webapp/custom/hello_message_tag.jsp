<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="simple" uri="http://www.itwill.xyz/mvc/custom" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC</title>
</head>
<body>
	<h1>Custom Tag - AnyAttribute And NoBody</h1>
	<hr>
	<%-- 커스텀 태그의 속성을 생략한 경우 태그 클래스의 생성자에서 설정한 기본값을 속성값으로 사용 --%>
	<simple:helloMessage/>
</body>
</html>