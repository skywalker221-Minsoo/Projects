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
									<img src="https://movie-phinf.pstatic.net/20210107_160/1609984702837oNdmw_JPEG/movie_image.jpg?type=m99_141_2"
										alt="소울">
								</div>
								<dl class="lst_dsc">
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_all">소울 </span>
										</dt>
										<dd>
											<dl class="info_txt1">
												<span class = ico_rating_all>전체 관람가</span>
												<dt class="tit_t1">평점 | 
													<span class="st_off"><span class="st_on" style="width: 93.3%"></span></span>
													<span class="num">9.33</span>
												</dt>
												<dt class="tit_t2">개요 | 
													<span class="link_txt">애니메이션</span>
													<span class="split">|</span>107분 <span class="split">|</span> 2021.01.20 개봉
												</dt>
												<dt class="tit_t3">감독 | 
													<span class="link_txt">피트 닥터</span>
												</dt>
												<dt class="tit_t4">출연 | 
													<span class="link_txt">제이미 폭스, 티나 페이, 다비드 딕스</span>
												</dt>
											</dl>
										</dd>
									</dl>
									<dd class="info_t5">
										<div class="btn_area">
											<iframe width="560" height="315" src="https://www.youtube.com/embed/Q0zFPlArth0" frameborder="0" 
											allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
											allowfullscreen></iframe>
										</div>
									</dd>
									<dd class="info_t6">
										나는 어떻게 ‘나’로 태어나게 되었을까?<br><br>
										지구에 오기 전 영혼들이 머무는 ‘태어나기 전 세상’이 있다면?<br><br>
										뉴욕에서 음악 선생님으로 일하던 ‘조’는  꿈에 그리던 최고의 밴드와 재즈 클럽에서 연주하게 된 그 날,<br>
										예기치 못한 사고로 영혼이 되어 ‘태어나기 전 세상’에 떨어진다.<br>
										탄생 전 영혼들이 멘토와 함께 자신의 관심사를 발견하면 지구 통행증을 발급하는 ‘태어나기 전 세상’<br>
										‘조’는 그 곳에서 유일하게 지구에 가고 싶어하지 않는 시니컬한 영혼 ‘22’의 멘토가 된다.<br>
										링컨, 간디, 테레사 수녀도 멘토되길 포기한 영혼 ‘22’<br><br>
										꿈의 무대에 서려면 ‘22’의 지구 통행증이 필요한 ‘조’<br>
										그는 다시 지구로 돌아가 꿈의 무대에 설 수 있을까?
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