<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- csv_two.jsp 문서를 AJAX 기능으로 요청하여 CSV 형식의 데이타로 응답 받아 태그로 변경하여
클라이언트에게 전달하는 JSP 문서 --%> 
<%-- => CSV 형식의 데이타를 제공받아 HTML 태그로 변환하여 페이지의 요소 변경 - 파싱(Parsing) 처리 --%>
<%-- CSV(Comma Separated Values) : 콤마(,)를 사용하여 값을 구분하는 비구조적인 데이타 표현 방식 --%>   
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
		sendRequest("get", "csv_two.jsp", null, function() {
			if(xhr.readyState==4) {
				if(xhr.status==200) {
					//document.getElementById("newsContent").innerHTML=xhr.responseText;
					
					var csv=xhr.responseText;
					//행(뉴스)을 분리하여 반환되는 Array 객체를 변수에 저장
					
					var newsArray=csv.split("*");
					//alert(newsArray.length);
					
					var html="<ol>";
					for(i=0;i<newsArray.length;i++) {
						//열(제목과 언론사)을 분리하여 반환되는 Array 객체를 변수에 저장
						var news=newsArray[i].split("|");
						var title=news[0].trim();//Array 객체의 0번째 요소값 >> 제목
						var publishar=news[1].trim();//Array 객체의 1번째 요소값 >> 언론사
						html+="<li>"+title+"["+publishar+"]</li>";
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










