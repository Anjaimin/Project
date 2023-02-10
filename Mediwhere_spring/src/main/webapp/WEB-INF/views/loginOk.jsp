<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.*" %>

<%-- <%@ page import = "member.model.*" %>     --%>


<%
	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
	String mem_pw = request.getParameter("mem_pw");
	
	//MemberDao dao = MemberDao.getInstance();
	//int checkNum = dao.loginCheck(mem_id, mem_pw);
	//if(checkNum== -1){
%>
	<script language = "javascript">
	alert("아이디가 존재하지 않습니다.");
	history.go(-1);
    </script>
<%
	//}else if(checkNum == 0){

%>
	<script language = "javascript">
	alert("비밀번호가 틀립니다.");
	history.go(-1);
    </script>
    
<%
	}else if(checkNum ==1){
	MemberDto dto = dao.getMember(mem_id);
	
	if(dto == null){
%>

 	<script language = "javascript">
	alert("존재하지 않는 회원입니다.");
	history.go(-1);
    </script>
<%
	} else{
		String name = dto.getMem_name();
		session.setAttribute("mem_id", mem_id);

		session.setAttribute("ValidMem", "yes");
		
		/* main.do? 로 이동 */
		response.sendRedirect("login.do");	
	}
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>