<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	session.getAttribute("id");
	String id = (String)session.getAttribute("id"); // 페이지가 전환되어도 회원정보는 계속 유지 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main_exterior.css"> <!-- 메인페이지 큰 틀은 계속 유지 -->
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
			<jsp:include page="top3.jsp"></jsp:include> <!-- 메인페이지 큰 틀은 계속 유지 -->
		</div>
		<div id="content">
			<div class="article">
				<div class="obj_section">
					<div class="lst_wrap">
						<ul class="lst_detail_t1">
							<li>
								<div class="thumb">
									<a href="specific2.jsp">
									<img src="https://movie-phinf.pstatic.net/20210126_174/1611638248803840HH_JPEG/movie_image.jpg?type=m99_141_2"
										alt="극장판 귀멸의 칼날: 무한열차편"></a>
								</div>
								<dl class="lst_dsc">
									<dt class="tit">
										<span class="ico_rating_all">극장판 귀멸의 칼날 : 무한열차편 </span>
									</dt>
									<dd>
										<dl class="info_txt1">
											<span class = ico_rating_all>15세 관람가</span>
											<dt class="tit_t1">평점 | 
												<span class="st_off"><span class="st_on" style="width: 92.2%"></span></span>
												<span class="num">9.22</span>
											</dt>
											<dt class="tit_t2">개요 | 
												<span class="link_txt">애니메이션</span>
												<span class="split">|</span> 117분 <span class="split">|</span> 2021.01.27 개봉
											</dt>
											<dt class="tit_t3">감독 | 
												<span class="link_txt">소토자키 하루오</span>
											</dt>
											<dt class="tit_t4">출연 | 
												<span class="link_txt">하나에 나츠키, 키토 아카리</span>
											</dt>
										</dl>
									</dd> <!-- 메인페이지 구성과 동일 -->
									<dd class="info_t5">
										<div class="btn_area">
											<iframe width="560" height="315" src="https://www.youtube.com/embed/R5sTnuMODDw" 
											frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe> <!-- Youtube 예고편 영상 html, 해당 영화의 예고편 탑재 -->
										</div>
									</dd>
									<dd class="info_t6"> <!-- 영화 줄거리 -->
										혈귀로 변해버린 여동생 ‘네즈코’를 인간으로 되돌릴 단서를 찾아 비밀조직 귀살대에 들어간 ‘탄지로.’<br>
										‘젠이츠’, ‘이노스케’와 새로운 임무 수행을 위해 무한열차에 탑승 후  귀살대 최강 검사 염주 ‘렌고쿠’와 합류한다.<br>
										달리는 무한열차에서 승객들이 하나 둘 흔적 없이 사라지자  숨어있는 식인 혈귀의 존재를 직감하는 ‘렌고쿠’.<br>
										귀살대 ‘탄지로’ 일행과 최강 검사 염주 ‘렌고쿠’는  어둠 속을 달리는 무한열차에서 모두의 목숨을 구하기 위해  예측불가능한 능력을 가진 혈귀와 목숨을 건 혈전을 시작하는데…
									</dd>
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