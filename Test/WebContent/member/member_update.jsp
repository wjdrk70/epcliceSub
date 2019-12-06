<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String pass1 = request.getParameter("pass1");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String zipcode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	String addr4 = request.getParameter("addr4");
	String phone = request.getParameter("phone");
	
	//비밀 번호 값이 있다면
	if(!pass.equals(pass1)){
%>
	<script>
	alert("비밀번호를 확인");
	history.go(-1);
	//history.back();
	</script>
<%
	}
	//디비 접근. 입력
	String sql = "";
	
	if(pass.equals("")){
		sql="update member2 set membername='"+name+"',email='"+email+"',zipcode='"+zipcode+"',addr1='"+addr1+"',addr2='"+addr3+"',addr4='"+addr4+"',phone='"+phone+"'where memberid='"+session_id+"'";
	      //'"+name+"'
	}else{
		sql="update member2 set membername='"+name+"',email='"+email+"',zipcode='"+zipcode+"',addr1='"+addr1+"',addr2='"+addr3+"',addr4='"+addr4+"',phone='"+phone+"',memberpass='"+pass+"'where memberid='"+session_id+"'";
	}
	
	
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(sql);

	//out.print(sql);
%>

<script>
location.href="/member/member_up.jsp";
</script>