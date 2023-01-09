<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<style type="text/css">
#display {
	width: 50%;
	padding: 5px;
	margin: 10px;
	font-size: 30px;
	border: 1px solid red;	
}
</style>
</head>
<body>
	<h1>AJAX - 값 전달</h1>
	<hr>
	<div id="display">요청 웹프로그램에 대한 실행 결과 출력</div>
	<div>
		이름 : <input type="text" id="name">
		<button type="button" id="getBtn">GET 방식의 요청</button>
		<button type="button" id="postBtn">POST 방식의 요청</button>
	</div>
	
	<script type="text/javascript">
	var xhr=null;
	
	function getXMLHtttpRequest() {
		if(window.ActiveXObject) {
			try {
				return new ActiveXObject("msxml2.XMLHTTP");
			} catch (e) {
				try {
					return new ActiveXObject("MicrosoftXML.HTTP");
				} catch (e) {
					return null;
				}
			}
		} else if(window.XMLHttpRequest) {
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}
	
	//[GET 방식의 요청] 태그를 클릭한 경우 호출되는 이벤트 처리 함수 등록
	document.getElementById("getBtn").onclick=function() {
		//입력태그의 입력값을 반환받아 저장
		var name=document.getElementById("name").value;
		
		//입력값 검증
		if(name=="") {
			document.getElementById("display").innerHTML="이름을 입력해 주세요.";
			return;
		}
		
		//입력태그 초기화
		document.getElementById("name").value="";
		
		xhr=getXMLHtttpRequest();
		xhr.onreadystatechange=viewMessage;
	}
	
	//요청 웹프로그램의 응답결과를 제공받아 페이지의 요소를 변경하는 이벤트 처리 함수 
	function viewMessage() {
		if(xhr.readyState==4) {
			if(xhr.status==200) {
				document.getElementById("display").innerHTML=xhr.responseText;
			} else {
				alert("에러코드 = "+xhr.status);
			}
		}
	}
	</script>
</body>
</html>
