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
			.menu-2 a{text-decoration:none; color:white;}
				
	#market_wrap{position: relative; width:1280px; height:2000px; margin:0 auto;}
	#market_title{border-bottom:1px solid black; padding:10px; font-size:20px;}
	.com{width:220px;float: left; margin:15px;}
	.com_img{width:220px;height:220px;}
	.com_intro{width:100%; border:1px solid black; border-collapse:collapse;}	
	.com_intro .com_title{border:1px solid black; text-align:center;}
	.com_intro .com_assem{border:1px solid black;}
	.com_intro .com_assem2{border-bottom:1px solid white;}
	
</style>
</head>
<body>

<jsp:include page="../../main/top.jsp"/>
	<div class="menu-wrap">
		<div class="menu-2-wrap">
			<div class="menu-2">
				<ul>
					<li><a href="#">CPU</a></li>
					<li><a href="#">메인보드</a></li>
					<li><a href="#">RAM</a></li>
					<li><a href="#">그래픽카드</a></li>
					<li><a href="#">SSD</a></li>
					<li><a href="#">HDD</a></li>
					<li><a href="#">케이스</a></li>
					<li><a href="#">파워</a></li>
				</ul>
			</div>
		</div>
	</div>
<div id="market_wrap">
	<p id="market_title">조립컴퓨터</p>
	<ul id="market_list">
		<c:forEach begin="1" end="9" varStatus="sts">
			<li class="com">
				<a href="comdetail"><img src="image/Computer/PCCAT-HAO01.jpg" class="com_img"></a>
				<table class="com_intro" border>
					<tr><td class="com_title">PCCAT-HAO01</td></tr>
					<tr><td class="com_assem2">CPU</td></tr>
					<tr><td class="com_assem2">메인보드</td></tr>
					<tr><td class="com_assem2">RAM</td></tr>
					<tr><td class="com_assem2">그래픽카드</td></tr>
					<tr><td class="com_assem2">SSD</td></tr>
					<tr><td class="com_assem2">HDD</td></tr>
					<tr><td class="com_assem2">케이스</td></tr>
					<tr><td>파워</td></tr>
				</table>
			</li>
		</c:forEach>
	</ul>
</div>

<jsp:include page="../../main/bottom.jsp"/>
	<%-- <c:forEach>
			
	</c:forEach> --%>
</body>
</html>