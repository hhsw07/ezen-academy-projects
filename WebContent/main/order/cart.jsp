<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
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
	.cart-cont{min-height:750px;}

	.cart-title{width:1050px; margin:0 auto;}
	.cart-thead tr th{padding:12px 10px; font-weight:700;}
	.cart-tbody tr td{padding:12px 10px;border-bottom:1px solid #cacaca; }
	.cart-wrap{width:1050px; margin:0 auto;}
	.cart-table-th{width:100%; border-top:3px solid #cacaca;}
	.cart-table-td{width:100%; border-top:1px solid #cacaca; border-collapse:collapse;}
	.cart-price{width:1050px; margin:20px auto; border:2px solid #63145F; text-align:right; padding:20px 10px;}
	.fmtnum{text-align:right;}
	
/* 버튼 */
	.cart-btn{width:1050px; margin:20px auto; text-align:right;}
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
		$("h2").text("장바구니");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<div class="cart-cont">
		<header class="cart-title">
			<h2></h2>
		</header>
		<div class="cart-wrap">
			<table class="cart-table-th">
				<colgroup>
					<col width="5%">
					<col width="55%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<thead class="cart-thead">
					<tr>
						<th></th><th>상품명</th><th>수량</th><th>가격</th><th>합계</th><th>적립금</th>
					</tr>
				</thead>
			</table>
			<table class="cart-table-td">
				<colgroup>
					<col width="5%">
					<col width="55%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
				<tbody class="cart-tbody">
					<tr>
						<td><input type="checkbox" name="cart"/></td>
						<td>
							<span>상품이미지 고민중</span><span>상품명</span>
						</td>
						<td>수량. 수량변경</td>
						<td class="fmtnum">가격</td>
						<td class="fmtnum">합계금액</td>
						<td>적립금</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="cart-price">
			<div>
				<b>결제예정금액</b>
				<p>결제예정금액</p>
			</div>
		</div>
		<div class="cart-btn">
			<input class="btn" type="button" name="selBtn" value="선택주문"/>
			<input class="btn" type="button" name="allBtn" value="전체주문"/>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>