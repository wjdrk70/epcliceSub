<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>
<%
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String pass=request.getParameter("pass");

String sql = "select * from member2 where memberid='" + id + "' and memberpass='"+pass+"'";
Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sql);

String memberid="";
String memberpass="";
String membername="";
String memberlevel="";

if(rs.next()){
	memberid=rs.getString("memberid");
	memberpass=rs.getString("memberpass");
	membername=rs.getString("membername");
	memberlevel=rs.getString("level");
}
//out.print(memberid);
if(memberid.equals(null)){
%>
	<script>
	alert("아이디가 없거나 비밀번호가 일치하지않습니다.");
	</script>
<%
}else{
	session.setAttribute("id",memberid);
	session.setAttribute("name",membername);
	session.setAttribute("level",memberlevel);
}
%>

<script>
location.href="/";
</script>


