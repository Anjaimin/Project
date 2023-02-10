<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/signup.css">
  	
  	
	<script src="login.js"></script>

</head>

<body>

    <div class="main-signup">
        <!--웹페이지 상단-->
        <header>
            <!-- LOGO-->
            <div class="logo">
                <a href="index.jsp" target="_blank" title="메디웨어 홈페이지"><img src="/resources/images/logo2.png"
                        class="image"></a>
					<p>이름과 생년월일 의사면허번호를 입력하면 아이디를 알려드립니다.<br> </p>
            </div>
            
        </header>

        
        
            <form action = "/idsearch" method = "post" name = "reg_frm">
            <div style="margin-top: 35px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input type="text" id="signup-name" placeholder="이름" name = "name"></input>
                </span>
			</div>
			
			<div>
                <h3>생년월일</h3>
                <span style="display: flex;">
                    <span class="signup-input">
                        <input id="signup-birth-yy" type="text" name = "birth" placeholder="예) 1992-03-19"></input>
                    </span>
			</div>
			
			<div>
                <h3>의사 면허 번호</h3>
                <span class="signup-input">
                    <input type="text" id="signup-license" name = "license" placeholder="의사면허 번호"></input>
                    <span class="signup-license"></span>
                </span>
                </div>
	
                <!--가입하기-->
                <div class="signup-btn-wrap">
                    <button id="signup-btn">아이디 찾기</button>
                </div>
                
                
    
        </section>

        <!--풋터 -->
        <footer>
            <div class="copyright-wrap" style="font-size: 12px;">
                <span>이용약관 | 개인정보처리방침 | 책임의 한계와 고지 | 회원정보 고객센터</span>
                <div>메디웨어</div>
            </div>
        </footer>

    </div>

</body>

</html>