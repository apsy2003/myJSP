<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%> 

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 

<head>

<meta charset="UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/listArticles.do";
    obj.submit();
  }
</script>

 <title>새글 쓰기 창</title>
 
 <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
 		<link rel="stylesheet" href="/project01/sub04/css/articleForm.css"/>	
	<link rel="stylesheet" href="/project01/sub04/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/sub04/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/main/images/index.ico"/>
	<script src="/project01/sub04/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/sub04/js/sub04.js"></script>

</head>
<body>
<%@ include file="../sub04/main/header.jsp" %>
<section id="ArticleWrap">
	<div class="contentTitle cf">
		<h3 class="hidden">도서관소식</h3>
		<div class="Titlebox">
			<div class="Librarytitle">
				<ul class="Info">
					<li class="title">도서관소식</li>
					<li class="Icoimg"><a href="/project01/index.jsp"><img src="/project01/sub04/images/ico_home.png" alt="홈버튼"/></a></li>
					<li class="Icoimg"><img src="/project01/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
					<li class="Icoimg">게시판</li>
					<li class="Icoimg"><img src="/project01/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
					<li class="Icoimg">게시글 작성</li>
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
	<div class="contents">
		<div class="Menubar fl">
			<h2 class="hidden">이용안내</h2>
			<ul>
				<li class="menutitle"><img src="/project01/sub04/images/lnb_bg.png" alt=""/><span>이용안내</span></li>
				<li class="menu1"><a href="/project01/board/listArticles.do"><span class="Text">도서관소식</span></a></li>
				<li class="menu2"><a href="/project01/sub03/sub03.jsp"><span class="Text">자주하는질문</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">도서관이용안내</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">상호대차</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">모바일앱</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">스마트도서관</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">책배달서비스</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">전자도서관</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
			</ul>
		</div>
	</div>	
	<div class="article_content">
	  <form name="articleForm" method="post"   action="${contextPath}/board/addArticle.do"   enctype="multipart/form-data">
	    <div class="article_tit">
	     	<div class="article_bg cf">
		   		<div class="tit1 fl">글제목: </div>
		   		<div class="content1 fl"><input type="text" size="67"  maxlength="500" name="title" /></div>
		 	</div>
			<div class="text1 cf">
				<div class="tit2 fl">글내용: </div>
				<div class="content2 fl"><textarea name="content" rows="10" cols="65" maxlength="4000"></textarea> </div>
	     	</div>
	     </div>
	     <div class="article_img">
	     	<div class="img_file cf">이미지파일 첨부:  </div>
	     	<div class="file cf"> <input type="file" name="imageFileName"  onchange="readURL(this);" /></div>
	     	<div class="img_size fl"><img  id="preview" src="#"   width=200 height=200/></div>
	     </div>	
		 <div class="article_btn">
		    <input type="submit" class="btn1" value="등록하기" />
		    <input type=button class="btn2" value="목록보기"onClick="backToList(this.form)" />
	     </div>
	  </form>
	</div>
</section>	
<%@ include file="../sub04/main/footer.jsp" %>
</body>
</html>