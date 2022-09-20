<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
%>
<!-- 1. %@디렉티브(jsp 문서 형식 선언) -->
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
<!-- || 는 or를 의미 즉, 아이디값을 안넣었거나 아이디를 넣은 경우의 if문 -->
<% 
	if(user_id==null || user_id.length()==0){
%>
	아이디를 입력하세요.<br>
	<a href="/pro12/login.html">로그인 하기</a>
<% 	
	} else {
%>
		<h1>아이디 : <%= user_id %></h1>
		<h1>아이디 : <%= user_pw %></h1>
<%		
	}
%>
<%-- if문이 스트립틀릿 안에 적용이 되었기에, if문 진행시 사이사이 괄호를 <%로 적용시켜줘야 한다. --%>
</body>
</html>