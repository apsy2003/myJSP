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
   <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="css/sub04.css"/>
	<link rel="shortcut icon" href="../main/images/index.ico"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/sub04.js"></script>
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
   
   <style>
 		 #viewWrap{width:100%; height:832px;}
		.view{width:1420px; margin:0 auto; padding-top:12%;}
		table{margin:0 auto; margin-bottom:30px;}
   </style>
</head>
<body>
<%@ include file="./main/header.jsp" %>
<section id="viewWrap">
	<div class="view">
		<form name="frmArticle" method="post"   enctype="multipart/form-data">
			<table  border="0" align="center" >
			  <tr>
				   <td width="150" align="center" bgcolor="#FF9933">
				      글번호
				   </td>
				   <td >
				    <input type="text"  value="${article.articleNO }"  disabled />
				    <input type="hidden" name="articleNO" value="${article.articleNO}"  />
				   </td>
			  </tr>
			  <tr>
				   <td width="150" align="center" bgcolor="#FF9933">
				      작성자 아이디
				   </td>
				   <td >
				    <input type="text" value="${article.id }" name="id"  disabled />
				   </td>
			  </tr>
			  <tr>
				   <td width="150" align="center" bgcolor="#FF9933">
				      제목 
				   </td>
				   <td>
				    <input type="text" value="${article.title }"  name="title"  id="i_title" disabled />
				   </td>   
			  </tr>
			  <tr>
				   <td width="150" align="center" bgcolor="#FF9933">
				      내용
				   </td>
				   <td>
				    <textarea rows="20" cols="60"  name="content"  id="i_content"  disabled />${article.content }</textarea>
				   </td>  
			  </tr>
			 
			<c:if test="${not empty article.imageFileName && article.imageFileName!='null' }">  
			<tr>
				   <td width="150" align="center" bgcolor="#FF9933"  rowspan="2">
				      이미지
				   </td>
				   <td>
				     <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
				    <img src="${contextPath}/download.do?imageFileName=${article.imageFileName}&articleNO=${article.articleNO }"   id="preview"  /><br>
				       
				   </td>   
			  </tr>  
			  <tr>
			    <td>
			       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
			    </td>
			  </tr>
			 </c:if>
			  <tr>
				   <td width="150" align="center" bgcolor="#FF9933">
				      등록일자
				   </td>
				   <td>
				    <input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled />
				   </td>   
			  </tr>
			  <tr   id="tr_btn_modify"  >
				   <td colspan="2"   align="center" >
				       <input type=button value="수정하기"   onClick="fn_modify_article(frmArticle)"  >
			           <input type=button value="취소"  onClick="backToList(frmArticle)">
				   </td>   
			  </tr>
			    
			  <tr  id="tr_btn">
			   <td colspan=2 align="center">
			     <%-- <c:if test="${member.id == article.id }">
				    <input type=button value="수정하기" onClick="fn_enable(this.form)">
				    <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
				  </c:if> --%>
				  <input type=button value="수정하기" onClick="fn_enable(this.form)">
				  <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
				  <input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
				  <input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
			   </td>
			 </tr>
			</table>
		</form>
	 </div>
 </section>
 <%@ include file="./main/footer.jsp" %>
</body>
</html>