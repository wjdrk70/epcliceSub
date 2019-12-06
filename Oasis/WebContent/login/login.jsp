<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="google-signin-client_id" content="678430411189-nbo0ttoj8tcss9oqp75b09m5b8n2jif6.apps.googleusercontent.com">
<title>login</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://apis.google.com/js/client:platform.js?onload=startApp"></script>
<script type="text/javascript" src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
<link rel="stylesheet" type="text/css"
	href="../stylesheet/loginstyle.css">
</head>
<body>
<script>

function loginCheck(){
	var username=logcheck.id.value;
	var password=logcheck.pw.value;
 if(username==""&&password==""){
	 alert("input the both");
 }else if(username==""){
	 alert("input the ID");
 }else if(password==""){
	 alert("input the PASS");
 }
	
}
</script>
 


	<div class="box">
		<h1>Login</h1>
		<form action="authentication.jsp" name="logcheck" method="POST">
			<div class="input-box">
				<input type="text" name="id" required /> <label for="">Username</label>
			</div>
			<div class="input-box">
				<input type="password" name="pw" required /> <label for="">Password</label>
			</div>
		
			<input type="submit" onclick="loginCheck()"  value="Login" /> 
			<input type="button" id="loginBtn" value="Google Login" />
			<div id="googleSigninButton" style="display:none;"></div>
			
			<a href="../login/sign_up.jsp" style="text-decoration:none" ><div style="color: white;">Account click here!</div></a>

		

	
	<script>
		$("#loginBtn").on("click", function(){
			$(".abcRioButtonContents").trigger("click");
		});
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			
		}
		function onLoad() {
			gapi.load('auth2,signin2', function() {
				var auth2 = gapi.auth2.init();
				auth2.then(function() {
					var isSignedIn = auth2.isSignedIn.get();
					var currentUser = auth2.currentUser.get();
					gapi.signin2.render('googleSigninButton');
				});
			});
		}
	</script>
		</form>
	</div>

</body>
</html>