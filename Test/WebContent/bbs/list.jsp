<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<%
String code = request.getParameter("code");//테이블 명
%>

<%@ include file = "title.jsp" %>

<%
//총게시물 수
String sql = "select count(*) as total_count from "+code+"";
Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sql);//select

int total_record = 0;//총 게시물 수 변수
if(rs.next()){
	total_record = rs.getInt("total_count");
}
%>
<table width=600 align=center>
	<tr>
		<td><b>[<%=bbs_title %>]</b></td>
	</tr>
</table>
<table width=600 align=center>
	<tr><td colspan=4>Total : <%=total_record %></td></tr>
	<tr><td colspan=4 bgcolor=black width=100% height=1></td></tr>
	<tr>
		<td width=50 align=center>No</td>
		<td width=360>제목</td>
		<td width=100 align=center>글쓴이</td>
		<td width=80 align=center>조회수</td>
	</tr>
	<tr><td colspan=4 bgcolor=black width=100% height=1></td></tr>
<%
String sql_list = "select * from "+code+"";
Connection conn_list = DriverManager.getConnection(url, user, password);
Statement stmt_list = conn_list.createStatement();
ResultSet rs_list = stmt_list.executeQuery(sql_list);

while(rs_list.next()){
	int uid = rs_list.getInt("uid");
	String subject = rs_list.getString("subject");
	String id = rs_list.getString("id");
	int ref = rs_list.getInt("ref");
%>	
	<tr>
		<td align=center>1</td>
		<td><a href="view.jsp?code=<%=code%>&uid=<%=uid%>"><%=subject %></a></td>
		<td align=center><%=id %></td>
		<td align=center><%=ref %></td>
	</tr>
	<tr>
		<td colspan=4 width=100% height=1 bgcolor="#dddddd"></td>
	</tr>
<%
}
%>
</table>
<table width=600 align=center>
	<tr>
		<td>[새로고침]</td>
		<td align=right><a href="write.jsp?code=<%=code%>">[글쓰기]</a></td>
	</tr>
</table>
<table width=600 align=center>
	<tr>
		<td align=center><< 1 . 2 . 3 . 4 >></td>
	</tr>
</table>
<table width=600 align=center>
	<tr>
		<td>
			<select name="">
				<option value=""></option>
				<option value=""></option>
				<option value=""></option>
			</select>
		</td>
		<td><input name="" value=""></td>
		<td><input type="submit" value="검색"></td>
	</tr>
</table>

<%@ include file="/footer.jsp" %>


