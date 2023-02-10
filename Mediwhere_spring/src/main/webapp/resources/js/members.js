

function infoConfirm(){
	
	if(document.reg_frm.userid.value.length ==0){
		alert("아이디는 필수사항 입니다.");
		reg_frm.userid.focus();
		return false;
	}
	
	if(document.reg_frm.userid.value.length <4){
		alert("아이디는 4글자 이상 이여야합니다.");
		reg_frm.userid.focus();
		return false;	
	}
	
	
	
	if(document.reg_frm.password.value.length == 0){
		alert("비밀번호는 필수사항입니다.");
		reg_frm.password.focus();
		return false;	
	}
	
	
	if(document.reg_frm.password.value != document.reg_frm.password_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.password.focus();
		return false;	
	}

	if(document.reg_frm.name.value.length == 0){
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return false;	
	}

	document.reg_frm.method = "post";
	document.reg_frm.action = "/insertMember";
	document.reg_frm.submit();
	return true;
}
	



function updateInfoConfirm(){
	if(document.reg_frm.mem_pw.value ==""){
		alert("패스워드를 입력하세요")
		document.reg_frm.mem_pw.focus();
		return;
	}
	
	if(document.reg_frm.mem_pw.value != document.reg_frm.mem_pw_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.mem_pw.focus();
		return;	
	}
	
	
	document.reg_frm.submit();
}

function writeConfirm(){
	if(document.reg_frm.title.value.length ==0){
		alert("제목은 필수사항 입니다.");
		reg_frm.title.focus();
		return false;	
	}
	
	if(document.reg_frm.writer.value.length ==0){
		alert("작성자는 필수사항 입니다.");
		reg_frm.writer.focus();
		return false;	
	}
	if(document.reg_frm.free_pw.value.length ==0){
		alert("비밀번호는 필수사항 입니다.");
		reg_frm.free_pw.focus();
		return false;	
	}
	if(document.reg_frm.free_content.value.length ==0){
		alert("글내용은 필수사항 입니다.");
		reg_frm.free_content.focus();
		return false;	
	}
	
	document.reg_frm.submit();
}

	
