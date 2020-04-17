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
		$("#e_nav_list [name=parts_no]").val("카트담기");
		
		var proc = "${param.proc}";
		var parts_mc = "${parts_mc}";
		if(parts_mc == "") parts_mc = "CPU";
		if(proc == ""||proc == "sch"){
			// 검색화면
			if(parts_mc == "CPU"){
				//alert("parts_mc : "+parts_mc);
			}
		}else{
			// proc를 sch로 해서 다시 컨트롤로 보내기.
		}
		
		
		$("#title").append(parts_mc);
		
		// 카테고리 검색 버튼 클릭시
		$("#schBtn").click(function(){
			$("[name=proc]").val("sch");
			$("[name=schFrm]").submit();
		});
		// 중분류 버튼 클릭시
		 $(".mcCho").click(function(){
			 var mc = $(this).text();
			 $("[name=proc]").val("sch");
			 $("[name=parts_mc]").val(mc);
			 $("[name=cartFrm]").submit();
			 
		 });
		
		// .regCart 버튼 클릭시 카트에 부품 등록
		$(".regCart").click(function(){
			//$("[name=proc]").val("ins");
			alert("추가");
			
		});
		// #delcart(idx) 버튼 클릭시 카트에서 부품 제거
		
		// @@@ 버튼 클릭시 카트에서 전체 제거, 견적문의, 구매하기
	});
	function regCart(sno){
		$("[name=proc]").val("ins");
		$("[name=parts_mc]").val("${parts_mc}");
		$("[name=parts_no]").val(sno);
		alert(sno);
		$("[name=partsFrm]").submit();
	}
	
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
				<form method="method" name="schFrm">
				<input type="hidden" name="proc" />
				<table>
					<c:choose>
						<c:when test="${parts_mc=='CPU'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="인텔">인텔</option>
										<option value="AMD">AMD</option>
									</select>
									<select name="parts_sc2">
										<option value="">설계 전력</option>
										<option value="65W">65W</option>
										<option value="95W">95W</option>
										<option value="105W">105W</option>
										<option value="165W">165W</option>
									</select>
									<select name="parts_sc3">
										<option value="">브랜드 분류</option>
										<option value="인텔(코어i3-9세대)">인텔(코어i3-9세대)</option>
										<option value="인텔(코어i5-9세대)">인텔(코어i5-9세대)</option>
										<option value="인텔(코어i7-9세대)">인텔(코어i7-9세대)</option>
										<option value="인텔(코어i9-9세대)">인텔(코어i9-9세대)</option>
										<option value="인텔(코어X-시리즈)">인텔(코어X-시리즈)</option>
										<option value="AMD(라이젠 3)">AMD(라이젠 3)</option>
										<option value="AMD(라이젠 5)">AMD(라이젠 5)</option>
										<option value="AMD(라이젠 8)">AMD(라이젠 8)</option>
										<option value="AMD(라이젠 9)">AMD(라이젠 9)</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select name="parts_sc4">
										<option value="">코어형태</option>
										<option value="코어">4코어</option>
										<option value="코어">6코어</option>
										<option value="코어">8코어</option>
										<option value="코어">10코어</option>
										<option value="12">12코어</option>
									</select>
									<select name="parts_sc5">
										<option value="">동작속도</option>
										<option value="2.5~2.99 GHz">2.5~2.99 GHz</option>
										<option value="3.0~3.49 GHz">3.0~3.49 GHz</option>
										<option value="3.5~3.99 GHz">3.5~3.99 GHz</option>
									</select>
									<select name="parts_sc6">
										<option value="">패키지 형식</option>
										<option value="정품">정품</option>
										<option value="벌크">벌크</option>
									</select>
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='메인보드'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="ASRock">ASRock</option>
										<option value="ASUS">ASUS</option>
										<option value="BIOSTAR">BIOSTAR</option>
										<option value="GIGABYTE">GIGABYTE</option>
										<option value="MSI">MSI</option>
									</select>
									<select name="parts_sc2">
										<option value="">세부 칩셋</option>
										<option value="(AMD) A320">(AMD) A320</option>
										<option value="(AMD) B450">(AMD) B450</option>
										<option value="(AMD) B450">(AMD) B450</option>
										<option value="(AMD) X570">(AMD) X570</option>
										<option value="(인텔) B360">(인텔) B360</option>
										<option value="(인텔) B365">(인텔) B365</option>
										<option value="(인텔) H310">(인텔) H310</option>
										<option value="(인텔) H81">(인텔) H81</option>
										<option value="(인텔) Z390">(인텔) Z390</option>
									</select>
									<select name="parts_sc3">
										<option value="">메모리 종류</option>
										<option value="DDR4">DDR4</option>
										<option value="DDR3">DDR3</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select name="parts_sc4">
										<option value="">메모리 슬롯</option>
										<option value="2">2</option>
										<option value="4">4</option>
									</select>
									<select name="parts_sc5">
										<option value="">M.2</option>
										<option value="0개">0개</option>
										<option value="1개">1개</option>
										<option value="2개">2개</option>
										<option value="3개">3개</option>
										<option value="4개">4개</option>
									</select>
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='RAM'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="ADATA">ADATA</option>
										<option value="GeIL">GeIL</option>
										<option value="TeamGroup">TeamGroup</option>
										<option value="마이크론">마이크론</option>
										<option value="삼성전자">삼성전자</option>
									</select>
									<select name="parts_sc2">
										<option value="">동작 클럭</option>
										<option value="1,600MHz">1,600MHz</option>
										<option value="2,400MHz">2,400MHz</option>
										<option value="2,666MHz">2,666MHz</option>
										<option value="3,000MHz">3,000MHz</option>
										<option value="3,200MHz">3,200MHz</option>
										<option value="3,600MHz">3,600MHz</option>
										<option value="4,133MHz">4,133MHz</option>
									</select>
									<select name="parts_sc3">
										<option value="">메모리 용량</option>
										<option value="4GB">4GB</option>
										<option value="8GB">8GB</option>
										<option value="16GB">16GB</option>
										<option value="32GB">32GB</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select name="parts_sc4">
										<option value="">제품 분류</option>
										<option value="DDR3">DDR3</option>
										<option value="DDR4">DDR4</option>
									</select>
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='그래픽카드'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="ASRock">ASRock</option>
										<option value="ASUS">ASUS</option>
										<option value="EVGA">EVGA</option>
										<option value="GIGABYTE">GIGABYTE</option>
										<option value="MSI">MSI</option>
										<option value="SAPPHIRE">SAPPHIRE</option>
										<option value="ZOTAC">ZOTAC</option>
										<option value="이엠텍">이엠텍</option>
									</select>
									<select name="parts_sc2">
										<option value="">칩셋 제조사</option>
										<option value="AMD">AMD</option>
										<option value="NVIDIA">NVIDIA</option>
									</select>
									<input type="hidden" name="parts_sc3" value="">
								</td>
							</tr>
							<tr>
								<td>
									<select style="visibility:hidden"><option></option></select>
									<input type="hidden" name="parts_sc4" value="">
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='SSD'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="Seagate">Seagate</option>
										<option value="WD">WD</option>
										<option value="마이크론">마이크론</option>
										<option value="삼성전자">삼성전자</option>
									</select>
									<select name="parts_sc2">
										<option value="">디스크 용량</option>
										<option value="120GB">120GB</option>
										<option value="250GB">250GB</option>
										<option value="500GB">500GB</option>
										<option value="1TB">1TB</option>
										<option value="2TB">2TB</option>
									</select>
									<select name="parts_sc3">
										<option value="">디스크 타입</option>
										<option value="M.2">M.2</option>
										<option value="2.5'' SSD">2.5'' SSD</option>
										<option value="PCI-E 카드">PCI-E 카드</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select style="visibility:hidden"><option></option></select>
									<input type="hidden" name="parts_sc4" value="">
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='HDD'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="Seagate">Seagate</option>
										<option value="Toshiva">Toshiva</option>
										<option value="WD">WD</option>
									</select>
									<select name="parts_sc2">
										<option value="">디스크 용량</option>
										<option value="1TB">1TB</option>
										<option value="2TB">2TB</option>
										<option value="3TB">3TB</option>
										<option value="4TB">4TB</option>
										<option value="8TB">8TB</option>
										<option value="10TB">10TB</option>
										<option value="12TB">12TB</option>
									</select>
									<select name="parts_sc3">
										<option value="">회전수</option>
										<option value="5,400 RPM">5,400 RPM</option>
										<option value="5,900 RPM">5,900 RPM</option>
										<option value="7,200 RPM">7,200 RPM</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select style="visibility:hidden"><option></option></select>
									<input type="hidden" name="parts_sc4" value="">
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='케이스'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="ABKO">ABKO</option>
										<option value="COX">COX</option>
										<option value="DAVEN">DAVEN</option>
										<option value="대양케이스">대양케이스</option>
										<option value="아이구주">아이구주</option>
										<option value="잘만">잘만</option>
									</select>
									<select name="parts_sc2">
										<option value="">케이스 크기</option>
										<option value="미들타워">미들타워</option>
										<option value="빅타워">빅타워</option>
									</select>
									<select name="parts_sc3">
										<option value="">SSD 전용 베이</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="7">7</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select style="visibility:hidden"><option></option></select>
									<input type="hidden" name="parts_sc4" value="">
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
						<c:when test="${parts_mc=='파워'}">
							<tr>
								<td>
									<select name="parts_sc1">
										<option value="">제조사</option>
										<option value="FSP">FSP</option>
										<option value="마이크로닉스">마이크로닉스</option>
										<option value="시소닉">시소닉</option>
										<option value="잘만">잘만</option>
										<option value="커세어">커세어</option>
									</select>
									<select name="parts_sc2">
										<option value="">정격 출력</option>
										<option value="500W 이상">500W 이상</option>
										<option value="600W 이상">600W 이상</option>
										<option value="700W 이상">700W 이상</option>
										<option value="800W 이상">800W 이상</option>
										<option value="900W 이상">900W 이상</option>
										<option value="1000W 이상">1000W 이상</option>
									</select>
									<select name="parts_sc3">
										<option value="">메인 전원커넥터</option>
										<option value="20핀">20핀</option>
										<option value="20핀+4핀">20핀+4핀</option>
										<option value="24핀 전용">24핀 전용</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<select name="parts_sc4">
										<option value="">인증사항</option>
										<option value="80 PLUS 티타늄">80 PLUS 티타늄</option>
										<option value="80 PLUS 플레티넘">80 PLUS 플레티넘</option>
										<option value="80 PLUS 골드">80 PLUS 골드</option>
										<option value="80 PLUS 실버">80 PLUS 실버</option>
										<option value="80 PLUS 브론즈">80 PLUS 브론즈</option>
										<option value="80 PLUS 스탠다드">80 PLUS 스탠다드</option>
										<option value="없음">없음</option>
									</select>
									<input type="hidden" name="parts_sc5" value="">
									<input type="hidden" name="parts_sc6" value="">
								</td>
							</tr>
						</c:when>
					</c:choose>
					<tr>
						<td class="ordR" style="padding-right:30px;" >
							<input type="button" id="schBtn" value="검색" />
						</td>
					</tr>
				</table>
				</form>
			</div>
			
			<div id="e_nav_list">
				<form method="method" name="partsFrm">
				<input type="hidden" name="proc"/>
				<input type="hidden" name="parts_mc"/>
				<input type="hidden" name="parts_no"/>
				<table>
					<col width="20%">
					<col width="50%">
					<col width="20%">
					<col width="10%">
					
					<c:forEach var="prod" items="${plist}">
					<tr>
						<td><img src="${path}/image/parts/${prod.parts_img}" style="width:60px;"/></td>
						<td>${prod.parts_name}</td>
						<td><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원</td>
						<td><input type="button" onclick="regCart(${prod.parts_no})" name="parts_no" style="width:100%"/></td>
					</tr>
					</c:forEach>
				</table>
				</form>
			</div>
		</div>
		<!-- 카트 -->
		<div id="e_cart">
			<h3>PC주요부품</h3>
			<div style="height:400px; overflow:auto;">
				<form method="get" name="cartFrm">
				<input type="hidden" name="proc"/>
				<input type="hidden" name="parts_mc"/>
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
						<td class="mcCho">RAM</td>
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
					<c:forEach var="prod" items="${cart}">
						<c:if test="${prod.parts_mc == '케이스'}" >
							<tr>
								<td></td>
								<td>${prod.parts_name}</td> 
								<td><input type="number" name="cnt" value="1"/></td>
								<td class="ordR">${prod.parts_price}</td>
								<td id="delCart(${prod.parts_no})">X</td>
							</tr>
						</c:if>
					</c:forEach>
					<tr>
						<td class="mcCho">SSD</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<c:forEach var="prod" items="${cart}">
						<c:if test="${prod.parts_mc == '케이스'}" >
							<tr>
								<td></td>
								<td>${prod.parts_name}</td> 
								<td><input type="number" name="cnt" value="1"/></td>
								<td class="ordR">${prod.parts_price}</td>
								<td id="delCart(${prod.parts_no})">X</td>
							</tr>
						</c:if>
					</c:forEach>
					<tr>
						<td class="mcCho">HDD</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<c:forEach var="prod" items="${cart}">
						<c:if test="${prod.parts_mc == '케이스'}" >
							<tr>
								<td></td>
								<td>${prod.parts_name}</td> 
								<td><input type="number" name="cnt" value="1"/></td>
								<td class="ordR">${prod.parts_price}</td>
								<td id="delCart(${prod.parts_no})">X</td>
							</tr>
						</c:if>
					</c:forEach>
					<tr>
						<td class="mcCho">케이스</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<c:forEach var="prod" items="${cart}">
						<c:if test="${prod.parts_mc == '케이스'}" >
							<tr>
								<td></td>
								<td>${prod.parts_name}</td> 
								<td><input type="number" name="cnt" value="1"/></td>
								<td class="ordR">${prod.parts_price}</td>
								<td id="delCart(${prod.parts_no})">X</td>
							</tr>
						</c:if>
					</c:forEach>
					<tr>
						<td class="mcCho">케이스</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<c:forEach var="prod" items="${cart}">
						<c:if test="${prod.parts_mc == '파워'}" >
							<tr>
								<td></td>
								<td>${prod.parts_name}</td> 
								<td><input type="number" name="cnt" value="1"/></td>
								<td class="ordR">${prod.parts_price}</td>
								<td id="delCart(${prod.parts_no})">X</td>
							</tr>
						</c:if>
					</c:forEach>
						
					
					<c:forEach var="prod" items="${cart}">
						<tr>
							<td class="mcCho">${prod.parts_mc}</td>
							<td>${prod.parts_name}</td> 
							<td><input type="number" name="cnt" value="1"/></td>
							<td class="ordR">${prod.parts_price}</td>
							<td id="delCart(${prod.parts_no})">X</td>
						</tr>
					</c:forEach>
				</table>
				</form>
			</div>
			<hr>
			<div style="text-align:center;">
				<form method="post" name="regFrm">
				<input type="hidden" name="proc"/>
				<input type="hidden" name="parts_mc"/>
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