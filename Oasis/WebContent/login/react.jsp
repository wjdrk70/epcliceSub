<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="https://accounts.google.com/o/oauth2/token">
<!-- 로그인으로 얻은 code를 여기에 넣는다. -->
<input type="text" name="code"> <br />
<!-- 클라이언트 ID를 넣는다. -->
<input type="text" name="client_id" value="클라이언트 ID"> <br />
<!-- 클라이언트 보안 키를 넣는다. -->
<input type="text" name="client_secret" value="클라이언트 보안 key"> <br />
<!-- 등록한 리디렉트 주소를 여기에 넣는다. -->
<input type="text" name="redirect_uri" value="http://localhost/redirect.html"> <br />
<!-- 고정값 -->
<input type="text" name="grant_type" value="authorization_code"> <br />
<input type="submit">
</form>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
// 주소 창에 있는 parameter를 취득한다.
function getParameter(name){
var list = location.search.substring(1).split('&');
for(var i=0;i<list.length;i++){
var data = list[i].split('=');
if(data.length === 2){
if(data[0] === name){
return data[1];
}
}
}
return null;
}
// 파라미터 code를 취득하고 URL 디코딩해서 input code에 넣는다.
$("input[name=code]").val(decodeURIComponent(getParameter('code')));
</script>



</body>
</html>