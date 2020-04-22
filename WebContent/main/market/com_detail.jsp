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
	.com_title{height:50px; padding-left:20px;}
	.com_assem{height:250px;}
	.com_intro .com_assem2{border-bottom:1px solid white; padding-left:20px;}
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
<script type="text/javascript">
function addCart(){
	$("[name=proc]").val("cart");
	$("[name=req_no]").val("1");
	$("[name=req_cnt]").val("1");
	$("[name=req_opt]").val("0");
	$("form").submit();
}
</script>
</head>
<body>

<jsp:include page="../../main/top.jsp"/>

<div id="market_wrap">
	<p id="market_title">조립컴퓨터</p>
	<form action="${path}/order">
		<input type="hidden" name="proc">
		<input type="hidden" name="req_no">
		<input type="hidden" name="req_cnt">
		<input type="hidden" name="req_opt">
		<ul id="market_detail">
			<li class="com">
				<img src="image/Computer/PCCAT-HAO01.jpg" class="com_img">
			</li>
			<li class="com" style="padding-left:400px">
				<table class="com_intro" border>
					<tr><td class="com_title">PCCAT-HAO01</td></tr>
					<tr><td class="com_assem2">CPU</td></tr>
					<tr><td class="com_assem2">메인보드</td></tr>
					<tr><td class="com_assem2">RAM</td></tr>
					<tr><td class="com_assem2">그래픽카드</td></tr>
					<tr><td class="com_assem2">SSD</td></tr>
					<tr><td class="com_assem2">HDD</td></tr>
					<tr><td class="com_assem2">케이스</td></tr>
					<tr><td style=" padding-left:20px;">파워</td></tr>
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
								<option value="27000">삼성 DDR4 4G 추가(+27,000원)</option>
								<option value="50500">삼성 DDR4 8G 추가(+50,500원)</option>
								<option value="77500">삼성 DDR4 12G 추가(+77,500원)</option>
								<option value="99500">삼성 DDR4 16G 추가(+99,500원)</option>
							</select>
							</td></tr>
							<tr><th>SSD</th>
							<td>
								<select>
								<option value="20000">SSD 240GB로 변경(+20,000원)</option>
								<option value="66000">SSD 500GB로 변경(+66,000원)</option>
								<option value="32500">삼성 SSD 250GB로 변경(+32,500원)</option>
								<option value="75000">삼성 SSD 500GB로 변경(+75,000원)</option>
								</select>							
							</td></tr>
							<tr><th>HDD 추가</th>
							<td>
								<select>
								<option value="56000">HDD 1TB 추가(+56,000원)</option>
								<option value="75000">HDD 2TB 추가(+75,000원)</option>
								<option value="110000">HDD 3TB 추가(+110,000원)</option>
								<option value="135000">HDD 4TB 추가(+135,000원)</option>
								</select>							
							</td></tr>
							<tr><th>운영체제</th>
							<td>
								<select>
								<option value="9800">리눅스 OS 설치(+9,800원)</option>
								<option value="156000">윈도우 10 Home DSP(+156,000원)</option>
								<option value="176000">윈도우 10 Pro DSP(+176,000원)</option>
								<option value="199000">윈도우 10 Home 처음사용자용(+199,000원)</option>
								<option value="270000">윈도우 10 Pro 처음사용자용(+270,000원)</option>
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
					<tr><td align="center"><div class="buyPro" id="addCart" onclick="addCart()">장바구니</div><div class="buyPro">바로구매</div></td></tr>
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

<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>