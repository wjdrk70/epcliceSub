<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/dbconnect.jsp" %>
<%@ page import="java.sql.*"%>

<%

//session.setMaxInactiveInterval(1*60);

//세션값 처리
String session_id="";
String session_name="";
String session_level="";

if(session.getAttribute("id")!=null){
session_id=(String)session.getAttribute("id");//id
session_name=(String)session.getAttribute("name");//id
session_level=(String)session.getAttribute("level");//id
}
%>
아이디 : <%=session_id %><br>
이름 : <%=session_name %><br>
레벨 : <%=session_level %><br>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/basic.css"/>
</head>
<body>
<table width=100% height=80 border=1>
	<tr>
		<td width=30% align=left><a href="/">로고</a></td>
		<td width=30% align=center>...</td>
		<td width=30% align=right>
		<%if(session_id.equals("")){ %>
		<a href="/member/login.jsp">로그인</a> | 
		<a href="/member/member_in.jsp">회원가입</a>
		<%}else{ %>
		    <a href="/member/logout.jsp">로그아웃</a>
		    <a href="/member/member_up.jsp">회원수정</a>
		<%} %>
		</td>
	</tr>
</table>
<table width=100%>
	<tr>
		<td align=left><a href="/company.jsp">회사소개</a></td>
		<td align=left><a href="">자유게시판</a></td>
		<td align=left><a href="">파일게시판</a></td>
	</tr>
</table>