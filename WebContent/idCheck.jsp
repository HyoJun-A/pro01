<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
</style>
</head>
<body>
	<h2>아이디 중복 검사</h2>
	<form action="idCheckPro.jsp" method="post" class="frm" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id ="id" placeholder="8~12 문자 및 숫자 입력" required autofocus>
		<input type="submit" value="중복확인">
	</form>
	<script>
		function invalidCheck(f){
			var id = f.id.value;
			id = id.trim();
			if(id.length<8 || id.legth>12){
				alert("아이디의 글자수는 8글자 이상 12글자 이하 이어야 합니다.");
				return false;
			}
		}
	</script>

</body>
</html>