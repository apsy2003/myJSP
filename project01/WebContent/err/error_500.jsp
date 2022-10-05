<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>500예외 처리 페이지</title>
	<link rel="stylesheet" href="../sub02/css/login02.css"/> 
	<style>
	#imgbg{width:100%;}
	.img{width:1420px; display:block; margin:0 auto; box-sizing:border-box;}
	
	</style>
</head>
<body>
	<%@ include file="../main/error.jsp" %>
	<section id=imgbg>
		<img src="../images/500.png" class="img" />
	</section>	
	<%@ include file="../main/footer.jsp" %>
</body>
</html>