<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.orderlist-cont{width:1080px; margin:0px auto; min-height:700px;}
	.order-area{width:1080px; margin:20px auto;}
	fieldset{border:2px solid #63145F;}
	legend{padding:5px 10px; font-weight:700; font-size:1.2em;}
	.order-info-table{width:100%; margin:20px auto;}
	.order-info-span{display:inline-block;}
	.shipment{width:69%;}
	.payment{width:29%;}
	
	
	.order-list-table {text-align:center; margin:0 auto; border-top: 2px solid #000; border-bottom:1px solid #797979; border-spacing:0; 
    border-collapse:collapse; width:100%;}
    .order-list-table thead {display: table-header-group; vertical-align: middle; border-color:inherit;}
    .order-list-table thead tr th {text-align: center; padding: 0; height: 50px; font-size: 13px;}
    .order-list-table tbody {font-size: 12px;}
    .order-list-table tbody tr.first-tr td {border-top:1px solid #797979; padding-top: 15px;}
    .order-list-table tbody tr td {padding: 5px 0;}
    .date {padding-bottom: 15px;}
    .date a {text-align: left; cursor: pointer; font-size: 12px;}
    .ordernum-container {display: inline-block;}
    .order-date {font-weight: bold;}
    .product {text-align: left; padding-left: 10px; line-height: 30px;}
    .product-img {height: 60px; width: 60px; background-size: cover; background-position: center; background-repeat: no-repeat;}
    .product div {vertical-align: middle; display: inline-block;}
    .product-name {margin-left: 10px; max-width: 263px;}
    .product-name div {display: block; font-weight: bold;}
    .option {line-height: 1em; font-size: 11px; color: #797979; font-weight: normal;}
    .price{text-align:right; padding-right:20px;}
    .total-price {font-weight: bold; text-align:right; padding-right:20px;}
    .service {padding-bottom: 15px;font-size: 12px;}
    .line {text-decoration: underline;color: #353535;}
/* 버튼 */
	.list-btn{width:1050px; margin:20px auto 50px; text-align:center;}
	.btn{background:#63145F; color:#fff; border:none; position:relative; height:60px; font-size:1.5em; padding:0 2em; cursor:pointer;
	transition:800ms ease all; outline:none;}
	.btn:hover{background:#fff; color:#63145F;}
	.btn:before,.btn:after{content:''; position:absolute; top:0; right:0; height:2px; width:0; background: #63145F; transition:400ms ease all;}
	.btn:after{right:inherit; top:inherit; left:0; bottom:0;}
	.btn:hover:before,.btn:hover:after{width:100%; transition:800ms ease all;}
	

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		$("h2").text("");
		$("#no").text($("[name=ord_no]").eq(0).val());
		$("#date").text($("[name=ord_date]").eq(0).val());
		$("#id").text($("[name=mem_id]").eq(0).val());
		$("#stat").text($("[name=ord_stat]").eq(0).val());
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<jsp:include page="../myPageTop.jsp"/>
	<h2></h2>
	
	<div class="orderlist-cont">
	<form method="post">
		<input type="hidden" name="proc" />
		<div class="order-area">
			<fieldset>
				<legend>주문 정보</legend>
				<table class="order-info-table">
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">주문번호</th>
							<td id="no"></td>
							<th scope="col">주문일자</th>
							<td id="date"></td>
						</tr>
						<tr>
							<th scope="col">주문자</th>
							<td id="id"></td>
							<th scope="col">주문처리상태</th>
							<td id="stat"></td>
						</tr>
					</tbody>
				</table>
			</fieldset>		
		</div>
		
		<div class="order-area">
			<legend>주문 상품 정보</legend>
			<table class="order-list-table">
				<colgroup>
					<col width="auto">
					<col width="15%">
					<col width="5%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" class="product">상품정보</th>
						<th scope="col" class="sell">판매가</th>
						<th scope="col" class="quantity">수량</th>
						<th scope="col" class="state">총 금액</th>							
					</tr>
				</thead>
				<tbody>
				<c:forEach var="myo" items="${myolist}">
				<input type="hidden" name="ord_no" value="${myo.ord_no}"/>
				<input type="hidden" name="ord_date" value="${myo.ord_date}"/>
				<input type="hidden" name="mem_id" value="${myo.mem_id}"/>
				<input type="hidden" name="ord_stat" value="${myo.ord_stat}"/>
					<tr>
						<td class="product">
							<span class="product-img" style="background-image:url('image/parts/${myo.parts_img}')"></span>
							<span class="product-name">
								<span class="main">${myo.parts_name}</span>
							</span>
						</td>
						<td class="sell">${myo.parts_price}</td>
						<td class="quantity">${myo.req_cnt}</td>
						<td class="state">${myo.req}</td>
					</tr>
				</c:forEach>	
				</tbody>
				
			</table>
	
		</div>
			
	
		</form>	
		<div class="list-btn">
			<input class="btn" type="button"  value="목록보기"/>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>