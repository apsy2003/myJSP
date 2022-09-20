<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. %@디렉티브 -->
<!-- 2. %선언문(변수선언) -->
<!-- 3. %=표현식(변수) -->
<!-- 4. 스크립트릿(변수선언문장) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과출력창</title>
</head>
<body>

	<h1>결과 출력</h1>
	<!-- request.getPrarameter를 이용해서 선언해야함. -->
	<%
		request.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
	%>
	<!-- 선언 받은 값이 아래에 적용됨. -->
	<h1>아이디 : <%= user_id %></h1>
	<h1>아이디 : <%= user_pw %></h1>
	
	
</body>
</html>