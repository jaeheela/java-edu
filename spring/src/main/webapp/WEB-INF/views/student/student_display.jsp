<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SPRING</title>
</head>
<body>
	<h1 align="center">학생목록</h1>
	<table align="center" cellspacing="0" cellpadding="1" width="700">
		<tr align="right">
			<td>
				<input type="button" value="학생추가" onclick="location.href='student/add';">
			</td>
		</tr>
	</table>
	<table align="center" border="1" cellspacing="0" cellpadding="1" width="700">
		<tr bgcolor="yellow">
			<th width="100">학생번호</th>
			<th width="100">이름</th>
			<th width="150">전화번호</th>
			<th width="250">주소</th>
			<th width="100">생년월일</th>
		</tr>
		
		<tr align="center">
			<td colspan="7">검색된 학생정보가 없습니다.</td>
		</tr>		
		<tr align="center">
			<td width="100">1000</td>				
			<td width="100">홍길동</td>				
			<td width="150">010-1234-5678</td>				
			<td width="250">서울시 강남구</td>				
			<td width="100">2000-01-01</td>				
		</tr>	
	</table>
</body>
</html>
