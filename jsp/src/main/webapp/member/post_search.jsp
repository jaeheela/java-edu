<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 사용자로부터 동이름을 입력받아 ZIP 테이블에 저장된 해당 동이름이 포함된 우편번호 관련 
정보를 검색하여 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => [기본주소]를 클릭한 경우 부모창의 입력태그(우편번호,기본주소)의 입력값 변경 --%>
<%
	//전달값을 반환받아 저장
	String dong=request.getParameter("dong");

	//동이름을 전달받아 ZIP 테이블에서 해당 동이름으로 시작되는 우편번호 관련 정보를 
	//검색하여 반환하는 DAO 클래스의 메소드 호출
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="search">
		<form name="postForm">
			동이름 : <input type="text" name="dong">
			<button type="button" id="searchBtn">주소검색</button>
		</form>
	</div>
	
	<script type="text/javascript">
	postForm.dong.focus();
	
	document.getElementById("searchBtn").onclick=function() {
		if(postForm.dong.value=="") {
			postForm.dong.focus();
			return;
		}
		
		postForm.submit();
	}
	</script>
</body>
</html>








