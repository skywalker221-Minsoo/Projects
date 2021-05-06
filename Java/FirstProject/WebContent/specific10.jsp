<%@ page import="DB.MemberDB"%>
<%@ page import="DB.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//HttpServletRequest request2 = new HttpServletRequest();
	session.getAttribute("id");
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main_exterior.css">
<style></style>
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
			<jsp:include page="top3.jsp"></jsp:include>
		</div>
		<div id="content">
			<div class="article">
				<div class="obj_section">
					<div class="lst_wrap">
						<ul class="lst_detail_t1">
							<li>
								<div class="thumb">
									<a href="specific10.jsp">
									<img src="https://movie-phinf.pstatic.net/20210107_98/1610010371111nd2e9_JPEG/movie_image.jpg?type=m99_141_2"
										alt="드림빌더"></a>
								</div>
								<dl class="lst_dsc">
									<dt class="tit">
										<span class="ico_rating_all">드림빌더</span>
									</dt>
									<dd>
										<dl class="info_txt1">
											<span class="ico_rating_all">전체 관람가</span>
											<dt class="tit_t1">평점 | 
												<span class="st_off"><span class="st_on" style="width: 86.7%"></span></span>
												<span class="num">8.67</span>
											</dt>
											<dt class="tit_t2">개요 | 
												<span class="link_txt">애니메이션, 모험, 가족, 판타지</span>
												<span class="split">|</span> 80분 <span class="split">|</span> 2021.02.10 개봉
											</dt>
											<dt class="tit_t3">감독 | 
												<span class="link_txt">킴 하겐 젠슨</span>
											</dt>
											<dt class="tit_t4">출연 | 
												<span class="link_txt">
												</span>
											</dt>
										</dl>
									</dd>
								<dd class="info_t5">
									<div class="btn_area">
										<iframe width="560" height="315" src="https://www.youtube.com/embed/e89AAWYpGS8" frameborder="0"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
										allowfullscreen></iframe>
									</div>
								</dd>
								<dd class="info_t6">
									내 꿈을 만드는 누군가가 있다?<br><br>
									자상한 아빠, 귀여운 햄스터 '비고'와 행복한 나날을 보내던 소녀 '미나'는 새로운 가족 ‘제니’의 등장으로  평온하던 일상에 변화가 찾아오고 급기야 ‘비고’를 잃을 위기에 처한다.<br>
									그러던 어느 날 밤, 우연히 꿈속 세상을 발견한 ‘미나’는 그곳에서 마치 영화처럼 꿈을 만드는 드림빌더를 만나게 되고,<br>
									소중한 반려 햄스터 ‘비고’와 평온한 일상을 되찾기 위해 깜찍한 계획을 세우는데…<br>
									모두가 잠든 밤, 상상하는 모든 것이 이루어지는 꿈의 세계가 펼쳐진다!
								</dl>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>