<%@ page import="DB.MovieDB"%>
<%@ page import="DB.MovieVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
session.getAttribute("id");
String id = (String)session.getAttribute("id");
%>

<style>
a {
	margin: 0 40px 20px 40px; /* 각 버튼 간격 조정, (위, 오른쪽, 아래, 왼쪽) */
	font-size: 17px;
}
</style>


<ul>
	<a href="movie_main.jsp"><button type="button">홈</button></a>
	<a href="popular.jsp"><button type="button">인기작</button></a>
	<a href="new.jsp"><button type="button">신작</button></a>
</ul>