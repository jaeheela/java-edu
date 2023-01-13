<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- welcome_two.jsp 문서를 AJAX 기능으로 요청하여 처리결과를 HTML 문서로 응답받아 태그내용을
변경하여 클라이언트에게 전달하는 JSP 문서 - jQuery 라이브러리의 AJAX 모듈 사용 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<h1>jQuery AJAX</h1>
	<hr>
	<label for="name">이름 입력</label>
	<input type="text" id="name">
	<button type="button" id="btn">전송</button>
	<hr>
	<div id="message"></div>
	
	<script type="text/javascript">
	$("#btn").click(function() {
		var name=$("#name").val();
		if(name=="") {
			$("#message").text("이름을 입력해 주세요.");
			return;
		}		
		$("#name").val("");
		
		//$.ajax(setting) : AJAX 기능을 사용하여 요청과 응답을 처리하기 위한 메소드
		// => 매개변수에 AJAX 기능을 구현하기 위한 정보를 Object 객체로 전달
		// => 매개변수에 전달되는 Object 객체의 요소의 이름은 정해져 있으며 값 또는 함수로 요소값 표현
		// => $.get() 또는 $.post() 메소드를 사용하여 AJAX 기능 구현 가능
		/*
		$.ajax({
			type: "post",//요청방식 설정
			url: "welcome_two.jsp",//요청 웹프로그램의 URL 주소 설정
			data: "name="+name,//요청 웹프로그램에 값을 전달하기 위한 이름과 값을 설정
			dataType: "html",//응답결과에 대한 문서형식 설정 - 요소값 : text, html, script, xml, json 등
			//정상적인 응답결과(200)를 제공받아 처리하기 위한 함수의 등록 설정
			// => 처리함수의 매개변수에는 응답결과가 자동으로 저장되어 제공
			success: function(result) {
				$("#message").html(result);
			},
			//비정상적인 응답결과(4XX or 5XX)를 제공받아 처리하기 위한 함수의 등록 설정
			// => 처리함수의 매개변수에는 XMLHttpRequest 객체가 자동으로 저장되어 제공
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
		*/
		
		//$.post(url[,data][,success][,dataType]) : AJAX 기능을 사용하여 웹프로그램을 POST
		//방식으로 요청하여 실행결과를 응답받아 처리하는 메소드
		$.post("welcome_two.jsp", "name="+name, function(result) {
			$("#message").html(result);
		}, "html");
	});
	</script>
</body>
</html>