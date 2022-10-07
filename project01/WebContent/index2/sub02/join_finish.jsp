<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>join_finish(회원가입 완료 창)</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="/project01/index2/sub02/css/join.css"/>	
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index2/main/images/index.ico"/>
	<script src="/project01/index2/sub02/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/index2/sub02/js/sub02.js"></script>
</head>
<body>
	<%@ include file="main/header2.jsp" %>
	<section id="container">
		<div class="contentTitle cf">
			<h3 class="hidden">회원가입</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">회원가입</li>
						<li class="Icoimg"><a href="/project01/index2/index2.jsp"><img src="/project01/index2/images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="/project01/index2/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">회원정보</li>
						<li class="Icoimg"><img src="/project01/index2/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">회원가입</li>
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
					<li class="menutitle"><img src="/project01/index2/images/lnb_bg.png" alt=""/><span>회원가입</span></li>
					<li class="menu2"><a href="/project01/sub02/login01.jsp"><span class="Text">로그인</span><span class="Img"><img src="/project01/index2/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">아이디찾기</span><span class="Img"><img src="/project01/index2/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">비밀번호 재발급</span><span class="Img"><img src="/project01/index2/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu1"><a href="/project01/index2/sub02/login02.jsp"><span class="Text">회원가입</span></a></li>
				</ul>
			</div>
			<div class="mainWrap">
				<div class="maincontent">
					<div class="loginBox">
						<form name="frmMember">
							<div class="loginExplain fl">
								<ul>
									<li class="loTitle"><span class="purple">안양시립도서관</span> 회원가입 완료</li>
									<li class="loText">· 안양시립도서관의 회원되심을 진심으로 축하드립니다.</li>
									<li class="loText">· 아래 안내에 따라 로그인 후, 사이트를 이용해주시기 바랍니다.</li>
									<li class="loText">※ 기존 도서회원으로 핸드폰번호가 변경된 경우 도서관 자료실 담당자에게<br/> 도서회원 핸드폰번호를 변경 요청하거나, 홈페이지 담당자(031-8045-6126)에게 문의하시기 바랍니다.</li>
								</ul>
							</div>
							<div class="loginBtn fl">
								<p><a href="/project01/index2/sub02/login01.jsp">로그인 하러가기</a></p>
								<!-- <input type="submit" onClick="fn_sendMember()" id="loginbutton" title="로그인" value="로그인" class="loginbtn1"/>
								<input  type="hidden" name="command" value="addMember" /> -->
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="main/footer.jsp" %>
</body>
</html>