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
									<a href="specific7.jsp">
									<img src="https://movie-phinf.pstatic.net/20210129_146/1611912316783y8rDf_JPEG/movie_image.jpg?type=m99_141_2"
										alt="해리 포터와 불의 잔"></a>
								</div>
								<dl class="lst_dsc">
									<dt class="tit">
										<span class="ico_rating_12">해리 포터와 불의 잔</span>
									</dt>
									<dd>
										<dl class="info_txt1">
											<span class="ico_rating_12">12세 관람가</span>
											<dt class="tit_t1">평점 | 
												<span class="st_off"><span class="st_on" style="width: 80.1%"></span></span>
												<span class="num">8.01</span>
											</dt>
											<dt class="tit_t2">개요 | 
												<span class="link_txt">판타지, 가족, 모험, 액션</span>
												<span class="split">|</span> 156분 <span class="split">|</span> 2021.02.10 개봉
											</dt>
											<dt class="tit_t3">감독 | 
												<span class="link_txt">마이크 뉴웰</span>
											</dt>
											<dt class="tit_t4">출연 | 
												<span class="link_txt">다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트</span>
											</dt>
										</dl>
									</dd>
								<dd class="info_t5">
									<div class="btn_area">
										<iframe width="560" height="315" src="https://www.youtube.com/embed/uzZ_y3wShe0" frameborder="0"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
										allowfullscreen></iframe>
									</div>
								</dd>
								<dd class="info_t6">
									최강의 챔피언을 찾아라!트리위저드 마법경연대회!<br>
									그러나 올해는 예년과 상황이 좀 다르다.<br>
									덤블도어 교장은 유럽의 세 개 명문 마법학교의 결속을 다지기 위해 그간 중단됐던 호그와트에서 '트리위저드 대회'를 개최한다고 발표한다.<br>
									트리위저드 대회는 마법의 최고 명문 3개 학교에서 선발된 챔피언 한 명씩 출전해 트리위저드 컵을 놓고 목숨을 건 경합을 벌이는 마법사들 세계에서 가장 흥미진진하고 위험한 마법경연대회.<br>
									마법의 '불의 잔'이 각 학교 출전자를 선발하는 의식이 열리고 현란한 불꽃의 축제 속에 불의 잔은 마침내 세 학생의 이름을 호명한다.<br>
									강인한 불가리아 덤스트랭 학교의 퀴디치 경기 슈퍼스타인 빅터 크룸(스타니슬라브 이아네브스키)과 우아한 보바통 마법아카데미의 플뢰르 델라쿠르(클레멘스 포에시),<br>
									그리고 호그와트의 최고 인기남 케드릭 디고리(로버트 패틴슨). 그러나 세 명의 이름이 다 호명된 후, 뜻밖에도 불의 잔은 또 한 명의 이름을 내뱉는다.<br>
									바로 '해리포터'!<br><br>
									불의 잔을 향한 최강의 스펙터클이 펼쳐진다!<br>
									그러던 중 호그와트 교정에서 누군가 살해되면서 상황은 급변한다.<br>
									볼드모트의 악몽으로 두려움에 휩싸인 해리는 덤블도어를 찾아가지만 그 역시도 뚜렷한 해답을 제시하지 못한다.<br>
									경기가 진행되고 해리와 다른 출전자들이 마지막 과제를 풀기 위해 안간힘을 쓰고 있을 때 무언가가 계속 이들을 주시한다.<br>
									승리가 목전에 다가온 그 순간, 이제까지의 모든 진실이 밝혀지고 해리포터에게는 진정한 악과의 피할 수 없는 대결이 기다리고 있는데….
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