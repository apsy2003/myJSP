<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>
 
<head>
	<meta charset="UTF-8">
	<title>회원 정보 수정창</title>
<style>
	form, input {border : 1px;}
	#modWrap{width:100%; height:832px;}
	.mod{width:1420px; margin:0 auto; padding-top:120px;}
	.modtable{width:900px; height:600px; margin:0 auto;}
	.cls1 {font-size : 40px; text-align : center; margin-bottom:20px; padding-top:60px;}
	.modtr{width:200px; height:50px;}
	p{margin-left:30px;}
	.two>input{border:1px solid #555555; margin-left:15px; width:200px; height:30px;}
	.mod_form{width:500px; height:400px; margin:0 auto;}
	.btn>td>input{width:100px; height:60px; margin:30px 8px 0px 8px;}
	.btn1{background:#3d3884; color:#ffffff; cursor:pointer;}
	.btn2{background:#cccccc; color:#666666; cursor:pointer;}
</style>
</head>
<body>
	<%@ include file="./main/header.jsp" %>
	<section id="modWrap">
		<div class="mod">
			<div class="modtable">
				<h1 class="cls1">회원 정보 수정창</h1>
				<form class="mod_form" method="post" action="${contextPath}/member/modMember.do?id=${memInfo.id}">
					<table align="center">
						<tr class="modtr">
							<td width="200">
								<p align="right">아이디</p>
							</td>
							<td width="400" height="30" class="two">
								<input type="text" name="id" value="${memInfo.id}" disabled />
							</td>
						</tr>
						<tr class="modtr">
							<td width="200">
								<p align="right">비밀번호</p>
							</td>
							<td width="400" height="30" class="two">
								<input type="password" name="pwd" value="${memInfo.pwd}" />
							</td>
						</tr>
						<tr class="modtr">
							<td width="200">
								<p align="right">이름</p>
							</td>
							<td width="400" height="30" class="two">
								<input type="text" name="name" value="${memInfo.name}" />
							</td>
						</tr>
						<tr class="modtr">
							<td width="200">
								<p align="right">이메일</p>
							</td>
							<td width="400" height="30" class="two">
								<input type="text" name="email" value="${memInfo.email}" />
							</td>
						</tr>
						<tr class="modtr">
							<td width="200">
								<p align="right">가입일</p>
							</td>
							<td width="400" class="two">
								<input type="text" name="joinDate" value="${memInfo.joinDate}" disabled />
							</td>
						</tr>
						<tr align="center" class="btn">
							<td colspan="2" width="400">
								<input type="submit" class="btn1" value="수정하기" />
								<input type="reset" class="btn2" value="다시입력" />
							</td>
						</tr>
					</table>
				</form>
			</div>	
		</div>	
	</section>		
	<%@ include file="./main/footer.jsp" %>
</body>
</html>