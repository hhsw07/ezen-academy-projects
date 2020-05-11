<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		$(document).ready(function(){
			$('h1').text('header파일에 부트스트랩 제이쿼리 템플릿 css, js가 모두 포함되어 있습니다. 따로 추가 안하셔도 됩니다.');
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">WebSiteName</a>
</div>
<ul class="nav navbar-nav">
<li class="active"><a href="#">Home</a></li>
<li><a href="#">Page 1</a></li>
<li><a href="#">Page 2</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>
</nav> 




	    </div>
	</div>
	<!-- end main -->
</body>
</html>