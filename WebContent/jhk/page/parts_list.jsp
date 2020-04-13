<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>

body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}
				
	#market_wrap{position: relative; height:600px;}
	.parts{float: left;}
</style>
</head>
<body>

<jsp:include page="top.jsp"/>

<div id="market_wrap">
	<ul id="market_list">
		<li class="parts">
			<a href="#"><img src="#">이미지공간</a>
			<span>
				<div>타이틀</div>
				<div>견적</div>
			</span>
		</li>
		<li class="parts">
			<a href="#"><img src="#">이미지공간</a>
			<span>
				<div>타이틀</div>
				<div>견적</div>
			</span>
		</li>
		<li class="parts">
			<a href="#"><img src="#">이미지공간</a>
			<span>
				<div>타이틀</div>
				<div>견적</div>
			</span>
		</li>
		<li class="parts">
			<a href="#"><img src="#">이미지공간</a>
			<span>
				<div>타이틀</div>
				<div>견적</div>
			</span>
		</li>
		<li class="parts">
			<a href="#"><img src="#">이미지공간</a>
			<span>
				<div>타이틀</div>
				<div>견적</div>
			</span>
		</li>
	</ul>
</div>

<jsp:include page="bottom.jsp"/>
	<%-- <c:forEach var="cnt" begin="1" end="9" varStatus="sts">
			
	</c:forEach> --%>
</body>
</html>