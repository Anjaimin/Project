<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>메디웨어::관리자 메뉴</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/root.css">
  <link rel="stylesheet" type="text/css" href="/resources/css/admin.css">
</head>

<body>
  <header class="p-admin-navbar">
    <div class="p-admin-container--default"> <!--PC 기본 폭 설정 적용-->
      <div class="p-admin-container--inner">
        <!-- 로고 영역 -->
        <div class="logo-container">
          <a href="/">
            <img src="/resources/images/login.png" style="width: 40px; height: auto;">
          </a>
          <a href="/admin">
            <div class="logo-title" style="color: var(--white, #FFF);">메디웨어:관리자메뉴</div>
          </a>
        </div>
      </div>
    </div>
  </header>

  <main>
    <div class="p-admin-sidebar">
      <ul class="menu">
        <li class="middle">
          <a href="#"><span>데이터 관리(X)</span></a>
        </li>
        <li class="sub">
          <a href="#">DB 접속 관리(X)</a>
        </li>
        <li class="middle">
          <a href="#">회원 관리(X)</a>
        </li>
        
        <li class="sub">
          <a href="/adminmember">회원 정보(O)</a>
        </li>
        <li class="sub">
          <a href="#">관리자 권한 관리(X)</a>
        </li>
        <li class="middle">
          <a href="#">게시판 관리(X)</a>
        </li>
        <li class="sub">
          <a href="#">게시글(X)</a>
        </li>
        <li class="sub">
          <a href="#">댓글(X)</a>
        </li>
        <li class="middle">
          <a href="#">고객센터 관리(X)</a>
        </li>
        <li class="sub">
          <a href="#">1:1 문의 답변(X)</a>
        </li>
        <li class="sub">
          <a href="#">자주 묻는 질문(X)</a>
        </li>
      </ul>
      
      </div>
    </div>

    <div class="maintext">
      <img src="/resources/images/logo.png" width: 100px; height: auto; padding-bottom: 20px;"><br>
      메디웨어 : 관리자 메뉴에 접속하셨습니다
    </div>
  </main>

</body>
</html>