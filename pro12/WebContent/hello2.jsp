<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "이순신";
 	public String getName(){return name;}
%> 
<% String age=request.getParameter("age"); %>   
<!-- 8행에 쓴 것을 스트릿틀립이라고 한다. -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>스트립틀릿 연습</title>
</head>
<body>
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>살 입니다!!</h1>
</body>
</html>

<!-- 링크에 http://127.0.0.1:8090/pro12/hello2.jsp?age=20 이렇게 쓰면 나이값이 null이 아닌 링크에 쓴 값으로 나옴. -->