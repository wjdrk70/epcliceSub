<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp" %>

<%
String code=request.getParameter("code");
String uid=request.getParameter("uid");


String sql="delete from "+code+" where uid="+uid+""; 
Connection conn = DriverManager.getConnection(url, user, password);
Statement stmt = conn.createStatement();
stmt.executeUpdate(sql);


%>
<script>
location.href="list.jsp?code=<%=code%>";
</script>