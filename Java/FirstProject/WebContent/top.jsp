<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
session.getAttribute("id");
String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>

<html>
<head></head>
<meta charset="UTF-8">
<style>
.center{ /* 사이트 이름 가운데 정렬, .클래스명 : 'center' 이름을 가진 클래스 적용 */
	text-align: center; 
	font-size: 50px;
}
input {
	width: 700px; /* 검색창 가로너비 조절 */
	height: 30px; /* 검색창 세로높이 조절 */
	font-size: 20px;
	margin: 0 0 0 550px; /* 왼쪽 여백을 주어 가운데에 위치하도록 조정 */
}

button {
	height: 38px; /* 버튼 세로높이 조절, 너비는 글자 크기에 맞게 자동 조정 */
	font-size: 20px; 
}
</style>
</head>
<body>
	<h1 class="center">정통집</h1>
	<form action="search.jsp"> <!-- 직접 검색 기능 -->
		<input name="title"> <!-- 영화 제목 검색 기능을 이용, search.jsp에서 해당 영화 제목과 일치하면 DB에 저장된 영화정보 read -->
		<button type="submit">검색</button>
	</form>
</body>
</html>