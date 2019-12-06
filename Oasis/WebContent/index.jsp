<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./stylesheet/style.css">
<link rel="stylesheet" type="text/css" href="./stylesheet/reset.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="./js/autoplay.js">
</script>
<meta charset="UTF-8">
<title>oasis</title>
</head>
<body>
   
	<header id="header">
		<div class="container">
		<div class="header">
			<div class="header_menu">
				<a href="#">Artist</a> <a href="#">AlbumList</a> <a href="#">Picture</a>
				<div class="search">
					<input type="text" class="search_bar"> <input type="image" class="search_btn" src="https://img.icons8.com/metro/26/000000/search.png">
				</div>
				<div class="header_login">
				<% 
				if(request.getParameter("id")==null){
				%>
				 <a href="./login/login.jsp">Login</a>
				 <%}else{ %>
				<span style="padding-left:7px;"><%= request.getParameter("id")%>님</span>
                 <a href="index.jsp">Logout</a>
                 <%} %>
                 <span id="result"></span>

				</div>
			</div>
			</div>
		</div>
		<div class="logo">
			<h1>
				<a href="index.jsp"><img src="./img/oasislogo.jpg"></a>
			</h1>
		</div>
	</header>
	
  <section>
  <div class="youtube">
<iframe  id="youtube" width="800" height="600" src="https://www.youtube.com/embed/videoseries?list=PLMpM3Z0118S5OUYicsrjSUjouOgKt-Bdt&autoplay=1&enablejsapi=1"" frameborder="0" ></iframe>
</div>
</section>
  
  <footer id="footer">
  <span class="t1">THIS SITE USES COOKIES. BY CONTINUING TO BROWSE THE SITE, YOU ARE AGREEING TO OUR USE OF COOKIES. WE AND OUR PARTN
  ERS OPERATE GLOBALLY AND USE COOKIES FOR PURPOSES SUCH AS ANALYTICS, PERSONALIZATION, SITE FUNCTIONALITY AND SERVING ADS. TO LEARN MORE, INCLUDING 
  HOW TO MANAGE COOKIES</span>
  </footer>
  
</body>
</html>