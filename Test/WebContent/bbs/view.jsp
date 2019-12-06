<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<%
String code = request.getParameter("code");
String uid = request.getParameter("uid");
%>

<%@ include file = "title.jsp" %>

<%
Connection conn = DriverManager.getConnection(url, user, password);
String sql = "select * from "+code+" where uid = "+uid+"";
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sql);//select

String gongji = "";
String gongji_title = "";
String subject = "";
String comment = "";
String file1_o = "";

if(rs.next()){
	gongji = rs.getString("gongji");
	subject = rs.getString("subject");
	comment = rs.getString("comment");
	file1_o = rs.getString("file1_o");
	
	if(gongji.equals("1")){
		gongji_title = "공지글";
	}else if(gongji.equals("2")){
		gongji_title = "일반글";
	}else{
		gongji_title = "비밀글";
	}
}
%>
<table width=600 align=center>
	<tr>
		<td><b>[<%=bbs_title %>]</b></td>
	</tr>
</table>
<table width=600 align=center border=0>
	<tr>
		<td width=80>옵션</td>
		<td><%=gongji_title %></td>
	</tr>
	<tr>
		<td width=80>제목</td>
		<td><%=subject %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=comment %></td>
	</tr>
	<tr>
		<td>첨부</td>
		<td><a href="/upload/<%=file1_o %>" download><%=file1_o %></a></td>
	</tr>
</table>
<table width=600 align=center border=0>
	<tr>
		<td align=left><a href="list.jsp?code=<%=code%>">[목록]</a></td>
		<td align=right>
			[답변] 
			<a href="modify.jsp?code=<%=code%>&uid=<%=uid%>">[수정]</a> 
			<a href="delete.jsp?code=<%=code%>&uid=<%=uid%>">[삭제]</a>
		</td>
	</tr>
</table>

<%@ include file="/footer.jsp" %>