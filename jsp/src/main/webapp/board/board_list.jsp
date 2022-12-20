<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="xyz.itwill.dto.MemberDTO"%>
<%@page import="xyz.itwill.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="xyz.itwill.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- BOARD 테이블에 저장된 게시글을 검색하여 게시글 목록을 클라이언트에게 전달하는 JSP 문서 --%>
<%-- => 게시글 목록을 페이지로 구분 검색하여 응답 처리 - 페이징 처리 --%>    
<%
	//페이징 처리 관련 전달값(요청 페이지 번호)를 반환받아 저장
	// => 요청 페이지 번호에 대한 전달값이 없는 경우 첫번째 페이지의 게시글 목록을 검색하여 응답
	int pageNum=1;
	if(request.getParameter("pageNum")!=null) {//전달값이 있는 경우
		pageNum=Integer.parseInt(request.getParameter("pageNum"));
	}
	
	//하나의 페이지에 검색되어 출력될 게시글의 갯수 설정 - 전달값을 반환받아 저장 가능
	int pageSize=10;
	
	//BOARD 테이블에 저장된 전체 게시글의 갯수를 검색하여 반환하는 DAO 클래스의 메소드 호출
	// => 검색 기능 미구현시 호출하는 메소드
	int totalBoard=BoardDAO.getDAO().selectBoardCount();
	            
	//전체 페이지의 갯수를 계산하여 저장
	//int totalPage=totalBoard/pageSize+totalBoard%pageSize==0?0:1;
	int totalPage=(int)Math.ceil((double)totalBoard/pageSize);
	  
	//요청 페이지 번호에 대한 검증
	if(pageNum<=0 || pageNum>totalPage) {//비정상적인 요청 페이지 번호인 경우
		pageNum=1;//첫번째 페이지의 게시글 목록이 검색되어 응답되도록 요청 페이지 번호 변경
	}
	
	//요청 페이지 번호에 대한 시작 게시글의 행번호를 계산하여 저장
	//ex) 1Page : 1, 2Page : 11, 3Page : 21, 4Page : 31, ...
	int startRow=(pageNum-1)*pageSize+1;
                     
	//요청 페이지 번호에 대한 종료 게시글의 행번호를 계산하여 저장
	//ex) 1Page : 10, 2Page : 20, 3Page : 30, 4Page : 40, ...
	int endRow=pageNum*pageSize;
	
	//마지막 페이지에 대한 종료 게시글의 행번호를 검색 게시글의 갯수로 변경
	if(endRow>totalBoard) {
		endRow=totalBoard;
	}
	
	//요청 페이지에 대한 시작 게시글의 행번호와 종료 게시글의 행번호를 전달받아 BAORD 테이블에
	//저장된 게시글에서 해당 범위의 게시글만을 검색하여 반환하는 DAO 클래스의 메소드 호출
	// => 검색 기능 미구현시 호출하는 메소드
	List<BoardDTO> boardList=BoardDAO.getDAO().selectBoardList(startRow, endRow);
	
	//세션에 저장된 권한 관련 정보를 반환받아 저장
	// => 로그인 사용자에게만 글쓰기 권한 제공
	// => 비밀 게시글인 경우 로그인 사용자가 게시글 작성자이거나 관리자인 경우에만 접근 권한 제공
	MemberDTO loginMember=(MemberDTO)session.getAttribute("loginMember");
	
	//서버 시스템의 현재 날짜를 반환받아 저장
	// => 게시글의 작성날짜를 현재 날짜와 비교하여 구분 출력
	String currentDate=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	
	//요청 페이지에 검색되어 출력될 게시글의 출력번호에 대한 시작값을 계산하여 저장
	//ex)전체 게시글의 갯수 : 91 >> 1Page : 91~82, 2Page : 81~72, 3Page : 71~62,...
	int pritnNum=totalBoard-(pageNum-1)*pageSize;
%>                      
<style type="text/css">
#board_list {
	width: 1000px;
	margin: 0 auto;
	text-align: center;
}

#board_title {
	font-size: 1.2em;
	font-weight: bold;
}

table {
	margin: 5px auto;
	border: 1px solid black;
	border-collapse: collapse;
}

th {
	border: 1px solid black;
	background-color: black;
	color: white;
}

td {
	border: 1px solid black;
	text-align: center;
}

.subject {
	text-align: left;
	padding: 5px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

#board_list a:hover {
	text-decoration: none;
	color: green;
}

.secret, .remove {
	background-color: black;
	color: white;
	font-size: 14px;
	border: 1px solid black;
	border-radius: 4px;
}
</style>

<div id="board_list">
	<div id="board_title">게시글 목록(게시글 갯수 : <%=totalBoard %>)</div>
</div>
















