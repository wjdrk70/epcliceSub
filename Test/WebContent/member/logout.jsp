<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/header.jsp" %>
<%
//세션 전체 삭제
 session.invalidate();
%>

<script>
location.href="/";
</script>
