<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- json_two.jsp 문서를 AJAX 기능으로 요청하여 JSON 형식의 문서로 응답 받아 태그로 변경하여
클라이언트에게 전달하는 JSP 문서 --%> 
<%-- => JSON 형식의 데이타를 제공받아 HTML 태그로 변환하여 페이지의 요소 변경 - 파싱(Parsing) 처리 --%>
<%-- JSON(JavaScript Object Notation) : 자바스트립트로 객체를 표현하는 방법을 사용하여
값을 구분하는 구조적인 데이타 표현 방식 --%>   
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
		sendRequest("get", "json_two.jsp", null, function() {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					//eval(text) : 문자값을 전달받아 자바스크립트 명령으로 실행하는 함수
					// => 문자값을 전달받아 자바스크립트 객체로 변환하기 위해 () 연산자 추가
					//var result=eval("("+xhr.responseText+")");
					
					//JSON.parse(json) : JSON 형식으로 표현된 데이타를 자바스크립트 객체로 변환하여 반환하는 메소드
					var result=JSON.parse(xhr.responseText);
					//alert(result);//[object Array]
					
					var html="<ol>";
					for(i=0;i<result.length;i++) {
						var title=result[i].title;
						var publisher=result[i].publisher;
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