<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 

  <script>
function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
$("span#result").html("email : "+profile.getEmail()+"Hey mate! Good to see u!");
}</script>

</body>
</html>