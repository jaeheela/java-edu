<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SPRING</title>
</head>
<body>
	<h1>파일 업로드</h1>
	<hr>
	<%-- 파일 업로드 : 클라이언트로부터 파일을 입력받아 서버 디렉토리에 저장하는 기능 --%>
	<%-- => 파일을 입력받아 전달하기 위해 form 태그를 사용하며 요청방식(method 속성)은
	반드시 [post]로 설정하고 전달형태(enctype 속성)은 [mulitpart/form-data]로 설정 --%>
	<form action="upload" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>업로더 이름</td>
			<td><input type="text" name="uploaderName"></td>
		</tr>
		<tr>
			<td>업로드 파일</td>
			<td><input type="file" name="uploadFile"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="submit">업로드</button></td>
		</tr>
	</table>
	</form>
</body>
</html>
