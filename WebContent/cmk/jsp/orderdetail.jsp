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


</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		$("h2").text("");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<h2></h2>
	<div class="container">
		<div class="order-detail-container frame">
			<div class="order-area">
				<h3>주문 정보</h3>
				<table>
					<colgroup>
						<col width="15%">
						<col width="35%">
						<col width="15%">
						<col width="35%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">주문번호</th>
							<td>20200116-0001318</td>
							<th scope="col">주문일자</th>
							<td>2020-01-16 23:24:16</td>
						</tr>
						<tr>
							<th scope="col">주문자</th>
							<td>최 민기</td>
							<th scope="col">주문처리상태</th>
							<td> 배송완료</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="order-list">
				<h3>주문 상품 정보</h3>
				<table class="delivery-product-info">
					<thead>
						<tr>
							<th scope="col" class="product">상품정보</th>
							<th scope="col" class="sell">판매가</th>
							<th scope="col" class="quantity">수량</th>
							<th scope="col" class="state">처리상태</th>
							<th scope="col" class="delivery-detail">택배사</th>
							<th scope="col" class="delivery-tracking">배송추적</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="product">
								<div class="product-img">상품이미지</div>
								<a href="#상품페이지">
									<div class="product-name">
										<div class="main">상품명</div>
									</div>
								</a>
							</td>
							<td class="sell">판매금액</td>
							<td class="quantity">수량</td>
							<td class="state">
								<p>배송완료</p>
							</td>
							<td class="delivery-detail" rowspan="2">
								<span><p>CJ대한통운</p><p>운송장번호</p></span>
							</td>
							<td class="delivery-tracking" rowspan="2">
								<a href="https://www.doortodoor.co.kr/parcel/doortodoor.do?fsp_action=PARC_ACT_002&fsp_cmd=retrieveInvNoACT&invc_no=#운송장번호" target="_blank" rel="noopener noreferrer">
									<div class="btn detail-btn">배송추적</div>
								</a>
							</td>
						</tr>
						<tr>
							<td class="product">
								<div class="product-img" >상품이미지</div>
								<a href="#상품페이지">
									<div class="product-name">
										<div class="main">상품명</div>
									</div> 
								</a>
							</td>
							<td class="sell">판매금액</td>
							<td class="quantity">1</td>
							<td class="delivery">개별배송</td>
							<td class="state">
								<p>배송완료</p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="order-area order-payment-detail">
				<h3>결제 정보</h3>
				<table class="order-info">
					<caption>결제 정보</caption>
					<colgroup>
						<col width="20%">
						<col width="30%">
					</colgroup>
					<tbody>
						<tr>
							<th class="type">총 주문금액</th>
							<td class="payment">
								<div class="payment-price">65,800원 </div>
							</td>
						</tr>
						<tr>
							<th class="type">포인트 사용금액</th>
							<td class="payment">
								<div class="payment-price">5,000원</div>
							</td>
						</tr>
						<tr>
							<th class="type">총 결제금액</th>
							<td class="payment">
								<div class="payment-price">60,800원</div>
							</td>
						</tr>
						<tr class="mileage-wrapper">
							<th class="type">적립금</th>
							<td class="payment">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="order-area">
				<h3>배송지 정보</h3>
				<table>
					<colgroup>
						<col width="15%">
						<col width="85%">
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">수취인</th>
							<td>수취인이름</td>
						</tr>
						<tr>
							<th scope="col">주소</th>
							<td>배송주소 (우편번호)</td>
						</tr>
						<tr>
							<th scope="col">연락처</th>
							<td>
								<span class="mobile-wrapper">010-4108-5116 </span>
							</td>
						</tr>
						<tr>
							<th scope="col">배송메세지</th>
							<td>배송전연락부탁드립니다...</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
			
			<div class="btn-wrapper">
				<a href="#마이페이지주문조회">
					<div class="back-btn">목록보기</div>
				</a>
			</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>