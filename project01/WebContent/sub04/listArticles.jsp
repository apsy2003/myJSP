<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
	request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
<head>
<style>

	.cls2{margin-left:1175px; width:100px; height:32px; display:block; background:#eeeeee;
			border:1px solid #dddddd; color:#464646; text-align:center; line-height:2; cursor:pointer;}
	#listWrap{width:100%; height:832px;}
	.list{width:1420px; margin:0 auto; padding-top:12%;}
	table{margin:0 auto; margin-bottom:30px;}
	
</style>
	<meta charset="UTF-8">
	<title>글목록창</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="shortcut icon" href="../main/images/index.ico"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/sub04.js"></script>
</head>
<body>

<%@ include file="./main/header.jsp" %>
<section id="listWrap">
<div class="list">
<table align="center" border="1"  width="80%"  >
	<tr height="10" align="center"  bgcolor="lightgreen">
		<td>글번호</td>
		<td>작성자</td>              
		<td>제목</td>
		<td>작성일</td>
	</tr>
<c:choose>
	<c:when test="${empty articlesList }" >
		<tr  height="10">
			<td colspan="4">
				<p align="center">
					<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
				</p>
			</td>  
		</tr>
	</c:when>
	<c:when test="${!empty articlesList}" >
    <c:forEach  var="article" items="${articlesList }" varStatus="articleNum" >
    <tr align="center">
		<td width="5%">${articleNum.count}</td>
		<td width="10%">${article.id }</td>
		<td align='left'  width="35%">
			<span style="padding-right:30px"></span>
			<c:choose>
				<c:when test='${article.level > 1 }'>  
					<c:forEach begin="1" end="${article.level }" step="1">
						<span style="padding-left:20px"></span>    
					</c:forEach>
					<span style="font-size:12px;">[답변]</span>
					<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
				</c:when>
				<c:otherwise>
					<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
				</c:otherwise>
			</c:choose>
		</td>
		<td  width="10%"><fmt:formatDate value="${article.writeDate}" /></td> 
	</tr>
    </c:forEach>	
	</c:when>
</c:choose>	
</table>
<a  class="cls1"  href="${contextPath}/board/articleForm.do"><p class="cls2">글쓰기</p></a>
</div>
</section>
<%@ include file="./main/footer.jsp" %>
</body>
</html>