<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>로그인</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/login1.css">
	<!-- <script src="login.js"></script> -->

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function logincheck() {
		var params = {
				userid : $('#userid').val()
			  , password : $('#password').val()
		}
		$.ajax({
            type : 'POST',            // HTTP method type(GET, POST) 형식.
            url : '/loginMember',      // 컨트롤러에서 대기중인 URL 주소.
            headers: {
            	'Accept': 'application/json',
            	'Content-Type': 'application/json',
            },
            data : JSON.stringify(params),            // Json 형식의 데이터.
            async : false,
            success : function(result){ // 비동기통신의 성공일경우 success콜백으로 들어옴. 'res'는 응답받은 데이터.
                if(result != null) {
                	alert("로그인성공");
                	window.history.replaceState("test",null,"./");
                	//location.href="redirect:/";
                } else {
                	alert("로그인실패");
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옴.
            	 alert("code:"+XMLHttpRequest.status+"\n"+"message:"+XMLHttpRequest.responseText+"\n"+"error:"+errorThrown);
                alert("통신 실패");
            }
        });
	}
</script>


<body>
	<div class="main">

		<!--웹페이지 상단-->
		<header>
			<!--홈페이지 LOGO-->
			<div class="logo">
				<a href="/"  title="메디웨어 홈페이지"><img src="/resources/images/logo2.png"
						class="image"></a> 
					</div>
					<p>메디웨어를 방문해 주셔서 감사합니다.<br>
						로그인하시면 더욱 편리하게 서비스 이용이 가능합니다.</p>
		</header>



<form>
		<!--로그인 부분-->
		<section class="login-wrap">
			<div class="login-id-wrap">
				<input placeholder="아이디" type="text" class="input-id" id="userid" value = "">
			</div>
			
			<div class="login-pw-wrap">
				<input placeholder="비밀번호" type="password" class="input-pw" id="password"></input>
			</div>
			
			<div class="login-btn-wrap">
				<button class="login-btn" onclick="javascript:logincheck();">로그인</button>
			</div>
		</section>

</form>

		<!--class,PW 찾기 및 회원가입 부분-->
		<section class="find-signup-wrap">

			<span class="find-id">
				<a href="idsearch" title="idfind">아이디 찾기(미구현)</a>
			</span>

			<span class="find-pw">
				<a href="pwsearch" title="pwfind">비밀번호 찾기(미구현)</a>
			</span>

			<span class="sign-up">
				<a href="signup" 
					title="signup">회원가입</a>
			</span>

		</section>
	
		<!--풋터 정보-->
		

	</div>

</body>

<!-- <footer>
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
  </footer> -->

</html>