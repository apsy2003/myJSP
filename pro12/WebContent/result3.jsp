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
		if(user_id.equals("admin")){
%>
	<h1>관리자로 로그인 했습니다.</h1>
	<form>	
		<input type="button" value="회원정보 삭제하기">
		<input type="button" value="회원정보 수정하기">
	</form>
<% 
		}else{
%>
		<h1> 환영합니다. <%= user_id %> 님!!!</h1>
<%		
		}
	}	
%>
<%-- 괄호 잘 체크할 것 --%>
</body>
</html>