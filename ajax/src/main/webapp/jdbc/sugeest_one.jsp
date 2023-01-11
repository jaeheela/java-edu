<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 검색어를 입력받아 검색어가 포함된 제시어를 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 검색어가 입력될 경우 suggest_two.jsp 문서를 AJAX 기능으로 요청하여 검색어가 포함된
제시어 관련 정보를 XML 문서로 응답받아 출력되도록 처리 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<style type="text/css">
#keyword {
	position: absolute;
	top: 100px;
	left: 10px;
	width: 300px;
	font-size: 16px;
}

#suggest {
	position: absolute;
	top: 120px;
	left: 10px;
	width: 300px;
	border: 1px solid black;
	cursor: pointer;
	font-size: 16px;
	z-index: 999;
	background: rgba(255,255,255,1);
	display: none;	
}

#choice {
	position: absolute; 
	top: 150px;
	left: 10px;	
}
</style>
</head>
<body>
	<h1>제시어 기능</h1>
	<hr>
	<div>
		<%-- 검색어를 입력받기 위한 태그 --%>
		<input type="text" id="keyword">
		
		<%-- 제시어를 제공받아 출력하기 위한 태그 --%>
		<div id="suggest">
			<div id="suggestList"></div>
		</div>
		
		<%-- 선택된 제시어 관련 정보를 출력하기 위한 태그 --%>
		<div id="choice"></div>
	</div>
</body>
</html>











