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
									<a href="specific9.jsp">
									<img src="https://movie-phinf.pstatic.net/20210125_20/1611551696077lGGQ8_JPEG/movie_image.jpg?type=m99_141_2"
										alt="해변의 에트랑제"></a>
								</div>
								<dl class="lst_dsc">
									<dt class="tit">
										<span class="ico_rating_15">해변의 에트랑제</span>
									</dt>
									<dd>
										<dl class="info_txt1">
											<span class="ico_rating_15">15세 관람가</span>
											<dt class="tit_t1">평점 | 
												<span class="st_off"><span class="st_on" style="width: 94.1%"></span></span>
												<span class="num">9.41</span>
											</dt>
											<dt class="tit_t2">개요 | 
												<span class="link_txt">애니메이션, 멜로, 로맨스
												<span class="split">|</span> 59분 <span class="split">|</span> 2021.02.18 개봉
											</dt>
											<dt class="tit_t3">감독 | 
												<span class="link_txt">오오하시 아키요</span>
											</dt>
											<dt class="tit_t4">출연 | 
												<span class="link_txt">무라타 타이시, 마츠오카 요시츠구, 시마무라 유우, 이토 카나에</span>
											</dt>
										</dl>
									</dd>
									<dd class="info_t5">
										<div class="btn_area">
											<iframe width="560" height="315" src="https://www.youtube.com/embed/EVibfarEMyU" frameborder="0"
											allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
										</div>
									</dd>
									<dd class="info_t6">
										다르지 않아, 우린 그저 사랑하고 있을 뿐.<br><br>
										그 바다, 네가 파도처럼 밀려왔다 오키나와 외딴섬, 해변 벤치에 혼자 멈춰있는 소년 ‘미오’.<br>
										그런 미오가 몹시 신경 쓰이는 소설가 지망생 ‘슌’. 우연한 계기로 가까워졌다 생각한 순간, 미오가 돌연 섬을 떠난다.<br>
										그리고 3년 후, 그토록 그리워하던 서로를 다시 만난 둘은 이제 마음을 알아가며 서툴지만 따뜻한 사랑을 시작하는데…
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