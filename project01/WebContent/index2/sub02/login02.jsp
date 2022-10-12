<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>login02(회원가입창)</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="/project01/index2/sub02/css/login02.css"/>	
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/header2.css"/>
	<link rel="stylesheet" href="/project01/index2/sub02/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index/images/index.ico"/>
	<script src="/project01/index2/sub02/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/index2/sub02/js/sub02.js"></script>
<script>
function fn_sendMember(){
   // 자바스크립트에서 <form> 태그의 name으로 접근해 입력한 값들을 얻는다
   var frmMember=document.frmMember;
   var id=frmMember.id.value;
   var pwd=frmMember.pwd.value;
   var name=frmMember.name.value;
   var email=frmMember.email.value;
   var emailRegExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
   if(id.length==0 ||id==""){
      alert("아이디는 필수입니다.");
   }else if(pwd.length==0 ||pwd==""){
      alert("비밀번호는 필수입니다.");
   }else if(name.length==0 ||name==""){
      alert("이름은 필수입니다.");
   }else if(!emailRegExp.test(document.frmMember.email.value)){
	   alert("이메일를 양식에 맞게 입력해주세요.");
	   document.frmMember.email.focus();
		return;
   }else{ 
	  alert("회원가입이 완료되었습니다.");
      // 전송 방법을 post로 지정
      frmMember.method="post";
      // 서블릿 매핑 이름을 member3으로 지정
      frmMember.action="/project01/member/addMember.do";
      // 서블릿으로 전송
      frmMember.submit();
   } 
}
</script>
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
						<li class="Icoimg"><a href="/project01/index2/index2.jsp"><img src="/project01/index2/sub02/images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="/project01/index2/sub02/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">회원정보</li>
						<li class="Icoimg"><img src="/project01/index2/sub02/images/ico_naviArrow.png" alt="우측 화살표"/></li>
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
					<li class="menutitle"><img src="/project01/index2/sub02/images/lnb_bg.png" alt=""/><span>회원가입</span></li>
					<li class="menu2"><a href="/project01/index2/ub02/login01.jsp"><span class="Text">로그인</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">아이디찾기</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">비밀번호 재발급</span><span class="Img"><img src="/project01/index2/sub02/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu1"><a href="/project01/index2/sub02/login02.jsp"><span class="Text">회원가입</span></a></li>
				</ul>
			</div>
			<div class="mainWrap">
				<div class="loginExplain">
					<ul>
						<li class="loTitle"><span class="purple">안양시립도서관</span> 회원가입 안내</li>
						<li>· 도서관 회원가입을 위해 ‘안양시청 통합회원’으로 가입 후, 도서관 신규 회원으로 등록하는 절차가 필요합니다.</li>
						<li>· 아래 안내에 따라 회원가입 절차를 진행 해주시기 바랍니다.</li>
						<li>※ 기존 도서회원으로 핸드폰번호가 변경된 경우 도서관 자료실 담당자에게<br/> 도서회원 핸드폰번호를 변경 요청하거나, 홈페이지 담당자(031-8045-6126)에게 문의하시기 바랍니다.</li>
					</ul>
				</div>
				<div class="maincontent">
					<div class="loginBox">
						<form name="frmMember">
						  <div class="inputBox fl">
								<div class="loginInput1">
									<label for="userId" class="label1">아이디</label>
									<input type="text" id="userId" name="id" placeholder="아이디"/>
								</div>
								<div class="loginInput2">
									<label for="userPw" class="label2">비밀번호</label>
									<input type="password" id="userPw" name="pwd" placeholder="비밀번호"/>
								</div>
								<div class="loginInput3">
									<label for="userPw" class="label3">비밀번호확인</label>
									<input type="password" id="userPw" placeholder="비밀번호확인"/>
								</div>
								<div class="loginInput4">
									<label for="userName" class="label4">이름</label>
									<input type="text" id="userName" name="name" placeholder="이름"/>
								</div>
								<div class="loginInput5">
									<label for="userEmail" class="label5">이메일</label>
									<input type="text" id="userEmail" name="email" placeholder="example@example.com"/>
								</div>
							</div>
							<div class="loginBtn fl">
								<input class="btn1" type="button" value="가입하기" onclick="fn_sendMember()" />
								<input class="btn2" type="reset" value="다시입력" />
							</div>
							
							<!-- <input class="btn1" type="button" value="가입하기" onclick="fn_sendMember()" />
							<input class="btn2" type="reset" value="다시입력" /> -->
							<!-- <hidden> 태그를 이용해 서블릿에게 회원 등록임을 알린다 -->
							<!-- <input  type="hidden" name="command" value="addMember" />	 -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="main/footer.jsp" %>
</body>
</html>