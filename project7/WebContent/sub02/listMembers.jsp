<%@ page language="java" contentType="text/html; charset=UTF-8"
	import=" java.util.*, login_01.*"
	pageEncoding="UTF-8"
	isELIgnored="false" 
%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 

<%
	request.setCharacterEncoding("UTF-8");
%>  

<!DOCTYPE html>
<html>
<head>
	<c:choose>
		<c:when test='${msg=="addMember"}'>
			<script>
				window.onload = function() {
					alert("회원을 등록했습니다.");
				}
			</script>
		</c:when>
		<c:when test='${msg=="modified"}'>
			<script>
				window.onload = function() {
					alert("회원 정보를 수정했습니다.");
				}
			</script>
		</c:when>
		<c:when test= '${msg=="deleted"}'>
			<script>
				window.onload = function() {
					alert("회원 정보를 삭제했습니다.");
				} 
			</script>
		</c:when>
	</c:choose>
	<meta charset="UTF-8">
	<title>회원정보 출력창</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	
	<script src="${contextPath}/sub02/js/jquery-1.7.1.min.js"></script>
	<script src="${contextPath}/sub02/js/sub02.js"></script>
	
	
<style>
	#listWrap{width:100%; height:832px;}
	.list{width:1420px; margin:0 auto; padding-top:140px;}
	.cls1{margin-bottom:30px; font-size : 40px; text-align : center;}
	.cls2{margin-top:30px; font-size : 20px; text-align : center;}
</style>
</head>
<body>
<%@ include file="./main/header.jsp" %>
	<section id = "listWrap">
		<div class="list">
			<p class="cls1">회원정보</p>
			<table align="center" border="1" >
				<tr align="center" bgcolor="lightgreen">
					<td width="7%"><b>아이디</b></td>
					<td width="7%"><b>비밀번호</b></td>
					<td width="7%"><b>이름</b></td>
					<td width="7%"><b>이메일</b></td>
					<td width="7%"><b>가입일</b></td>
					<td width="7%"><b>수정</b></td>
					<td width="7%"><b>삭제</b></td> 
				</tr>
				<c:choose>
					<c:when test="${empty membersList}" >
						<tr>
							<td colspan=5>
								<b>등록된 회원이 없습니다.</b>
							</td>  
						</tr>
					</c:when>  
					<c:when test="${!empty membersList}" >
						<c:forEach  var="mem" items="${membersList}" >
							<tr align="center">
								<td>${mem.id}</td>
								<td>${mem.pwd}</td>
								<td>${mem.name}</td>     
								<td>${mem.email}</td>     
								<td>${mem.joinDate}</td>
								<td><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></td>
								<td><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></td>       
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>  
			<a href="${contextPath}/sub02/login02.jsp"><p class="cls2">회원 가입하기</p></a>
		</div>
	</section>	
	<%@ include file="./main/footer.jsp" %>
</body>
</html>