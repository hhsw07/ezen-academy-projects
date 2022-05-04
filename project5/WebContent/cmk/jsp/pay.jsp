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
	.pay-tbody tr td{padding:12px 10px;}
	.pay-wrap{width:1050px; margin:0 auto;}
	.pay-table-th{width:100%; border-top:3px solid #cacaca;}
	.pay-table-td{width:100%; border-top:1px solid #cacaca;}
	.pay-order{width:1050px; margin:20px auto; border:2px solid #1AAB8A;}
	.pay-delivery{width:1050px; margin:20px auto; border:2px solid #1AAB8A;}
	.pay-price{width:1050px; margin:20px auto; border:2px solid #1AAB8A; text-align:right; padding:20px 10px;}
	.fmtnum{text-align:right;}
	
	
	[data-layout=_r] {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem 1rem;
}[data-layout^="_r"] {
    display: flex;
    flex-wrap: wrap;
    flex: 1 1 auto;
}[data-layout*=ec-n3] {
    margin-right: 18.75%;flex: 0 0 31.25%;
}[data-layout=_r] > div {
    padding: 0 1rem 1rem 1rem;
}[data-layout*=ec-half] {
    flex: 0 0 50%;
}
	
	
/* 버튼 */
	.pay-btn{width:1050px; margin:20px auto; text-align:center;}
	.btn{background:#1AAB8A; color:#fff; border:none; position:relative; height:60px; font-size:1.5em; padding:0 2em; cursor:pointer;
	transition:800ms ease all; outline:none;}
	.btn:hover{background:#fff; color:#1AAB8A;}
	.btn:before,.btn:after{content:''; position:absolute; top:0; right:0; height:2px; width:0; background: #1AAB8A; transition:400ms ease all;}
	.btn:after{right:inherit; top:inherit; left:0; bottom:0;}
	.btn:hover:before,.btn:hover:after{width:100%; transition:800ms ease all;}
	
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	<%-- 
		
	--%>
		$("h2").text("결제하기");
	});
</script>
</head>
<body>
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
					<th></th><th>상품명</th><th>수량</th><th>가격</th><th>합계</th><th>적립금</th>
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
						<span>상품이미지 고민중.. </span><span>상품명</span>
					</td>
					<td>수량</td>
					<td class="fmtnum">가격</td>
					<td class="fmtnum">합계금액</td>
					<td>적립금</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<section>
		<div data-layout="_r">
			<div data-layout="de6 ec5 ec-n3">
				<table>
					<caption>주문자 정보 확인</caption>
					<tr>
						<th>이름</th><td><input type="text" name="name"></td>
					</tr>
					<tr>
						<th>전화번호</th><td><input type="text" name="tel"></td>
					</tr>
					<tr>
						<th>이메일</th><td><input type="email" name="email"></td>
					</tr>
				</table>
			</div>
			<div data-layout="de10 ec-half">
				<div class="pay-delivery">
					<table>
						<cation>배송정보입력</cation>
						<tr>
							<th>배송지선택</th><td><input type="radio" name="delivery" value="old">최근 배송지<input type="radio" name="delivery" value="new">새 배송지</td>
						</tr>
						<tr>
							<th>수령인</th><td><input type="text" name="recipient"></td>
						</tr>
						<tr>
							<th>연락처</th><td><input type="text" name="hp"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div>
									<input type="text" name="post"><input type="button" value="우편번호찾기">
								</div>
								<div>
									<input type="text" name="road_addr">
								</div>
								<div>
									<input type="text" name="detail_addr">
								</div>
							</td>
						</tr>
						<tr>
							<th>주문 요청사항</th><td><textarea style="width:400px; height:50px; resize:none;" scrolling="yes"></textarea></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>
	
	<div class="pay-price">
		<h1>최종결제금액</h1>
	</div>
	
	<div class="pay-btn">
		<input class="btn" type="button" name="selBtn" value="선택주문"/>
		<input class="btn" type="button" name="allBtn" value="전체주문"/>
	</div>
	
</body>
</html>