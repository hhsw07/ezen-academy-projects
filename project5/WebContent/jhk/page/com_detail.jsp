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
	#market_detail{ padding-left:150px;}
	.com{width:220px; margin:15px; }
	.com_img{width:300px;height:300px; float: left;}
	.com_intro{width:600px; height:300px; border:1px solid black; border-collapse:collapse;}
	.com_title{height:50px;}
	.com_assem{height:250px;}
	.com_opt{border-collapse:collapse; width:995px; height:200px;}
	#com_info{border:1px solid black; margin-top:50px; margin-left:20px; width:995px; height:1000px;}
	#com_infotitle {position:relative;border-bottom:1px solid black; height:100px; margin:0 auto;}
	#com_infotitle ul{ float:left; text-align:center; padding:}
	#com_infotitle li{ display:inline-block; text-align:center; }
	#com_infodetail {position:relative; height:900px;}
	#opt_detail select{width:300px;}
	#opt_detail input{width:30px;}
	.buyPro {width:200px;text-align:center; border:1px solid black; display:inline-block; margin:10px; padding:20px;	}
							
</style>
</head>
<body>

<jsp:include page="top.jsp"/>

<div id="market_wrap">
	<p id="market_title">조립컴퓨터</p>
	<form>
		<ul id="market_detail">
			<li class="com">
				<a href="#"><img src="#" class="com_img"></a>
			</li>
			<li class="com" style="padding-left:400px">
				<table class="com_intro" border>
					<tr><td class="com_title">타이틀</td></tr>
					<tr><td class="com_assem">견적</td></tr>
				</table>
			</li>
			<li style="padding:20px 0 0 20px;">
				<table class="com_opt" border>
					<tr>
					<td rowspan="2">
						<table id="opt_detail">
							<tr><th colspan="2">선택 옵션</th></tr>
							<tr><th>메모리 추가</th>
							<td>
							<select>
								<option value="27000">삼성 DDR4 4G 추가(+27000원)</option>
								<option value="50500">삼성 DDR4 8G 추가(+50500원)</option>
								<option value="77500">삼성 DDR4 12G 추가(+77500원)</option>
								<option value="99500">삼성 DDR4 16G 추가(+99500원)</option>
							</select>
							</td></tr>
							<tr><th>SSD</th>
							<td>
								<select>
								<option value="20000">SSD 240GB로 변경(+20000원)</option>
								<option value="66000">SSD 500GB로 변경(+66000원)</option>
								<option value="32500">삼성 SSD 250GB로 변경(+32500원)</option>
								<option value="75000">삼성 SSD 500GB로 변경(+75000원)</option>
								</select>							
							</td></tr>
							<tr><th>HDD 추가</th>
							<td>
								<select>
								<option value="56000">HDD 1TB 추가(+56000원)</option>
								<option value="75000">HDD 2TB 추가(+75000원)</option>
								<option value="110000">HDD 3TB 추가(+110000원)</option>
								<option value="135000">HDD 4TB 추가(+135000원)</option>
								</select>							
							</td></tr>
							<tr><th>운영체제</th>
							<td>
								<select>
								<option value="9800">리눅스 OS 설치(+9800원)</option>
								<option value="156000">윈도우 10 Home DSP(+156000원)</option>
								<option value="176000">윈도우 10 Pro DSP(+176000원)</option>
								<option value="199000">윈도우 10 Home 처음사용자용(+199000원)</option>
								<option value="270000">윈도우 10 Pro 처음사용자용(+270000원)</option>
								</select>							
							</td></tr>
							<tr><th>수량</th>
							<td>
								<span>◀</span><input type="text" value="1" readonly/><span>▶</span>
							</td></tr>
						</table>	 
					</td>
					<td>가격</td>
					</tr>
					<tr><td align="center"><div class="buyPro">장바구니</div><div class="buyPro">바로구매</div></td></tr>
				</table>
			</li>
			<li>
				<div id="com_info">
					<div id="com_infotitle">
						<ul>
							<li>상품 상세</li>
							<li>상품 구매</li>
						</ul>
					</div>
					<div id="com_infodetail">
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