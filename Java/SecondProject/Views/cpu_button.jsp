<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 해당 태그의 id가 포함된 이 부분들이 페이징을 할때마다 DB에 새롭게 요청하여 데이터를 가져옴. -->
<script type="text/javascript">
$("document").ready(function() {
	paging(totalData, dataPerPage, pageCount, 1);
});

var totalData = 40;
var dataPerPage = 5;
var pageCount = 4;

function paging(totalData, dataPerPage, pageCount, currentPage) {

	var totalPage = Math.ceil(totalData/dataPerPage);
	var pageGroup = Math.ceil(currentPage/pageCount);

	var last = pageGroup * pageCount;
	if (last > totalPage)
		last = totalPage;
	var next = last + 1;
	var first = last - (pageCount - 1);
	var prev = first - 1;
	var $pingingView = $("#paging");
	var html = "";
	
	if (prev > 0)
		html += "<a href=# id='prev'><</a> ";
		
	for (var i = first; i <= last; i++) {
		html += "<a href='#' id=" + i + ">" + i + "</a> ";
	}
	
	if (last < totalPage)
		html += "<a href=# id='next'>></a>";
		
	$("#paging").html(html);
	$("#paging a").css("color", "white");
	$("#paging a#" + currentPage).css({"text-decoration":"none",
									   "color":"yellow",
									   "font-weight":"bold"});
	
	$("#paging a").click(function() {
		
		var $item = $(this);
		var $id = $item.attr("id");
		var selectedPage = $item.text();
		
		//페이지 이전/이후 화살표를 각각 클릭했을 때 이전/이후 4페이지가 나오도록 함.
		if($id == "next") {
			selectPage = next;
			selectedPage = pageGroup + pageCount;
		}
		if($id == "prev") {
			selectPage = prev;
			selectedPage = pageGroup + pageCount - 2;
		}
		
		$.ajax({
			url: "cpu", //CPU버튼 선택 이후, 나머지 페이지 버튼을 누를 때마다 DB에서 다음 순번의 데이터들을 꺼내오며 페이징을 가능하게 함.
			data: {
				id: selectedPage
			},
			success: function(result) { //result : url에서 받아온 값
				$(result).each(function() {
					$('#div').empty() //ajax를 이용한 페이징을 위해 제품만 변경되도록 미리 div태그의 정보들을 지운다.
					$('#ui-widget-content').html(result) //CPU부품 정보들이 담긴 태그만 브라우저에 표시해준다.
					$('#document').html(result) //페이징이 지속되도록 함. 
				})
			},
			error: function() {
				alert('all3연결 실패!')
			}           		
		})
		paging(totalData, dataPerPage, pageCount, selectedPage);
	})
}
</script>
<!-- 버튼을 눌렀을 때 제품 정보들을 표시해주는 태그. ajax를 이용하기 때문에 원하는 태그에 속한 내용만 표시되도록 한다. -->
<li id="ui-widget-content"><br><br>
	<c:forEach var="vo" items="${list_CPU}">
	<img src="${vo.img}"><br><br>
	${vo.subject}/${vo.company}/<br>
	${vo.indate}/${vo.sort}/${vo.socket}/${vo.generation}/<br>
	${vo.birth}/${vo.chipline}/${vo.pcie}/${vo.maxpcie}/${vo.fee}원<br><br>
	<a href="add2?cart_image=${vo.img}&
									product_id=${vo.subject}&
									cart_price=${vo.fee}&
									user_id=${user_Id}&
									cart_count=1" class="w3-button w3-black w3-round-xlarge">장바구니</a>
	<a href="cpuselect?id=${vo.id}" class="w3-button w3-black w3-round-xlarge">상세페이지</a><hr color="green" width="500px"><br>
	</c:forEach>
</li>