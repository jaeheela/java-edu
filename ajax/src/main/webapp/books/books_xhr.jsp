<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- books.jsp 문서를 AJAX 기능으로 요청하여 XML 형식의 문서로 응답 받아 태그로 변경하여
클라이언트에게 전달하는 JSP 문서 --%>
<%-- => XSL 문서를 이용하여 XML 형식의 데이타를 HTML 태그로 변환하여 응답 처리 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/xhr.js"></script>
</head>
<body>
	<h1>교재목록</h1>
	<hr>
	<div id="books"></div>
	
	<script type="text/javascript">
	var xmlDoc=null;//XML 데이타를 저장하기 위한 전역변수
	
	//books.jsp 문서를 AJAX 기능으로 요청하여 XML 문서로 응답받은 결과를 전역변수에 저장하는 함수
	function loadBooksXML() {
		sendRequest("get", "books.jsp", null, function() {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					xmlDoc=xhr.responseXML;
				} else {
					alert("에러코드 = "+xhr.status);
				}
			}
		});
	}
	
	loadBooksXML();
	</script>
</body>
</html>







