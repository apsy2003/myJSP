<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int dan=Integer.parseInt(request.getParameter("dan")); 
	 /* 문자열이 아닌 숫자기에 성질 변환을 시켜줌 */
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>구구단 출력창</title>
</head>
<body>
	<table border="1" width="800">
		<tr align="center" bgcolor="#ffff66">
			<td colspan="2"> <%= dan %> 단 출력</td>
		</tr>
		<!-- for문을 넣어야 함. -->
		<%
		for(int i=1; i<10; i++){
		%>
		<tr align="center">
			<td width="400"> <%= dan %> * <%=i%> </td>
			<td width="400"><%= i*dan %></td>	
		</tr>
		<% 
		} 
		%>
	</table>

</body>
</html>