<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- RSS 서비스를 제공하는 웹프로그램을 AJAX 기능으로 요청하여 처리결과를 응답받아
클라이언트에게 전달하는 JSP 문서 --%>
<%-- RSS(Really Simple Syndication 또는 RDF Site Summary) : 실시간으로 변경되는 정보를 삐르게
제공하기 위한 웹프로그램 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<h1>RSS Reader</h1>
	<hr>
	<div id="display"></div>
	
	<script type="text/javascript">
	$.ajax({
		type: "get",
		//문제점)현재 실행중인 웹프로그램과 동일 서버에 작성된 웹프로그램을 AJAX 기능을 사용하여 
		//요청과 응답 처리 가능하지만 다른 서버에 작성된 웹프로그램을 AJAX 기능을 사용하여
		//요청할 경우 에러(에러코드 : 0) 발생
		//url: "https://www.khan.co.kr/rss/rssdata/kh_entertainment.xml",
		
		//해결법)다른 서버에 작성된 웹프로그램은 프록시 프로그램을 사용하여 AJAX 기능으로
		//요청하여 실행결과를 응답받아 처리 가능 
		url: "rss_proxy.jsp",
		dateType: "xml",
		success: function(xmlDoc) {
			var channelTitle=$(xmlDoc).find("channel").children("title").text();
			
			var html="<h2>"+channelTitle+"</h2>";
			html+="<ul>";
			$(xmlDoc).find("item").each(function() {
				var title=$(this).find("title").text();
				var link=$(this).find("link").text();
				var date;
				if($(this).find("pubDate").length!=0) {
					date=$(this).find("pubDate").text();
				} else {
					date=$(this).find("dc\\:date").text();
				}
				html+="<li><a href='"+link+"'>"+title+"["+date+"]</a></li>";				
			});
			html+="</ul>";
			
			$("#display").html(html);
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
	</script>
</body>
</html>










