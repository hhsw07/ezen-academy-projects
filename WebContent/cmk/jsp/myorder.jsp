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
	.orderlist-cont{width:1080px; margin:0px auto; min-height:600px;}
	.order-list-table {text-align:center; margin:0 auto; border-top: 2px solid #000; border-bottom:1px solid #797979; border-spacing:0; border:0;
    border-collapse:collapse; width:100%;}
    .order-list-table thead {display: table-header-group; vertical-align: middle; border-color: inherit;}
    .order-list-table thead tr th {text-align: center; padding: 0; height: 50px; font-size: 13px;}
    .order-list-table tbody {font-size: 12px;}
    .order-list-table tbody tr.first-tr td {border-top: 1px solid #797979; padding-top: 15px;}
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
    .total-price {font-weight: bold;}
    .service {padding-bottom: 15px;font-size: 12px;}
    .line {text-decoration: underline;color: #353535;}

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	
	<jsp:include page="../myPageTop.jsp"/>
	<div class="orderlist-cont">
		<h2></h2>
		
		<table class="order-list-table">
			<colgroup>
				<col width="16%">
				<col width="auto">
				<col width="8%">
				<col width="10%">
				<col width="10%">
				<col width="16%">
			</colgroup>
			<thead class="table_head">
				<tr>
					<th class="number">날짜 및 주문번호</th>
					<th class="product">주문정보</th>
					<th class="quantity">수량</th>
					<th class="price">총 상품금액</th>
					<th class="total-price">총 주문금액</th>
					<th class="state">주문처리상태</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="date" rowspan="6">
						<a href="#주문상세내역">
							<div class="ordernum-container">
								<div class="order-date">2020.02.15</div>
								<div class="order-num">20200215-0000735</div>
							</div>
						</a>
					</td>
					<td class="product">
						<div class="product-img" >상품이미지고민</div>
						<a href="#상품페이지">
							<div class="product-name">
								<div class="main">상품명 상품명 상품명</div>
							</div>
						</a>
					</td>
					<td class="quantity">수량</td>
					<td class="price">가격*수량금액</td>
					<td class="total-price" rowspan="6">총 결제금액</td>
					<td class="service" rowspan="6">
						<div>배송완료</div>
					</td>
				</tr>
				<tr>
					<td class="product">
						<div class="product-img" >상품이미지고민</div>
						<a href="#상품페이지">
							<div class="product-name">
								<div class="main">상품명 상품명 상품명</div>
							</div>
						</a>
					</td>
					<td class="quantity">수량</td>
					<td class="price">가격*수량금액</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>