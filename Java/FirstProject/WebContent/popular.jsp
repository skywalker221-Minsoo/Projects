<%@ page import="DB.MovieDB"%>
<%@ page import="DB.MovieVO"%>
<%@ page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MovieDB db = new MovieDB();
	ArrayList<MovieVO> list = db.list(); // ArrayList를 이용해서 일정 조건 충족 시 해당 영화 나머지 정보 출력
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main_exterior.css">
</head>
<body>
	<div id="center">
		<div id="top">
			<!-- 사이트 이름 및 검색 탭 -->
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<!-- 영화 선택 탭 -->
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="top3">
			<!-- 개인정보 및 고객센터 탭 -->
			<jsp:include page="top3.jsp"></jsp:include>
		</div>
		<div id="center">

			<%
			for (int i = 0; i < list.size(); i++) { /* DB에서 각각의 영화 정보를 확인 */ 
				MovieVO bag = list.get(i); /* 각 영화의 정보를 행 단위로 묶음 */
				double rank = Double.parseDouble(bag.getRank()); /* 문자열로 저장되어 있는 평점을 실수형으로 변환 */
				if (rank >= 9.0) { /* 실수로 변환된 평점을 비교. 9.0 이상이면 해당 영화의 나머지 정보 출력 */
			%>
					<hr color=cyan>
					<dl class="lst_dsc">
					<dt class ="tit_t1">제목 | <%= bag.getTitle()%></dt>
					<dt class ="tit_t2">평점 | <%= bag.getRank()%></dt>	
					<dt class="tit_t3">개요 | <%= bag.getGenre()%></dt>
					<dt class="tit_t4">금액 | <%= bag.getFee()%></dt>
					<dt class="tit_t5">개봉일자 | <%= bag.getBirth()%></dt>
					<dt class="tit_t6">줄거리 | <%= bag.getStory()%></dt><br><br><br>
				<%} %>
			<%}	%>
		</div>
	</div>
</body>
</html>