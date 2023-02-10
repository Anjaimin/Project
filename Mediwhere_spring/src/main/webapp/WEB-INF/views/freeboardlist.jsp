<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자유게시판</title>
<link rel="stylesheet" type="text/css" href="/resources/css/css.css">
<link rel="stylesheet" type="text/css" href="/resources/css/root.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-theme.css">
</head>

<!-- 부트스트랩용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function fnFreeBoardWriteView() {
		location.href = "freeBoardWriteView";
	}
	
	function fnDetailFreeBoardView(freeNum) {
		$('#free_number').val(freeNum);
		document.freeboard_frm.action = "/selectFreeBoardDetail";
		document.freeboard_frm.method = "post";
		document.freeboard_frm.submit();
	}
</script>
<body>
	<div class="container">
		<header>
			<!-- 내비게이션 -->
			<nav>
				<!-- 로고 -->
				<div class="logo">
					<a href="/"> <img src="/resources/images/logo.png">
						<h1>메디웨어</h1>
					</a>
				</div>
				<!-- GNB -->
				<ul id="gnb">
					<li><a href="/project/community/community.html">내 병원 로드맵</a>
						<ul>
							<li><a href="/project/map.html">신도시 입지 분석</a></li>
							<li><a href="/project/community/report.html">분석 리포트</a></li>
						</ul></li>
				</ul>

				<ul id="gnb">
					<li><a href="">고객센터</a>
						<ul>
							<li><a href="">공지사항</a></li>
							<li><a href="/selectFreeBoardList">자유 게시판</a></li>
							<li><a href="">1:1 문의</a></li>
						</ul></li>
				</ul>

				<!-- LNB -->
				<div id="lnb">
					<ul id="gnb">
						<li><img src="/resources/images/login1.png" alt=""> </span>
							<ul>
								<li><a href="login">로그인</a></li>
								<li><a href="signup">회원가입</a></li>
								<li><a href="admin">관리자페이지</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>


		<div class="footheight">
			<div>
				<br>
				<h1>자유 게시판</h1>
				<input type="button" value="검색" id="search_button"> </input> <input
					type="text" id="searchbar" placeholder="제목으로 검색"></input> <span
					class="searchicon"></span>
			</div>

			<!--게시판 목록 내용들-->
			<table class="table">

				<form method="post" name="freeboard_frm">
					<input type="hidden" name="free_number" id="free_number" value="0">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">글쓴이</th>
							<th scope="col">작성일</th>
							<th scope="col">조회수</th>

						</tr>
					</thead>
				<tbody>
					<!-- <tr>
        <td>1</td>
        <td>개원하기 좋은 입지 추천합니다.</td>
        <td>안재민</td>
        <td>2022.12.26.</td>
        <td>3</td>
      </tr> -->
					<c:forEach var="list" items="${freeBoardList}">
						<tr onclick="javascript:fnDetailFreeBoardView(${list.free_number});">
							<td>${list.free_number}</td>
							<td>${list.free_title}</td>
							<td>${list.free_writer}</td>
							<td>${list.free_regdate}</td>
							<td>${list.free_readcount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="board_page">
				<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
				<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
					href="#" class="num">3</a> <a href="#" class="num">4</a> <a
					href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
					href="#" class="bt last">>></a>
			</div>


			<div class="bt_wrap">
				<a href="/selectFreeBoardList" class="on">목록</a>
				<a href="javascript:fnFreeBoardWriteView();" class="on">글쓰기</a>
				<!-- <a href="#">수정</a> -->

			</div>

			<div style="display: block; text-align: center;">
				<c:if test="${paging.startPage !=1}">
					<a
						href="/boardList?nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage}">
							<b>${p }</b>
						</c:when>
						<c:when test="${p != paging.nowPage}">
							<a href="/boardList?nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a
						href="/boardList?nowPage=${paging.endPage+1}&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
			</div>

			</form>

		</div>
		<footer>
			<div id="container">
				<div class="bottom">
					<ul>
						<li><a href="#">회사 소개</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">회원 약관</a></li>
						<li><a href="#">사이트맵</a></li>
					</ul>
				</div>
				<div id="company">
					<p>서울특별시 송파구 백제고분로</p>
					<p>cameogu@gmail.com</p>
				</div>
			</div>
		</footer>

	</div>
</body>


</html>