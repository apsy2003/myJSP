<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
    <!-- 표현언어기능 활성화 ="false"로 사용됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어의 여러 가지 연산자들</title>
</head>
<body>
	<h2>여러 가지 논리연산자</h2>
	<h2>
		\${(10==10)} && {(20==20)} : ${(10==10) && (20==20)}<br>
		\${(10==10)} and {(20!=20)} : ${(10==10) and (20!=20)}<br><br>
		
		\${(10==10)} || {(20!=30)} : ${(10==10) || (20==30)}<br>
		\${(10!=10)} or {(20!=20)} : ${(10!=10) or (20!=20)}<br><br>
		
		\${!(20==10)} : ${!(20==10)} <br>
		\${not (20==10)} : ${not (20==10)}<br><br>
		
		\${!(20!=10)} : ${!(20!=10)}<br>
		\${not(20!=10)} : ${not(20!=10)}<br><br>   
	</h2>
</body>
</html>