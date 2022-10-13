<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 
<head>
<meta charset="UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
  function backToList(obj){
	 obj.action="${contextPath}/board/listArticles.do";
	 obj.submit();
  }
 
  function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#preview').attr('src', e.target.result);
          }
          reader.readAsDataURL(input.files[0]);
      }
  }  
</script> 
<link rel="stylesheet" href="/project01/sub04/css/replyForm.css"/>	
	<link rel="stylesheet" href="/project01/sub04/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/sub04/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index/images/index.ico"/>
	<script src="/project01/sub04/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/sub04/js/sub04.js"></script>
<title>답글쓰기 페이지</title>
</head>
<body>
<%@ include file="../sub04/main/header.jsp" %>
 <section id="replyWrap">
	<div class="reply">
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
						<li class="Icoimg">게시글 답변 작성</li>
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
	</div>	
	<div class="reply_content">
  	<form name="frmReply" method="post"  action="${contextPath}/board/addReply.do"   enctype="multipart/form-data">
    <div class="reply_tit">
    	<div class="r_writer fl">
			<div class="r_wri fl"> 글쓴이 </div>
			<input type="text" class="wri_txt" size="5" value="admin" disabled />
		</div>
		<div class="r_title fl">
			<div class="r_tit fl">글제목 </div>
			<input type="text" class="tit_txt" size="67"  maxlength="100" name="title" />
		</div>
		<div class="r_content fl">
			<div class="r_con fl"><br>글내용</div>
			<textarea name="content" class="content_txt" rows="10" cols="65" maxlength="4000"> </textarea>
		</div>
		<div class="r_images fl">
			<div class="r_img fl">이미지파일 첨부</div>
			<input type="file" class="file_txt" name="imageFileName"  onchange="readURL(this);" />
            <img  id="preview" src="#"   width=200 height=200/>
		</div>
		<div class="r_btn fl">
			<input type=submit class="btn1 fl" value="답글반영하기" />
			<input type=button class="btn2 fl" value="취소"onClick="backToList(this.form)" />
		</div>
    </div>
  </form>
 </div> 
</section> 
  <%@ include file="../sub04/main/footer.jsp" %>
</body>
</html>