<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- books.jsp 문서를 AJAX 기능으로 요청하여 XML 형식의 문서로 응답 받아 태그로 변경하여
클라이언트에게 전달하는 JSP 문서 --%>
<%-- => XSL 문서를 이용하여 XML 형식의 데이타를 HTML 태그로 변환하여 응답 처리 --%>
<%-- => books.xsl 문서를 AJAX 기능으로 요청하여 XSL 문서를 응답받아 사용 --%>
<%-- AJAX 기능을 제공받기 위해 자바스크립트 모듈(ajax.js - 자바스트립트 객체) 사용 --%>
<%-- => 다수의 XMLHttpRequest 객체를 사용하여 요청과 응답 처리 - 다수의 웹프로그램의 동시 요청 가능 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
</head>
<body>
	<h1>교재목록</h1>
	<hr>
	<div id="books"></div>
	
	<script type="text/javascript">
	var xmlDoc=null;
	var xslDoc=null;
	
	function loadBooksXML() {
		//응답 결과를 제공받아 처리하는 콜백함수에는 XMLHttpRequest 객체를 저장하기 위한 
		//매개변수를 반드시 선언
		new xyz.itwill.Ajax("get", "books.jsp", null, function(xhr) {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					xmlDoc=xhr.responseXML;
					doXSLT();	
				} else {
					alert("에러코드 = "+xhr.status);	
				}
			}
		});
	}
	
	function loadBooksXSL() {
		new xyz.itwill.Ajax("get", "books.xsl", null, function(xhr) {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					xslDoc=xhr.responseXML;
					doXSLT();
				} else {
					alert("에러코드 = "+xhr.status);	
				}
			} 
		});
	}
	
	function doXSLT() {
		if(xmlDoc==null || xslDoc==null) return;
		//alert(xmlDoc+" : "+xslDoc);
		
		//XSLTProcessor 객체 생성 - XSLT를 이용하여 XML 문서를 변환하기 위한 기능을 제공하는 객체
		var xsltProcessor=new XSLTProcessor();
		
		//XSTLProcessor.importStylesheet(xslt) : XSLTProcessor 객체에 변환 관련 정보가 저장된
		//XMLDocument 객체(XSLT)를 저장하기 위한 메소드
		xsltProcessor.importStylesheet(xslDoc);
		
		//XSTLProcessor.transformToFragment(xml, document) : XML 문서를 전달받아 XSTLProcessor 객체에 
		//저장된 변환 관련 정보(XSLT)를 사용하여 document 객체의 자식 Element 객체로 반환하는 메소드
		var fragment=xsltProcessor.transformToFragment(xmlDoc, document);
		
		//반환받은 Element 객체를 특정 태그의 마지막 자식 태그로 추가하여 출력 처리
		document.getElementById("books").appendChild(fragment);
	}
	
	loadBooksXML();
	loadBooksXSL();
	</script>	
</body>
</html>
