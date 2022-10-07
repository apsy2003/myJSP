<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set  var="articlesList"  value="${articlesMap.articlesList}" />
<c:set  var="totArticles"  value="${articlesMap.totArticles}" />
<c:set  var="section"  value="${articlesMap.section}" />
<c:set  var="pageNum"  value="${articlesMap.pageNum}" />

<%
  request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글목록창</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
 	<link rel="stylesheet" href="/project01/sub04/css/listArticles.css"/>	
	<link rel="stylesheet" href="/project01/sub04/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/sub04/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/main/images/index.ico"/>
	<script src="/project01/sub04/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/sub04/js/sub04.js"></script>


</head>
<body>

<%@ include file="./main/header.jsp" %>
<section id="listWrap">
	<div class="contentTitle cf">
		<h3 class="hidden">도서관소식</h3>
		<div class="Titlebox">
			<div class="Librarytitle">
				<ul class="Info">
					<li class="title">도서관 소식</li>
					<li class="Icoimg"><a href="/project01/index.jsp"><img src="/project01/sub04/images/ico_home.png" alt="홈버튼"/></a></li>
					<li class="Icoimg"><img src="/project01/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
					<li class="Icoimg">이용안내</li>
					<li class="Icoimg"><img src="/project01/sub04/images/ico_naviArrow.png" alt="우측 화살표"/></li>
					<li class="Icoimg">소식 게시판</li>
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
				<li class="menu2"><a href="#"><span class="Text">도서관이용안내</span><span class="PImg"><img src="/project01/sub04/images/lnb_plus_off.png" alt="PlusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">상호대차</span><span class="IImg"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">모바일앱</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">스마트도서관</span><span class="Img"><img src="/project01/sub04/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">책배달서비스</span><span class="PImg"><img src="/project01/sub04/images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
				<li class="menu2"><a href="#"><span class="Text">전자도서관</span><span class="PPImg"><img src="/project01/sub04/images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
			</ul>
		</div>
		
		<div class="list_bg">
		  <div class="list_tit">
		     <div class="width100">글번호</div>
		     <div class="width800">제목</div>              
		     <div class="width125">작성자</div>
		     <div class="width125">작성일</div>
		  </div>
			<c:choose>
			<c:when test="${empty articlesList}" >
			    <div class="content">
			      <div>
			         <div>
			            <b><span style="font-size:9pt; text-align:center;">등록된 글이 없습니다.</span></b>
			        </div>
			      </div>  
			    </div>
			</c:when>
  			<c:when test="${!empty articlesList}" >
    			<c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
			     <div class="content">
				<%-- <div class="con_num">${articleNum.count}</div> --%>
				<c:choose>
				    <c:when test='${article.level > 1 }'>  
				      
			            <div class='con_num fl'>${article.articleNO}</div>
			            <a class='con_tit fl' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}"><span class="response" style="font-size:12px;">[답변]</span>${article.title}</a>
				    </c:when>
				    <c:otherwise>
				       <div class='con_num2 fl'>${article.articleNO}</div>
			            <a class='con_tit2 fl' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
				    </c:otherwise>
				</c:choose>
				<div class="con_wri fl">${article.id }</div>
				  <div class="con_date fl"><fmt:formatDate value="${article.writeDate}" /></div> 
				</div>
			    </c:forEach>
			     </c:when>
			    </c:choose>
			</div>
	</div>
<div class="page_Wrap">
	<div class="con_page">
		 <c:if test="${totArticles != null }" >
	      <c:choose>
	        <c:when test="${totArticles >100 }">  <!-- 글 개수가 100 초과인경우 -->
		      <c:forEach   var="page" begin="1" end="10" step="1" >
		         <c:if test="${section >1 && page==1 }">
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section-1}&pageNum=${(section-1)*10 +1 }">&nbsp; pre </a>
		         </c:if>
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${(section-1)*10 +page } </a>
		         <c:if test="${page ==10 }">
		          <a class="no-uline" href="${contextPath }/board/listArticles.do?section=${section+1}&pageNum=${section*10+1}">&nbsp; next</a>
		         </c:if>
		      </c:forEach>
	        </c:when>
	        <c:when test="${totArticles ==100 }" >  <!--등록된 글 개수가 100개인경우  -->
		      <c:forEach   var="page" begin="1" end="10" step="1" >
		        <a class="no-uline"  href="#">${page } </a>
		      </c:forEach>
	        </c:when>
	        
	        <c:when test="${totArticles< 100 }" >   <!--등록된 글 개수가 100개 미만인 경우  -->
		      <c:forEach   var="page" begin="1" end="${totArticles/10 +1}" step="1" >
		         <c:choose>
		           <c:when test="${page==pageNum }">
		            <a class="sel-page"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
		          </c:when>
		          <c:otherwise>
		            <a class="no-uline"  href="${contextPath }/board/listArticles.do?section=${section}&pageNum=${page}">${page } </a>
		          </c:otherwise>
		        </c:choose>
		      </c:forEach>
	        </c:when>
	      </c:choose>
	    </c:if>
	</div> 
	<div class="postWrap">
		<a class="post fr"  href="${contextPath}/board/articleForm.do">글쓰기</a>
	</div>
</div>	
</section>
<%@ include file="../sub04/main/footer.jsp" %>
</body>
</html>