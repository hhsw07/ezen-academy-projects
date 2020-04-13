<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, hsw.* "
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="${path}/a00_com/a00_com.css" > -->
<style>
	body{margin:0 auto; padding:0; width:100%;}
    a{text-decoration:none;}
    ul li{list-style:none;}
	table{width:100%;}
	.ordR{text-align:right;}
	.ordL{text-align:left;}
	
	#e_root{margin:auto; width:1280px; padding:0px 20px;}
	#e_top{width:100%; margin-bottom:10px; }
	#e_mid{width:100%; height:500px;}
		#e_nav{width:50%; height:100%; float:left;}
			#e_nav_top td {margin:0px;}
			#e_nav_list {width:95%; height:360px; border-right:1px solid black; overflow:auto;}
			#e_nav_list td{border-bottom:1px solid black;}
		#e_cart{width:50%;height:100%; float:left;}
		#e_cart table{border-collapse:collapse;}
		#e_cart table td{padding:3px 3px;} 
		#e_cart tr td:first-child{background-color:black;color:white;}
	#e_bottom{width:100%; clear:both; margin-top:50px;background-color:gray;}
</style>
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("견적컴퓨터");
		$("[type=number]").width("100%");
		$("select").width("30%");
		$("img").width("60px");
		$(".regCart").val("카트담기");
		
		var proc = "${param.proc}";
		if(proc == ""||proc == "sch"){
			// 검색화면
			var parts_mc = "${sch.parts_mc}";
			if(parts_mc == "") parts_mc = "cpu";
			if(parts_mc == "cpu"){
				//alert("parts_mc : "+parts_mc);
			}
			if(parts_mc == "메인보드"){}
			if(parts_mc == "메모리"){}
			if(parts_mc == "그래픽카드"){}
			if(parts_mc == "SSD"){}
			if(parts_mc == "HDD"){}
			if(parts_mc == "케이스"){}
			if(parts_mc == "파워"){}
			
		}else{
			// proc를 sch로 해서 다시 컨트롤로 보내기.
		}
		
		$("#title").append(parts_mc);
		
		// 카테고리 검색 버튼 클릭시
		$("#schBtn").click(function(){
			alert("카테고리 검색")
		});
		// 중분류 버튼 클릭시
		 $(".mcCho").click(function(){
			 var mc = $(".mcCho").text();
			 alert("중분류 검색 : "+mc);
			 
		 });
		
		// .regCart 버튼 클릭시 카트에 부품 등록
		$(".regCart").click(function(){
			//$("[name=proc]").val("ins");
			alert("추가");
			
		});
		// #delcart(idx) 버튼 클릭시 카트에서 부품 제거
		
		// @@@ 버튼 클릭시 카트에서 전체 제거, 견적문의, 구매하기
	});
	
	
</script>
</head>

<body>
<jsp:include page="../top.jsp" />
<!-- 중간 내용 시작 -->
<div id="e_root">
	<!-- 중간 내용 title -->
	<div id="e_top">
		<h2></h2>
	</div>
	<div id="e_mid">
		<!-- 견적표 -->
		<div id="e_nav" >
			<div id="e_nav_top">
				<h3 id="title">PC주요부품 > </h3>
				<form method="post" name="schFrm">
				<input type="hidden" name="proc" />
				<table>
					<tr>
						<td>
							<select name="parts_sc1">
								<option>제조사</option>
								<option>인텔</option>
								<option>AMD</option>
							</select>
							<select name="parts_sc2">
								<option>설계 전력</option>
								<option>65W</option>
								<option>95W</option>
								<option>105W</option>
								<option>165W</option>
							</select>
							<select name="parts_sc3">
								<option>브랜드 분류</option>
								<option>인텔(코어i3-9세대)</option>
								<option>인텔(코어i5-9세대)</option>
								<option>인텔(코어i7-9세대)</option>
								<option>인텔(코어i9-9세대)</option>
								<option>인텔(코어X-시리즈)</option>
								<option>AMD(라이젠 3)</option>
								<option>AMD(라이젠 5)</option>
								<option>AMD(라이젠 8)</option>
								<option>AMD(라이젠 9)</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<select name="parts_sc4">
								<option>코어형태</option>
								<option>4코어</option>
								<option>6코어</option>
								<option>8코어</option>
								<option>10코어</option>
								<option>12코어</option>
							</select>
							<select name="parts_sc5">
								<option>동작속도</option>
								<option>2.5~2.99 GHz</option>
								<option>3.0~3.49 GHz</option>
								<option>3.5~3.99 GHz</option>
							</select>
							<select name="parts_sc6">
								<option>패키지 형식</option>
								<option>정품</option>
								<option>벌크</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="ordR" style="padding-right:30px;" >
							<input type="button" id="schBtn" value="검색" />
						</td>
					</tr>
				</table>
				</form>
			</div>
			
			<div id="e_nav_list">
				<form method="post" name="partsFrm">
				<input type="hidden" name="proc"/>
				<table>
					<col width="20%">
					<col width="50%">
					<col width="20%">
					<col width="10%">
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%"/></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%" /></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%" /></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%"/></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%"/></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%"/></td>
					</tr>
					<tr>
						<td><img src="${path}/image/cpu/인텔 코어i3-9세대 9100F (커피레이크-R)(정품).jpg" style="width:60px;"/></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td>
						<td>99,170원</td>
						<td><input type="button" class="regCart" style="width:100%"/></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<!-- 카트 -->
		<div id="e_cart">
			<h3>PC주요부품</h3>
			<div style="height:400px; overflow:auto;">
				<form method="post" name="cartFrm">
				<input type="hidden" name="proc"/>
				<table>
					<col width="18%">
					<col >
					<col width="7%">
					<col width="18%">
					<col width="4%">
					<tr>
						<td class="mcCho">CPU</td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR">99,170원</td>
						<td id="delCart(1)">X</td>
					</tr>
					<tr>
						<td></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR">99,170원</td>
						<td id="delCart(2)">X</td>
					</tr>
					<tr>
						<td></td>
						<td>인텔 코어i3-9세대 9100F (커피레이크-R)(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR">99,170원</td>
						<td id="delCart(3)">X</td>
					</tr>
					<tr>
						<td class="mcCho">메인보드</td>
						<td>ASRock A320M-HDV R4.0</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR">73,000원</td>
						<td id="delCart(4)">X</td>
					</tr>
					<tr>
						<td class="mcCho">메모리</td>
						<td>삼성전자 DDR4 4G PC4-21300(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR"><span>21,130원</span></td>
						<td id="delCart(5)">X</td>
					</tr>
					<tr>
						<td></td>
						<td>삼성전자 DDR4 8G PC4-19200(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR"><span>55,370원</span></td>
						<td id="delCart(6)">X</td>
					</tr>
					<tr>
						<td></td>
						<td>삼성전자 DDR4 8G PC4-19200(정품)</td> 
						<td><input type="number" name="cnt" value="1"/></td>
						<td class="ordR"><span>55,370원</span></td>
						<td id="delCart(7)">X</td>
					</tr>
					<tr>
						<td class="mcCho">그래픽카드</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="mcCho">SSD</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="mcCho">HDD</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="mcCho">케이스</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td class="mcCho">파워</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				</form>
			</div>
			<hr>
			<div style="text-align:center;">
				<form method="post" name="regFrm">
				<input type="hidden" name="proc"/>
				<input type="button" value="견적초기화" style="width:30%"/>
				<input type="button" value="견적문의" style="width:30%"/>
				<input type="button" value="구매하기" style="width:30%"/>
				</form>
			</div>
		</div>
	</div>
	<!-- 견적 문의 리스트 -->
	<div id="e_bottom">
		<h3>견적 문의 목록</h3>
		<h3 align="center">작성예정중</h3>
		<br>
		<br>
		<br>
		<br>
	</div>
	<br>
	<br>
	<br>
</div>
<!-- 중간 내용 끝 -->
<jsp:include page="../bottom.jsp" />
</body>
</html>