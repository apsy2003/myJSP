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
	<link rel="stylesheet" href="/project01/index2/sub02/css/listMembers.css"/>	
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index/images/index.ico"/>
	<script src="/project01/index2/sub02/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/index2/sub02/js/sub02.js"></script>
</head>
<body>
<%@ include file="./main/header.jsp" %>

	<section id="container">
		<div class="contentTitle cf">
			<h3 class="hidden">회원정보</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">회원정보</li>
						<li class="Icoimg"><a href="/project01/index2/index2.jsp"><img src="/project01/index2/sub02/images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="/project01/index2/sub02/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">회원</li>
						<li class="Icoimg"><img src="/project01/index2/sub02/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">회원관리</li>
					</ul>
					<ul class="Icon1 fr">
						<li><a href="#"></a></li>
					</ul>
					<ul class="Icon2 fr">
						<li><a href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="contents">
			<div class="Menubar fl">
				<h2 class="hidden">회원정보</h2>
				<ul>
					<li class="menutitle"><img src="/project01/index2/sub02/images/lnb_bg.png" alt=""/><span>회원정보</span></li>
					<li class="menu2"><a href="/project01/index2/sub02/login01.jsp"><span class="Text">회원로그인</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/index2/sub02/login02.jsp"><span class="Text">회원가입</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu1"><a href="/project01/index2/member/listMembers.do"><span class="Text">회원관리</span></a></li>
					<li class="menu2"><a href="/project01/index2/sub04/sub04.jsp"><span class="Text">도서관소식</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/index2/sub03/sub03.jsp"><span class="Text">자주하는질문</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				</ul>
			</div>
		</div>
		<div class="list_bg">
			<div class="list_form">		
				<div class="list_tit">
					<div class="width130"><b>아이디</b></div>
					<div class="width130"><b>비밀번호</b></div>
					<div class="width130"><b>이름</b></div>
					<div class="width350"><b>이메일</b></div>
					<div class="width130"><b>가입일</b></div>
					<div class="width129"><b>수정</b></div>
					<div class="width129"><b>삭제</b></div> 
				</div>
			</div>		
			<c:choose>
				<c:when test="${empty membersList}" >
					<div class="content">
						<div>
							<div>
								<b><span style="font-size:9pt; text-align:center;">등록된 회원이 없습니다.</span></b>
							</div>
						</div>
					</div>	
				</c:when>  
				<c:when test="${!empty membersList}" >
					<c:forEach  var="mem" items="${membersList}" >
						<div class="content">
								<div class="con_id fl">${mem.id}</div>
								<div class="con_pwd fl">${mem.pwd}</div>
								<div class="con_name fl">${mem.name}</div>     
								<div class="con_email fl">${mem.email}</div>     
								<div class="con_joindate fl">${mem.joinDate}</div>
								<div class="con_mod fl"><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></div>
								<div class="con_del fl"><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></div>       
						</div>
						</c:forEach>
				</c:when>
			</c:choose>
			<div class="Btns fl">  
				<p class="home_Btn"><a href="${contextPath}/index2/index2.jsp">홈으로가기</a></p>
				<p class="finish_Btn"><a href="${contextPath}/sub02/join_finish.jsp">회원가입완료안내</a></p>
				<p class="login_Btn"><a href="${contextPath}/sub02/login01.jsp">로그인하러가기</a></p>
			</div>
		</div>
		
		
		
	</section>	
	<%@ include file="./main/footer.jsp" %>
</body>
</html>