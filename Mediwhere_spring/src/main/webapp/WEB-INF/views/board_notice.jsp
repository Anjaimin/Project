<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/root.css">
    <link rel="stylesheet" href="css/css.css">
</head>

<body>
  <header>
    <!-- 내비게이션 -->
    <div id="container">
      <nav>
      <!-- 로고 -->
      <div class="logo">
        <a href="index.jsp">
          <img src="assets/images/logo.png">
          <h1>메디웨어</h1>
        </a>
      </div>
      <!-- GNB -->
        <ul id = "gnb">
          <li><a href="">내 병원 로드맵</a>
            <ul>
              <li><a href="">신도시 입지 분석</a></li>
              <li><a href="">분석 리포트</a></li>
            </ul>          
          </li>
        </ul>
        
        <ul id = "gnb">
          <li><a href="">고객센터</a>
            <ul>
              <li><a href="notice.jsp">공지사항</a></li>
              <li><a href="">자주 묻는 질문</a></li>
              <li><a href="">1:1 문의</a></li>
            </ul>
          </li>
        </ul>
          
          <!-- LNB -->
        <div id="lnb">
          <ul id="gnb">
            <li>
            <img src="assets/images/login.png" alt="">
            
              <ul>
                <li><a href="">로그인</a></li>
                <li><a href="">회원가입</a></li>
              </ul>
            </li>
          </ul>
        </div>
        </nav>
      </div>        
  </header>

    <div class = "board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <input type="text" id="searchbar" placeholder="제목으로 검색"></input>
            <span class="searchicon"></span>
            
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
            
            
        </div>

        <div class = "board_list_wrap">
            <div class = "board_list">
                <div class="top">  
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                <div class="count">조회수</div>
            </div>
            <div>
                <div class="num">5</div>
                <div class="title"><a href="/project/community/view.html">메디웨어 버전 업데이트 공지</a></div>
                <div class="writer">안재민</div>
                <div class="date">2022.11.26</div>
                <div class="count">33</div>
            </div>
            
            <div>
                <div class="num">4</div>
                <div class="title"><a href="/project/community/view.html">업데이트 주기 안내</a></div>
                <div class="writer">임재영</div>
                <div class="date">2022.11.26</div>  
                <div class="count">33</div>
            </div>
            
            <div>
                <div class="num">3</div>
                <div class="title"><a href="/project/community/view.html">메디웨어 서비스 분석 데이터 공지</a></div>
                <div class="writer">안재민</div>
                <div class="date">2022.11.26</div>
                <div class="count">33</div>
            </div>
            
            <div>
                <div class="num">2</div>
                <div class="title"><a href="/project/community/view.html">앞으로의 서비스 지역 확장 및 방향에 대한 안내</a></div>
                <div class="writer">임재영</div>
                <div class="date">2022.11.26</div>
                <div class="count">33</div>
            </div>
            
            <div>
                <div class="num">1</div>
                <div class="title"><a href="/project/community/view.html">드디어 메디웨어가 정식으로 오픈하게 됐습니다.</a></div>
                <div class="writer">안재민</div>
                <div class="date">2022.11.26</div>
                <div class="count">33</div>
            </div>
            </div>
            
            <div class ="board_page">
                <a href="#" class = "bt first"><<</a>
                <a href="#" class = "bt prev"><</a>
                <a href="#" class = "num on">1</a>
                <a href="#" class = "num">2</a>
                <a href="#" class = "num">3</a>
                <a href="#" class = "num">4</a>
                <a href="#" class = "num">5</a>
                <a href="#" class = "bt next">></a>
                <a href="#" class = "bt last">>></a>
            </div>


            <div class = "board_page">
                
            </div>
            
            <div class = "bt_wrap">
                <a href="/project/support/notice.html" class="on">목록</a>
                <a href="/project/community/write.html" class="on">글쓰기</a>
                <!-- <a href="#">수정</a> -->
                
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
          <p>서울특별시 송파구 백제고분로</p>
          <p>cameogu@gmail.com</p>
        </div>
      </div>
    </footer>
  </div>
</body>

</html>