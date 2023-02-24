<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- TilesView 관련 기능을 태그로 제공받기 위해 tags-tiles 태그 라이브러리을 JSP 문서에 포함 --%>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
<style type="text/css">
#header {
	border: 2px solid red;
	height: 150px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content {
	border: 2px solid green;
	min-height: 450px;
	margin: 10px;
	padding: 10px;
	
}

#footer {
	border: 2px solid blue;
	height: 150px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}
</style>
</head>
<body>
	<div id="header">
		<%-- insertAttribute 태그 : TilesView의 환경설정파일에서 put-attribute 엘리먼트로
		제공된 JSP 문서의 실행결과를 제공받아 삽입하기 위한 태그 --%>
		<!-- name 속성 : put-attribute 엘리먼트의 식별자를 속성값으로 설정 -->
		<tiles:insertAttribute name="header"/>	
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>	
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>	
	</div>
</body>
</html>