 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>
  
  
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>메디웨어 회원가입</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/signup.css">
    
    <script src="/resources/js/members.js"></script>

</head> 

<body>
	
    <div class="main-signup">
        <!--웹페이지 상단-->
        <header>
            <!-- LOGO-->
            <div class="logo">
                <a href="/" target="_blank" title="메디웨어 홈페이지"><img src="/resources/images/logo2.png"
                        class="image"></a>
            </div>
        </header>
	
	
        <!--회원가입 부분-->
        <form name="reg_frm"> 
        <section class="signup-wrap">
            
            <div>
                <!--아이디,비번,비번 재확인-->
                
                <h3>아이디</h3>
                <span class="signup-input">
                    <input type="text" id="signup-id" name = "userid" placeholder="4글자 이상이여야 합니다."></input>
                </span>
                
                <h3>비밀번호</h3>
                <span class="signup-input">
                    <input type="password" id="signup-pw" name="password" ></input>
                    <span class="pw-lock"></span>
                </span>
                
                <h3>비밀번호 재확인</h3>
                <span class="signup-input">
                    <input type="password" id="signup-pww" name = "password_check"></input>
                    <span class="pww-lock"></span>
                </span>

            </div>
            
            <div style="margin-top: 35px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input type="text" id="signup-name" name="name"></input>
                </span>
                
                </span>
                

                <h3>생년월일</h3>
                <span style="display: flex;">
                    <span class="signup-input">
                        <input id="signup-birth-yy" type="text" name = "birth" placeholder="예) 1992-03-19"></input>
                    </span>
                </span>


                <h3>의사 면허 번호</h3>
                <span class="signup-input">
                    <input type="text" id="signup-license" name = "license" placeholder="타인 면허를 도용할 시 형사 처벌 대상입니다."></input>
                    <span class="signup-license"></span>
                </span>

   				<h3>진료과목</h3>
            <span class="signup-input" aria-placeholder="진료과목 선택">
                <select id="signup-department" class="selectbox" name="dept" >
                    <option disabled selected>진료과목 선택</option>
                    <option value="내과">내과</option>
                    <option value="이비인후과">이비인후과</option>
                    <option value="치과">치과</option>
                    <option value="정형외과">정형외과</option>
                    <option value="안과">안과</option>
                    <option value="산부인과">산부인과</option>
                </select>
            </span>
  

            <div>
                <!--가입하기-->
                <div class="signup-btn-wrap">
               		<input type="submit" id = "signup-btn" value="회원가입 " onclick="infoConfirm()" ></input>
               		
                    <!-- <button id="signup-btn" >회원가입</button> -->
                </div>
            </div>
        </section>
        </form>

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