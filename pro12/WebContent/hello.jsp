<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%!
 	String name = "듀크";
 	public String getName(){return name;}
 %>   
<!DOCTYPE html>
<!-- 변수 선언문 : String name = "듀크"; 가 있는 괄호가 추가된 것(5~8행). -->
<html>
<head>
	<meta charset="UTF-8">
	<title>선언문 연습</title>
</head>
<body>
	<!-- 표현식 : 문장 중간에  <%=name %> 들어간 형태 -->
	<h1>안녕하세요 <%=name %>님!!</h1>
</body>
</html>