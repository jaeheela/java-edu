<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- xml_two.jsp 문서를 AJAX 기능으로 요청하여 XML 형식의 문서로 응답 받아 태그로 변경하여
클라이언트에게 전달하는 JSP 문서 --%> 
<%-- => XML 형식의 데이타를 제공받아 HTML 태그로 변환하여 페이지의 요소 변경 - 파싱(Parsing) 처리 --%>
<%-- XML(eXtensible Markup Language) : 엘리먼트(태그)를 사용하여 값을 구분하는 구조적인 데이타 표현 방식 --%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/xhr.js"></script>
<style type="text/css">
#newsList {
	width: 50%;
	margin: 0 auto;
}

#newsHead {
	padding: 5px;
	text-align: center;
	font-size: x-large;
	border: 2px solid black;
}

#newsContent {
	padding: 5px;
	font-size: medium;
	border: 2px dashed black;
	display: none;
}
</style>
</head>
<body>
	<h1>헤드라인 뉴스</h1>
	<hr>
	<div id="newsList">
		<div id="newsHead">헤드라인 뉴스</div>
		<div id="newsContent">
			<%-- 
			<ol>
				<li>뉴스제목-1[언론사-1]</li>
				<li>뉴스제목-2[언론사-2]</li>
				<li>뉴스제목-3[언론사-3]</li>
				<li>뉴스제목-4[언론사-4]</li>
				<li>뉴스제목-5[언론사-5]</li>
			</ol>
			--%>
		</div>
	</div>
	
	<script type="text/javascript">
	document.getElementById("newsList").onmouseover=function() {
		//AJAX 기능을 사용하여 웹프로그램을 요청하여 응답결과를 제공받아 처리
		sendRequest("get", "xml_two.jsp", null, function() {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					//XMLHttpRequest 객체의 responseXML 속성(Property)으로 요청에 대한
					//응답 결과를 XML 문서로 제공받아 변수에 저장   
					var xmlDoc=xhr.responseXML;					
					//alert(xmlDoc);//[object XMLDocument]
					
					//Document.getElementsByTagName(tagName) : Document 객체(Element 객체)에서
					//태그명을 이용하여 태그를 검색해 검색된 태그에 대한 Element 객체들이 저장된
					//NodeList 객체(HTMLCollection 객체)를 반환하는 메소드
					var newsList=xmlDoc.getElementsByTagName("news");
					//alert(newsList);//[object HTMLCollection]
					//alert(newsList.length);
					
					var html="<ol>";
					for(i=0;i<newsList.length;i++) {
						//NodeList.item(index) : NodeList 객체에서 첨자(Index) 위치의 Element 객체를 반환하는 메소드 
						var news=newsList.item(i);
						//alert(news);//[object Element]
						
						var title=news.getElementsByTagName("title").item(0).firstChild.nodeValue;
						var publisher=news.getElementsByTagName("publisher").item(0).firstChild.nodeValue;
						
						html+="<li>"+title+"["+publisher+"]</li>";
					}
					html+="</ol>";
					
					document.getElementById("newsContent").innerHTML=html;
				} else {
					alert("에러코드 = "+xhr.status);
				}
			}
		});

		document.getElementById("newsContent").style="display: block;";
	}
	
	document.getElementById("newsList").onmouseout=function() {
		document.getElementById("newsContent").style="display: none;";
	}
	</script>
</body>
</html>