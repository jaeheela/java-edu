<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
<style type="text/css">
#header {
	border: 2px solid red;
	height: 200px;
	margin: 10px;
	padding: 10px;
	text-align: center;
}

#content {
	border: 2px solid green;
	min-height: 550px;
	margin: 10px;
	padding: 10px;
	
}
</style>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header"/>	
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>	
	</div>
</body>
</html>