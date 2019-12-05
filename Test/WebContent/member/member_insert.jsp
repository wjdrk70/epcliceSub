<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String zipcode = request.getParameter("zipcode");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	String addr4 = request.getParameter("addr4");
	String phone = request.getParameter("phone");

	//디비 접근. 입력
	String sql = "insert into member2 (memberid,memberpass,membername,email,phone,zipcode,addr1,addr2,addr3,addr4) values ('"+ id + "','" + pass + "','" + name + "','" + email + "','" + phone + "','" + zipcode + "','" + addr1+ "','" +addr2+ "','" +addr3+ "','" +addr4+ "')";
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(sql);

	//out.print(sql);

	//회원가입 여부
	String sql2 = "select * from member2 where memberid='" + id + "'";
	Statement stmt2 = conn.createStatement();
	ResultSet rs2 = stmt2.executeQuery(sql2);

	String id2 = "";
	String pass2="";
	int level2=0;
	
	if (rs2.next()) {//1건 일 겨우
		id2 = rs2.getString("memberid");
	    pass2=rs2.getString("memberpass");
	    level2=rs2.getInt("level");
	}
	
	if(id2.equals(null)){
%>
<script>
alert("회원가입이 이루어지지 않았습니다.");
history.go(-1);
</script>
<%	
	}else{//회원가입이 제대로 이루어진경우
%>
<table width=600 align=center>
<tr>
   <td><%=id2%>님의 회원가입을 축하합니다</td>
</tr>
<tr>
<td><a href="/">메인페이지 이동</a> | <a href="/member/login.jsp">로그인페이지로 이동</a></td>
</tr>
</table>
<%
	}
%>