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
						
	#market_wrap{padding:50px; position: relative; width:1280px; height:2000px; margin:0 auto;}
	#market_title{border-bottom:1px solid black; padding:10px; font-size:20px;}
	#market_detail{ padding-left:200px;}
	.parts{width:220px; margin:15px; }
	.parts_img{width:300px;height:300px; float: left;}
	.parts_intro{width:600px; height:300px; border:1px solid black; border-collapse:collapse;}
	.parts_title{height:50px;}
	.parts_assem{height:250px;}
	.parts_opt{border-collapse:collapse; width:995px; height:200px;}
	#parts_info{border:1px solid black; margin-top:50px; margin-left:20px; width:995px; height:1000px;}
	#parts_infotitle {position:relative;border-bottom:1px solid black; height:100px;}
	#parts_infotitle ul{float:left;}
	#parts_infodetail {position:relative; height:900px;}
							
</style>
</head>
<body>

<jsp:include page="top.jsp"/>

<div id="market_wrap">
	<p id="market_title">컴퓨터부품</p>
	<form>
		<ul id="market_detail">
			<li class="parts">
				<a href="#"><img src="#" class="parts_img"></a>
			</li>
			<li class="parts" style="padding-left:400px">
				<table class="parts_intro" border>
					<tr><td class="parts_title">타이틀</td></tr>
					<tr><td class="parts_assem">견적</td></tr>
				</table>
			</li>
			<li style="padding:20px 0 0 20px;">
				<table class="parts_opt" border>
					<tr>
					<td rowspan="2">선택 옵션<br>
					메모리 추가 : 
						<select>
						<option></option>
						<option></option>
						<option></option>
						</select><br>
					SSD 추가 : 
						<select>
						<option></option>
						<option></option>
						<option></option>
						</select><br>
					HDD 추가 : 
						<select>
						<option></option>
						<option></option>
						<option></option>
						</select><br>
					운영체제 추가 : 
						<select>
						<option></option>
						<option></option>
						<option></option>
						</select><br>
					수량 : 		 
					</td>
					<td>가격</td>
					</tr>
					<tr><td><span>장바구니</span><span>바로구매</span></td></tr>
				</table>
			</li>
			<li>
				<div id="parts_info">
					<div id="parts_infotitle">
						<ul>
							<li>상품 상세</li>
							<li>상품 구매</li>
						</ul>
					</div>
					<div id="parts_infodetail">
						정보 jsp가 들어갈 부분
						<!-- jsp param사용해야함 -->
					</div>
				</div>
			</li>
		</ul>
	</form>
</div>

<jsp:include page="bottom.jsp"/>

</body>
</html>