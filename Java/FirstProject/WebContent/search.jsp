<%@page import="java.util.NoSuchElementException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page import="DB.MovieDB"%>
<%@ page import="DB.MovieVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
		session.getAttribute("id"); // 로그인 id 세션 유지
		
        MovieDB db = new MovieDB();

        String title = request.getParameter("title");
        ArrayList<MovieVO> Movielist = db.Movielist(title);
        // 영화 정보가 저장된 DB에서 영화 제목을 검색해서 해당 입력 단어가 포함된 영화의 정보 read
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
	<div id="total">
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
			<jsp:include page="top3.jsp"></jsp:include> <!-- 영화 검색 이후에도 메인페이지 틀 유지 -->
		</div>
		<%if (title != "") {
		//int count = 0;%>
			<%for (int i = 0; i < Movielist.size(); i++) { /* DB에서 각각의 영화 정보를 확인 */
				MovieVO bag = Movielist.get(i); /* 각 영화의 정보를 행 단위로 묶음 */
					
				boolean test = bag.getTitle().contains(title);
			%>
				<div class="thumb"> <!-- 검색했을 때 해당 영화 제목이 DB 내 존재할 시 해당 영화의 나머지 정보 구현, 없을 시 null -->
					<%= bag.getTitle()%>
				</div>
				<dl class="lst_dsc">
					<dt class="tit">
						<dt class ="tit_t1">평점 | <%= bag.getRank()%></dt>	
						<dt class="tit_t2">개요 | <%= bag.getGenre()%></dt>
						<dt class="tit_t3">금액 | <%= bag.getFee()%></dt>
						<dt class="tit_t4">줄거리 | <%= bag.getStory()%></dt>
						<br><br><br>
				</dl>
				<%-- <%if (test != true) {
					count++;%>
					<%System.out.println(count); %>
				<%} %>
			<%} %> --%>
		<%-- <%if (count >= 1) {%>
			<div class="center"><br><br><br>검색 결과가 존재하지 않습니다.</div>
		<%} %>	 --%>
			
		<%}}else {%>
			<div class="center"><br><br><br>검색 결과가 존재하지 않습니다.</div>
		<%} %>
	</div>
</body>
</html>