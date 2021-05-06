<%@ page import="DB.MovieDB"%>
<%@ page import="DB.MovieVO"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="java.text.SimpleDateFormat"%> <!-- 날짜 함수를 사용하기 위한 포맷, 날짜를 원하는 형식으로 변환하려함 -->
<%@ page import="java.util.Date"%> <!-- 현재 시간을 받아오기 위해 사용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
            MovieDB db = new MovieDB();
            ArrayList<MovieVO> list = db.list(); // 인기작 검색과 마찬가지로 일정 조건 충족 시 해당 영화의 모든 정보를 가져오려함
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="main_exterior.css">
<style></style>
<title>Insert title here</title>
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
		<div class="thumb">
		<%
			for (int i = 0; i < list.size(); i++) {
				MovieVO bag2 = list.get(i);
				Date now = new Date(); // now 변수에 현재 시간을 받아옴. 'YYYY-MM-DD'형식(문자열)
				
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); // 여기를 DB에 있는 개봉일자로 쓴다.
																			  // Date 자료형과 일치시켜준다.
				Date getDate = format.parse(bag2.getBirth()); // DB에서 받아온 개봉일자를 Date 형식으로 변환
				long calDate = now.getTime() - getDate.getTime(); // getTime() : 1970년 1월 1일 0시 0분 0초부터 현재까지 시간을 밀리초(ms)
																  // 단위로 환산한 값을 숫자로 반환
																  // 현재시간으로부터 영화개봉일자의 차를 숫자값으로 반환
																  // 이 때, 숫자 단위가 크기 때문에 허용범위가 큰 long형 사용
				long calDateDays = calDate / (24*60*60*1000);	  // 컴퓨터 시간을 인간의 날짜로 표시하기 위해 (24시 * 60분 * 60초 * 1000밀리초)로 다시 나눠줌
				calDateDays = Math.abs(calDateDays); // 현재시간과 개봉일자의 차를 절대값으로 변환하여 자연수 범위로 출력 
				
				if (calDateDays <= 30) { // 현재 시간으로부터 30일 전 까지를 범위로 하여 최신영화로 제한
		%>
					<hr color=green>
					<dl class="lst_dsc">
					<dt class ="tit_t1">제목 | <%= bag2.getTitle()%></dt>
					<dt class ="tit_t1">평점 | <%= bag2.getRank()%></dt>	
					<dt class="tit_t2">개요 | <%= bag2.getGenre()%></dt>
					<dt class="tit_t3">금액 | <%= bag2.getFee()%></dt>
					<dt class="tit_t4">개봉일자 | <%= bag2.getBirth()%></dt>
					<dt class="tit_t6">줄거리 | <%= bag2.getStory()%></dt><br><br><br>

			<%} }%>
			</dl>
		</div>
	</div>
</body>
</html>