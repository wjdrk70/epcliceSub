<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>


<script>
function send(){

	if(document.login.id.value==""){
		alert("아이디 입력");
		document.login.id.focus();
		return;
	}
	if(document.login.id.value.length<4 || document.login.id.length>12){
		alert("아이디 4자 이상");
		document.login.id.focus();
		return;
	}
	if(document.login.pass.value==""){
		alert("비밀번호 입력해");
		document.login.pass.focus();
		return;
	}
	document.login.submit();
}
</script>



<table width=100%>
	<tr>
		<td align=center>회원가입</td>
	</tr>
</table>

<table width=600 align=center>
	<tr>
	<form name="login" action="/member/login_ok.jsp" method="post">
	<td align="right"> 
	   	 아이디 : <input type="text" name="id" value=""><br>
	       비밀번호 : <input type="text" name="pass" value="">
	</td>
	</form>
	<td align="left"><button onclick="send()" style="height:40px;">로그인</button></td>
    </tr>
	</table>
<%@ include file="/footer.jsp" %>