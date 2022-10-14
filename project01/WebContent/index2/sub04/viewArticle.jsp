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
   <title>글보기</title>
	<link rel="stylesheet" href="/project01/index2/sub04/css/viewArticle.css"/>	
	<link rel="stylesheet" href="/project01/index2/sub04/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/index2/sub04/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index/images/index.ico"/>
	<script src="/project01/index2/sub04/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/index2/sub04/js/sub04.js"></script>


   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
   function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
    }

	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
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
</head>
<body>
<%@ include file="main/header.jsp" %>
<section id="viewWrap">
	<div class="view">
		<div class="contentTitle cf">
			<h3 class="hidden">도서관소식</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">도서관소식</li>
						<li class="Icoimg"><a href="/project01/index2/index2.jsp"><img src="/project01/index2/sub04/images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="/project01/index2/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">게시판</li>
						<li class="Icoimg"><img src="/project01/index2/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">게시글 수정</li>
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
					<li class="menutitle"><img src="/project01/index2/sub04/images/lnb_bg.png" alt=""/><span>이용안내</span></li>
					<li class="menu1"><a href="/project01/board/listArticles.do"><span class="Text">도서관소식</span></a></li>
					<li class="menu2"><a href="/project01/index2/sub03/sub03.jsp"><span class="Text">자주하는질문</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/board/listArticles.do"><span class="Text">도서관이용안내</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/index2/sub03/sub03.jsp"><span class="Text">상호대차</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/board/listArticles.do"><span class="Text">모바일앱</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/index2/sub03/sub03.jsp"><span class="Text">스마트도서관</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/board/listArticles.do"><span class="Text">책배달서비스</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="/project01/index2/sub03/sub03.jsp"><span class="Text">전자도서관</span><span class="Img"><img src="/project01/index2/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				</ul>
			</div>
		</div>
		<div class="view_content">
			<form name="frmArticle" method="post"  action="${contextPath}"  enctype="multipart/form-data">
			<div class="view_tit">
				<div class="v_number fl">
				  <div class="v_text fl">
				      글번호
				  </div>
				  <div class="number_input fl" >
				   	<input type="text" class="num_txt" value="${article.articleNO }"  disabled />
				   	<input type="hidden" class="num_no" name="articleNO" value="${article.articleNO}"  />
				  </div>
				</div>
				<div class="v_id fl">
				  <div class="v_user fl">
				      작성자 아이디
				  </div>
				  <div class="user_input fl" >
				    <input type=text class="user_txt" value="${article.id }" name="writer"  disabled />
				  </div>
				</div>
				<div class="v_title fl">
				    <div class="v_Tit fl">
				  	제목 
				    </div>
					<div class="title_input fl">
				    	<input type=text class="title_txt" value="${article.title }"  name="title"  id="i_title" disabled />
				   	</div>   
				</div>
				<div class="v_content fl">
				    <div class="v_con fl">
					내용
				   	</div>
				  	<div class="con_size fl">
				    	<textarea class="con_txt" name="content"  id="i_content"  disabled>${article.content }</textarea>
				   	</div>  
				</div>
				 
				<c:if test="${not empty article.imageFileName && article.imageFileName!='null' }">  
				<div class="v_image fl">
				    <div class="v_img fl">
					이미지
				   	</div>
				   	<div class="img_input fl">
				     	<input  type= "hidden" class="img_txt"  name="originalFileName" value="${article.imageFileName }" />
				    	<img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
				   	</div>   
				</div>  
				<div class="v_file fl">
				    <div class="file_input fl">
				       <input  type="file" class="file_txt" name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);" />
				    </div>
				 </div>
				 </c:if>
				 <div class="v_day fl">
					<div class="v_d fl">
					   등록일자
					</div>
					<div class="day_input fl">
					   <input type=text class="day_txt" value="<fmt:formatDate value="${article.writeDate}" />" disabled />
					</div>   
				 </div>
				 <div id="tr_btn_modify "  >
					<div class="btn_input fl">
					   <input type=button class="btn1" value="수정반영하기"   onClick="fn_modify_article(frmArticle)"  >
				       <input type=button class="btn2" value="취소"  onClick="backToList(frmArticle)">
					</div>   
				  </div>
				    
				  <div  id="tr_btn">
				   <div class="btn_input2 fl">
					   <input type=button class="btn3" value="수정하기" onClick="fn_enable(this.form)">
					   <input type=button class="btn4" value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
					   <input type=button class="btn5" value="리스트로 돌아가기"  onClick="backToList(this.form)">
					    <input type=button class="btn6" value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
				   </div>
				  </div>
			</div>
			</form>
		 </div>
	</div>
</section>
 <%@ include file="../sub04/main/footer.jsp" %>
</body>
</html>