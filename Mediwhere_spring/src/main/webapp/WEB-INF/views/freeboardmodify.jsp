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
    <title>자유게시판</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/css.css">
<link rel="stylesheet" type="text/css" href="/resources/css/root.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-theme.css">
    
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function fnUpdate() {
		var params = {
				free_title : $('#free_title').val()
			  , free_writer : $('#free_writer').val()
			  , free_content : $('#free_content').val()
			  , free_number : $('#free_number').val()
		}
		$.ajax({
            type : 'POST',            // HTTP method type(GET, POST) 형식.
            url : '/updateFreeBoard',      // 컨트롤러에서 대기중인 URL 주소.
            headers: {
            	'Accept': 'application/json',
            	'Content-Type': 'application/json',
            },
            data : JSON.stringify(params),            // Json 형식의 데이터.
            async : false,
            success : function(result){ // 비동기통신의 성공일경우 success콜백으로 들어옴. 'res'는 응답받은 데이터.
                if(result == 1) {
                	alert("게시글 수정 완료");
                	//location.href="/selectFreeBoardList";
                } else {
                	alert("게시글 수정 실패");
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신 실패");
            }
        });
	}
	
	function fnDel() {
		var params = {
				free_number : $('#free_number').val()
		}
		$.ajax({
            type : 'POST',            // HTTP method type(GET, POST) 형식이다.
            url : '/deleteFreeBoard',      // 컨트롤러에서 대기중인 URL 주소이다.
            headers: {
            	'Accept': 'application/json',
            	'Content-Type': 'application/json',
            },
            data : JSON.stringify(params),            // Json 형식의 데이터이다.
            async : false,
            success : function(result){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                if(result == 1) {
                	alert("게시글 삭제 완료");
                	location.href="/selectFreeBoardList";
                } else {
                	alert("게시글 삭제 실패");
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옴.
            	alert("code:"+XMLHttpRequest.status+"\n"+"message:"+XMLHttpRequest.responseText+"\n"+"error:"+errorThrown);
            }
        });
	}
</script>
<body>
  <div class="container">   
  <header>
    <!-- 내비게이션 -->
      <nav>
      <!-- 로고 -->
      <div class="logo">
        <a href="/">
          <img src="/resources/images/logo.png">
          <h1>메디웨어</h1>
        </a>
      </div>
      <!-- GNB -->
        <ul id = "gnb">
          <li><a href="/project/community/community.html">내 병원 로드맵</a>
            <ul>
              <li><a href="/project/map.html">신도시 입지 분석</a></li>
              <li><a href="/project/community/report.html">분석 리포트</a></li>
            </ul>          
          </li>
        </ul>
        
        <ul id = "gnb">
          <li><a href="">고객센터</a>
            <ul>
              <li><a href="">공지사항</a></li>
              <li><a href="/selectFreeBoardList">자유 게시판</a></li>
              <li><a href="">1:1 문의</a></li>
            </ul>
          </li>
        </ul>
          
          <!-- LNB -->
        <div id="lnb">
          <ul id="gnb">
            <li>
            <img src="/resources/images/login1.png" alt="">
            </span>
              <ul>
                <li><a href="login.jsp">로그인</a></li>
                <li><a href="signup.jsp">회원가입</a></li>
                <li><a href="admin.jsp">관리자페이지</a></li>
              </ul>
            </li>
          </ul>
        </div>
        </nav>
  </header>
  


  <div class="footheight">

    <div class = "board_wrap">
        <div class="board_title">
            <strong>자유 게시판</strong>
            
        </div>

 
		<input type="hidden" id="free_number" value="${freeBoard.free_number}">
        <div class = "borad_list_wrap">
            <div class = "board_view">
                <div class="title">
                	<dl>
                		<dt>제목</dt>
                		<dd><input type="text" id="free_title" value="${freeBoard.free_title}"></dd> 
                	</dl>
				</div>

                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${freeBoard.free_number}</dd>
                    </dl>

                    <dl>
                        <dt>글쓴이</dt>
                       <dd><input type="text" id="free_writer" value="${freeBoard.free_writer}"></dd>
                    </dl>

                    <dl>
                        <dt>날짜</dt>
                        <dd>${freeBoard.free_regdate}</dd>
                    </dl>

                    <dl>
                        <dt>조회수</dt>
                        <dd>${freeBoard.free_readcount}</dd>
                    </dl>
    
                </div>
	<div class="cont">
		<textarea placeholder="내용 입력" name="free_content" id="free_content">
			${freeBoard.free_content}
	    </textarea> 
	</div>

                <div>
                  <input type="hidden" class ="reply" value =""></input>  
                </div>

                <div>
                  <input type="text" class ="reply" placeholder="댓글을 입력하세요"></input>  
                  <input type="button" value="등록" class = "reply_button"> </input>  
                </div>

            <div class = "bt_wrap">
                <a href="/selectFreeBoardList" class="on">목록</a>
                <a href="javascript:fnUpdate();" class="on">수정</a>
                <a href="javascript:fnDel();" class="on">삭제</a>
            </div>

          </div>
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
    

    
</body>
</html>