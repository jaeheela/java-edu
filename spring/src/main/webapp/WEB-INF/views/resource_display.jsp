<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
<link href="<c:url value="/css/style.css"/>" type="text/css" rel="stylesheet">
</head>
<body>
	<h1 class="text">리소스 파일</h1>
	<hr>
	<%-- 리소스 파일(Resource File) : 클라이언트가 웹문서(HTML 문서)를 해석하여 실행하기 
	위해 필요한	정보를 제공하는 서버에 저장된 파일 --%>
	<%-- => CSS 파일, JavaScript Source 파일, 멀티미디어 파일 등 --%>
	<%-- => 리소스 파일을 WEB-INF 폴더에 저장할 경우 클라이언트는 리소스 파일 요청 불가능  --%>
	<%-- WEB-INF 폴더 : 웹서버에서 실행되는 프로그램(서블릿)에서만 접근 가능한 폴더 - 클라이언트에게는 은닉화 처리 --%>
	
	<%-- SpringMvc 프로그램에서는 클라이언트의 모든 요청을 Front Controller를 이용하여 처리되도록 설정 --%>
	<%-- 문제점)클라이언트가 서버의 리소스 파일을 요청할 경우 Front Controller가 요청을 받아 리소스 
	파일의 요청 URL 주소와 매핑된 요청 처리 메소드를 검색하지만 없으므로 404 에러코드 발생 --%>
	<%-- => Front Controller을 특정 확장자로 페이지를 요청하는 경우 제외 --%>
	<%-- 해결법)클라이언트가 리소스 파일을 요청한 경우 Front Controller가 요청 처리 메소드를 
	호출하지 않고 직접 응답되도록 Spring Bean Configuration File 설정 - servlet-context.xml --%>
	
	<%-- 리소스 파일을 상대경로로 표현하여 처리한 경우 페이지의 요청 URL 주소 경로와 리소스 
	파일의 경로가 다른 경우 404 에러코드 발생 - 리소스 파일은 절대경로로 표현하는 것을 권장 --%>
	<%-- <img src="resources/Koala.jpg" width="200"> --%>
	<img src="images/Koala.jpg" width="200">
	
	<%-- 컨텍스트 이름이 변경될 경우 컨텍스트 경로가 변경되어 404 에러 코드 발생 --%>
	<%-- => 컨텍스트 경로는 직접 지정하지 않고 객체로 제공받아 사용 --%>
	<img src="/spring/images/Koala.jpg" width="200">
	
	<%-- 컨텍스트 경로를 EL의 pageContext 내장객체로 제공받아 사용 --%>
	<img src="${pageContext.request.contextPath }/images/Koala.jpg" width="200">

	<%-- 컨텍스트 경로를 Core 태그 라이브러리의 URL 태그로 제공받아 사용 --%>
	<img src="<c:url value="/images/Koala.jpg"/>" width="200">

	<%-- 컨텍스트 경로를 Spring	태그 라이브러리의 URL 태그로 제공받아 사용 --%>
	<img src="<spring:url value="/images/Koala.jpg"/>" width="200">
</body>
</html>
