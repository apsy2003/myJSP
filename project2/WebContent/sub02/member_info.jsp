<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    import="login_01.*" 
    pageEncoding="UTF-8"%>
    <!-- import시키는 이유는 데이터베이스를 사용하기 위해 -->
    <style>
    	h1{text-align:center;}
    </style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<h1>회원 정보 출력</h1>
<% 
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	MemberVO memberVO = new MemberVO();
	memberVO.setName(_name);
	MemberDAO dao=new MemberDAO();
	List membersList=dao.listMembers(memberVO);
%>	
<table border='1' width='800' align='center'>
	<tr align='center' bgcolor='#FFFF66'>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>이메일</td>
		<td>가입일자</td>
	</tr>
<%
	for(int i=0; i < membersList.size(); i++){
		MemberVO vo=(MemberVO) membersList.get(i);
		String id=vo.getId();
		String pwd=vo.getPwd();
		String name=vo.getName();
		String email=vo.getEmail();
		Date joinDate=vo.getJoinDate();
%>	
	<tr align=center>
		<td><%= id %></td>
		<td><%= pwd %></td>
		<td><%= name %></td>
		<td><%= email %></td>
		<td><%= joinDate %></td>
	</tr>
<%	
	}
%>
</body>
</html>