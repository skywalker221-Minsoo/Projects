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
									<a href="specific5.jsp">
									<img src="https://movie-phinf.pstatic.net/20210114_78/1610588407942CoL2I_JPEG/movie_image.jpg?type=m99_141_2"
										alt="세자매"></a>
								</div>
								<dl class="lst_dsc">
									<dt class="tit">
										<span class="ico_rating_15">세자매</span>
									</dt>
									<dd>
										<dl class="info_txt1">
											<span class="ico_rating_15">15세 관람가</span>
											<dt class="tit_t1">평점 | 
												<span class="st_off"><span class="st_on" style="width: 84.6%"></span></span>
												<span class="num">8.46</span>
											</dt>
											<dt class="tit_t2">개요 | 
												<span class="link_txt">드라마</span>
												<span class="split">|</span> 115분 <span class="split">|</span> 2021.01.27 개봉
											</dt>
											<dt class="tit_t3">감독 | 
												<span class="link_txt">이승원</span>
											</dt>
											<dt class="tit_t4">출연 | 
												<span class="link_txt">문소리, 김선영, 장윤주</span>
											</dt>
										</dl>
									</dd>
									<dd class="info_t5">
										<div class="btn_area">
											<iframe width="560" height="315" src="https://www.youtube.com/embed/Pdu2f5Xr3Qk"
											frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
										</div>
									</dd>
								<dd class="info_t6">
									“언니가 늘 기도하는거 알지?” 완벽한 척하는 가식덩어리 둘째 ‘미연’(문소리)<br>
									“내가 미안하다” 괜찮은 척하는 소심덩어리 첫째 ‘희숙’(김선영)<br>
									“나는 쓰레기야” 안 취한 척하는 골칫덩어리 셋째 ‘미옥’(장윤주)<br>
									각자 아무렇지 않은 척 살아가던 세 자매는 아버지 생일을 맞아 오랜만에 한 자리에 모이는데...<br><br>
									내 부모에게 진정한 사과를 받고 싶었던, 문제적 자매들이 폭발한다!
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