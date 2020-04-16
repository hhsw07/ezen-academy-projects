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
	.menu-wrap{width:100%;}
	.menu-2-wrap{background-color:#63145F;}
		.menu-2{width:1280px; margin:0 auto; padding:10px 0; text-align:center; color:white; font-weight:1px;
				border-right:1px solid #E4E1E1; border-left:1px solid #E4E1E1;}
			.menu-2 li{display:inline; font-size:25px; margin:0 15px;}
				
	#market_wrap{position: relative; width:1280px; height:2000px; margin:0 auto;}
	#market_title{border-bottom:1px solid black; padding:10px; font-size:20px;}
	.com{width:220px;float: left; margin:15px;}
	.com_img{width:220px;height:220px;}
	.com_intro{width:100%; border:1px solid black; border-collapse:collapse;}	
	.com_intro .com_title{border:1px solid black; text-align:center;}
	.com_intro .com_assem{border:1px solid black;}
	
</style>
</head>
<body>

<jsp:include page="top.jsp"/>
	<div class="menu-wrap">
		<div class="menu-2-wrap">
			<div class="menu-2">
				<ul>
					<li>CPU</li>
					<li>메인보드</li>
					<li>RAM</li>
					<li>그래픽카드</li>
					<li>SSD</li>
					<li>HDD</li>
					<li>케이스</li>
					<li>파워</li>
				</ul>
			</div>
		</div>
	</div>
<div id="market_wrap">
	<p id="market_title">조립컴퓨터</p>
	<ul id="market_list">
		<c:forEach begin="1" end="9" varStatus="sts">
			<li class="com">
				<a href="#"><img src="#" class="com_img"></a>
				<table class="com_intro" border>
					<tr><td class="com_title">타이틀</td></tr>
					<tr><td class="com_assem">견적</td></tr>
				</table>
			</li>
		</c:forEach>
	</ul>
</div>

<jsp:include page="bottom.jsp"/>
	<%-- <c:forEach>
			
	</c:forEach> --%>
</body>
</html>