<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력페이지(useBean_form.jsp)에서 전달된 값을 반환받아 내장객체의 속성값으로 저장하고
출력페이지(useBean_display.jsp)로 포워드 이동 처리하는 JSP 문서 --%>
<%
	//비정상적인 요청에 대한 처리
	if(request.getMethod().equals("GET")) {
		response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		return;
	}	

	//POST 방식으로 요청하여 전달된 값에 대한 캐릭터셋 변경
	request.setCharacterEncoding("utf-8");
%>
<%-- useBean ActionTag : JSP 문서에 객체를 제공하기 위한 태그 --%>
<%-- 형식)<jsp:useBean id="식별자" class="클래스" scope="사용범위"/> --%>
<%-- => 내장객체에 저장된 속성값을 객체로 반환받아 제공하거나 속성값이 없으면 객체를 생성하여 
내장객체의 속성값으로 저장 후 제공 --%> 
<%-- id 속성(필수) : useBean 태그로 제공될 객체를 구분하기 위한 식별자를 속성값으로 설정 --%>
<%-- => 내장객체에 저장된 속성값을 구분하기 위한 속성명을 표현하여 속성값을 제공받아 사용 --%>     
<%-- class 속성(필수) : useBean 태그로 제공될 객체의 자료형을 속성값으로 설정 --%>
<%-- scope 속성(선택) : useBean 태그로 제공될 객체의 사용범위를 속성값으로 설정 --%>
<%-- => page, request, session, application 중 하나를 속성값으로 설정 --%>
<%-- => scope 속성이 생략된 경우 page 속성값을 기본값으로 설정하여 사용 --%>
<jsp:useBean id="hewon" class="xyz.itwill.bean.Hewon" scope="request"/>
<%--
 	Hewon hewon=new Hewon();
	request.setAttribute("hewon", hewon);
 --%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>




