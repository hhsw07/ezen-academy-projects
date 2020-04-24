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
/* 구매하기 */
	.pay-title{width:1050px; margin:0 auto;}
	.pay-thead tr th{padding:12px 10px; font-weight:700;}
	.pay-tbody tr td{padding:12px 10px; border-bottom:1px solid #cacaca; }
	.pay-wrap{width:1050px; margin:0 auto;}
	.pay-table-th{width:100%; border-top:3px solid #cacaca;}
	.pay-table-td{width:100%; border-top:1px solid #cacaca; border-collapse:collapse;}
	.pay-order{width:1050px; margin:20px auto;}
	.pay-delivery{width:1050px; margin:20px auto;}
	.pay-info{width:1050px; margin:20px auto;}
	.pay-price{width:1050px; margin:20px auto; text-align:right; padding:20px 10px;}
	.fmtnum{text-align:right;}
	.product-img {height: 60px; width: 60px; background-size: cover; background-position: center; background-repeat: no-repeat;}
	
	fieldset{border:2px solid #63145F;}
	legend{padding:5px 10px; font-weight:700; font-size:1.2em;}
	.pay-tit{heigth:35px;}
	.input-table{width:100%;}
	.input-wrap{width:220px; padding:7px 10px 9px;border:1px solid #dfdfdf;display:inline-block;vertical-align:middle;position:relative;}
	.input{width:100%;color:#3d4248;background:none; border:0;}
	.input-post{width:120px !important;}
	.input-btn{width:93px; margin:0;height:34px;line-height:34px;display:inline-block;color:#FFFFFF;font-size:12px;background:#63145F;text-align:center;vertical-align:middle;
	outline:none; border:none;}
	.input-addr{margin-top:4px; width:400px !important;line-height:1.4;padding:5px 10px 6px;border:1px solid #dfdfdf;display:block;vertical-align:middle;position:relative;}
	.request{width:400px !important; height:50px; padding:7px 10px 9px; border:1px solid #dfdfdf;vertical-align:middle;position:relative;}
	
/* 버튼 */
	.pay-btn{width:1050px; margin:20px auto 50px; text-align:center;}
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
		$("h2").text("결제하기");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<header class="pay-title">
		<h2></h2>
	</header>
	
	<div class="pay-wrap">
		<table class="pay-table-th">
			<colgroup>
				<col width="5%">
				<col width="55%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
			</colgroup>
			<thead class="pay-thead">
				<tr>
					<th></th><th>상품명</th><th>수량</th><th>가격</th><th>합계</th><th>포인트</th>
				</tr>
			</thead>
		</table>
		<table class="pay-table-td">
			<colgroup>
				<col width="5%">
				<col width="55%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
			</colgroup>
			<tbody class="pay-tbody">
				<tr>
					<td></td>
					<td>
						<span><img class="product-img" src="image/parts/${cart.parts_img}"/></span><span style="vertical-align:middle;">${cart.parts_name}</span>
					</td>
					<td>${cart.req_cnt}</td>
					<td class="fmtnum"><fmt:formatNumber type="number" value="${cart.parts_price}"/> 원</td>
					<td class="fmtnum"><fmt:formatNumber type="number" value="${cart.parts_price*cart.req_cnt}"/> 원</td>
					<td>
						<fmt:formatNumber type="number" value="${(cart.req_cnt*cart.parts_price*0.01)+(((cart.req_cnt*cart.parts_price*0.01)%1>0.5)?(1-((cart.req_cnt*cart.parts_price*0.01)%1))%1:-((cart.req_cnt*cart.parts_price*0.01)%1))}"/> p
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="pay-order">
		<fieldset>
			<legend>주문자 정보 확인</legend>
			<table class="input-table">
				<col width="17%">
				<col width="83%">
				<tr>
					<th>이름</th>
					<td>
						<div class="input-wrap"><input class="input" type="text" name="name"/></div>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>
						<div class="input-wrap"><input class="input" type="text" name="tel"/></div>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<div class="input-wrap"><input class="input" type="email" name="email"/></div>
					</td>
				</tr>
			</table>
		</fieldset>
	</div>
	
	<div class="pay-delivery">
		<fieldset>
			<legend>배송정보입력</legend>
			<table class="input-table">
				<col width="17%">
				<col width="83%">
				<tr>
					<th class="pay-tit">배송지선택</th><td><input type="radio" name="delivery" value="old"/>최근 배송지<input type="radio" name="delivery" value="new"/>새 배송지</td>
				</tr>
				<tr>
					<th>수령인</th>
					<td>
						<div class="input-wrap"><input class="input" type="text" name="recipient"/></div>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<div class="input-wrap"><input class="input" type="text" name="hp"/></div>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<div>
							<span class="input-wrap input-post">
								<input type="text" id="zip" class="input" name="postcode" value="" readonly="readonly">
							</span>
							<input class="input-btn" type="button" value="우편번호찾기"/>
						</div>
						<div class="input-addr">
							<input type="text" id="addr" class="input" name="newaddr" value="" readonly="readonly">
						</div>
						<div class="input-addr">
							<input type="text" class="input" name="detail_addr"/>
						</div>
					</td>
				</tr>
				<tr>
					<th>주문 요청사항</th>
					<td>
						<div class="request">
							<textarea style="width:100%; border:none; height:100%; resize:none;" scrolling="yes"></textarea>
						</div>
					</td>
				</tr>
			</table>
		</fieldset>
	</div>
	
	<div class="pay-info">
		<fieldset>
			<legend>결제/할인 선택</legend>
			<table class="input-table">
				<col width="17%">
				<col width="83%">
				<tr>
					<th>결제 방법 선택</th>
					<td>
						<input type="radio" name="payment" value=""/>무통장입금
						<input type="radio" name="payment" value=""/>카드결제
					</td>
				</tr>
				<tr>
					<th>포인트 사용</th>
					<td>
						<span class="input-wrap input-post">
							<input type="text" class="input" name="point" value=""/>
						</span>
						<input class="input-btn" type="button" value="사용"/>
						('포인트'원 사용가능)
					</td>
				</tr>
			</table>
		</fieldset>
	</div>
	
	<div class="pay-price">
		<fieldset>
			<h3>총 금액</h3>
			<h3>할인금액</h3>
			<h1>최종결제금액</h1>
		</fieldset>
	</div>
	
	<div class="pay-btn">
		<input class="btn" type="button" name="payBtn" value="결제하기"/>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>