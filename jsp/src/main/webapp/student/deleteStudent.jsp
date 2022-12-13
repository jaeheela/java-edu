<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 학생목록 출력페이지(displayStudent.jsp)에서 전달받은 학생번호를 반환받아 STUDENT 테이블에
저장된 해당 학생번호의 학생정보를 삭제하고 학생목록 출력페이지(displayStudent.jsp)로 이동하는 
URL 주소를 전달하는 JSP 문서 --%>    
<%
	//비정상적인 요청에 대한 응답 처리
	if(request.getParameter("no")==null) {//전달값(학생번호)이 없는 경우
		response.sendError(HttpServletResponse.SC_BAD_REQUEST);
		return;
	}


%>