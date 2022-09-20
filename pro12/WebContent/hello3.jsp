<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
 	public String getName(){return name;}
%> 
<% String age=request.getParameter("age"); %>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>스크립틀릿 연습</title>
</head>
<body>
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>살입니다!!</h1>	
	<!--변수선언을 통해 표현식에 전달할 수 있다. 이런 경우, 실행시 링크에 http://127.0.0.1:8090/pro12/hello2.jsp?age=20 나잇 값을 적용해줘야 확인 가능함.-->
	<h1>키는 <%=180 %>cm입니다!!</h1> <!-- 고정숫자를 넣어 표현식에 전달할 수 있다. -->
	<h1>나이+10은 <%=Integer.parseInt(age)+10 %>살입니다!!</h1> <!-- 변수값을 계산시켜 넣어 표현식에 전달할 수 있다. -->
</body>
</html>