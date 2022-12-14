<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>login01(로그인창)</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="css/login01.css"/>	
	<link rel="shortcut icon" href="../main/images/index.ico"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/sub02.js"></script>

	<script>
		function fn_sendMember(){
		   // 자바스크립트에서 <form> 태그의 name으로 접근해 입력한 값들을 얻는다
		   var frmMember=document.frmlogin;
		   var id=frmMember.userId.value;
		   var pwd=frmMember.userPw.value;
		   if(id.length==0 ||id==""){
		      alert("아이디는 필수입니다.");
		   }else if(pwd.length==0 ||pwd==""){
		      alert("비밀번호는 필수입니다.");
		   }else{
		      // 전송 방법을 post로 지정
		      frmMember.method="post";
		      // 서블릿 매핑 이름을 member3으로 지정
		      frmMember.action="/project01/member/*";
		      // 서블릿으로 전송
		      frmMember.submit();
		   } 
		}
	</script>
</head>
<body>
	<%@ include file="./main/header.jsp" %>
	<section id="container">
		<div class="contentTitle cf">
			<h3 class="hidden">로그인</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">로그인</li>
						<li class="Icoimg"><a href="#"><img src="images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">이용안내</li>
						<li class="Icoimg"><img src="images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">로그인</li>
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
					<li class="menutitle"><img src="images/lnb_bg.png" alt=""/><span>로그인</span></li>
					<li class="menu1"><a href="login01.jsp"><span class="Text">로그인</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">아이디찾기</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">비밀번호 재발급</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="login02.jsp"><span class="Text">회원가입</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				</ul>
			</div>
			<div class="mainWrap">
				<div class="maincontent">
					<div class="loginBox">
						<div class="loginImg fl">
							<img src="images/img_login.png" alt="로그인이미지"/>
						</div>
						<div class="loginInput cf">
							<form name="frmlogin" method="post" encType="UTF-8">	
								<div class="InputBox fl">
									<div class="loginInput1">
										<input type="text" id="userId" name="user_id" placeholder="아이디" value="admin" />
									</div>
									<div class="loginInput2">
										<input type="password" id="userPw" name="user_pwd" placeholder="비밀번호" value="admin" />
									</div>
								</div>
								<div class="loginBtn fl">
								<p><a href="/project01/index2/index2.jsp"><strong>로그인</strong></a></p>
								<!-- <input type="submit" onClick="fn_sendMember()" id="loginbutton" title="로그인" value="로그인" class="loginbtn1"/>
								<input  type="hidden" name="command" value="addMember" /> -->
								
								</div>
							</form>
							<div class="loginText">
								<ul>
									<li class="ID"><a href="#">아이디 찾기</a></li>
									<li class="mark"><a href="#">|</a></li>
									<li class="PW"><a href="#">비밀번호재발급</a></li>
									<li class="mark"><a href="#">|</a></li>
									<li class="JOIN"><a href="login02.jsp">회원가입</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="loginExplain">
						<ul>
							<li>· 안양시 통합회원으로 가입한 경우 <a href="#"><span>도서관신규회원등록(새창)</span></a> 페이지에서 최초 1회 로그인 후 도서관 홈페이지 이용이 가능합니다.</li>
							<li>· 로그인이 안되시는 경우 한/영 키와 Caps Lock 키가 눌러져 있지 않은지 확인하세요.</li>
							<li>· 계속해서 로그인이 안되시는 경우 관리자에게 문의하시기 바랍니다.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="./main/footer.jsp" %>
</body>
</html>