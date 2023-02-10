<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>

<%
	if(session.getAttribute("ValidMem")==null){
%>    
<<jsp:forward page="index.jsp"></jsp:forward>

<%
	}
	String name = (String) session.getAttribute("mem_name");
	String id = (String) session.getAttribute("mem_id");
%>




    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>메디웨어 MEDIWHERE</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/root.css">
  <link rel="stylesheet" type="text/css" href="/resources/css/index.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>

<body>
  <header>
      <!-- 내비게이션 -->
      <div id="container">
        <nav>
        <!-- 로고 -->
        <div class="logo">
          <a href="index.html">
            <img src="/resources/images/logo.png">
            <h1>메디웨어</h1>
          </a>
        </div>
        <!-- GNB -->
          <ul id = "gnb">
            <li><a href="#">로드맵</a>
              <ul>
                <li><a href="map.html">신도시 입지 분석</a></li>
                <li><a href="community/report.html">분석 리포트</a></li>
              </ul>          
            </li>
          </ul>
          
          <ul id = "gnb">
            <li><a href="support/support.html">고객센터</a>
              <ul>
                <li><a href="support/notice.html">공지사항</a></li>
                <li><a href="freeboardlist.do">자유 게시판</a></li>
                <li><a href="support/1on1.html">1:1 문의</a></li>
              </ul>
            </li>
          </ul>
            
            <!-- LNB -->
          <div id="lnb">
            <ul id="gnb">
              <li>
              <img src="/resources/images/login.png" alt="">
              </span>
                <ul>
                  <li><a href="logout.jsp">로그아웃</a></li>
                  <li><a href="admin.jsp">관리자페이지</a></li>
                </ul>
              </li>
            </ul>
          </div>
          </nav>
        </div>
    </header>

    <div class="ban_img">
        <div id="container" class="ban_text">
          <h2>새 병원 위치 고민 중일 땐?</h2>
          <h1>메디웨어</h1>
        </div>
    </div>

    <!-- 섹션 1 -->
    <div id="section1">
      <div id="container">
        <div class="block1">
          <h3>원장님! 병원 위치 고민하세요?</h3>
          <h3>고민하지 마세요.</h3>
          <h3>고민은 <span style="background-color: rgb(189, 235, 190);">메디웨어</span>가 대신할게요.</h3>
          <br>
          <h4>개원의 시작은 메디웨어와 함께</h4>
        </div>
        <div>
          <img src="/resources/images/main_section1.png">
        </div>
      </div>
    </div>
    
    <div id="section2">
      <div id="container">
        <div style="width: 100%; height: 60px; user-select: none;"></div>
        <div>
          <h3>제대로 된 개원 입지 분석!</h3>
          <h3 style="padding-bottom: 10px;">수 많은 원장님들이 <span style="color: rgb(0, 129, 2);">메디웨어</span>와 함께 시작하셨습니다</h3>
          <h4>메디웨어는 병원 입지 분석 서비스 플랫폼 입니다.</h4>
        </div>
        <div style="width: 100%; height: 65px; user-select: none;"></div>
        <div class="box">
          <img src="/resources/images/main_section2-1.png">
          <h5>입지 분석의 제대로 된 기준!</h4>
          <h2 style="padding-bottom: 80px;">메디웨어의 <span style="color: #0072b4;">'심층 분석'</span> 시스템</h2>
          <h4>개원입지 조사할 때 검토해야 할 데이터 지표는?<br>
          '심층 분석'은 병원 운영과 관계성을 보이는 지표들을 제시하여 분석 기준을 정립합니다.</h4>
        </div>
      </div>
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
          <p>서울특별시 서대문구 신촌로 176, 중앙정보처리학원 401호</p>
          <p>cameogu.work@gmail.com</p>
        </div>
      </div>
    </div>
    </footer>
</body>
</html>