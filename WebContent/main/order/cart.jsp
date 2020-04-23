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
	.product-img {height: 60px; width: 60px; background-size: cover; background-position: center; background-repeat: no-repeat;}
	
	
	
/* 버튼 */
	.btn-order-ctrl {width:1080px; margin:0 auto;overflow: hidden;padding: 30px 0 0;} 
	.btn0 {float: left;width: 50%;text-align: left;}
	.box_btn {display: inline-block;text-align: center;vertical-align: top;}
	.box_btn * {width: 140px;margin: 0 10px 0 0;}
	.box_btn.white * {  border: 1px solid #e5e5e5; background: #fff;color: #333 !important;}
	.box_btn.huge > * { padding: 18px !important; font-size: 16px !important;}
	.box_btn > * {display: inline-block;outline: none;font-weight: 300;ext-align: center;vertical-align: middle;
    line-height: 1.4; white-space: nowrap;cursor: pointer; -webkit-appearance: none;transition: all .2s ease;}
    .btn1 {float: right; width: 50%; text-align: right;}
    .box_btn.gray * {border-color: #f2f2f2;background: #f2f2f2;color: #333 !important;}
    
	.btn{background:#63145F; color:#fff; border:none; position:relative; height:60px; font-size:1.5em; padding:0 2em; cursor:pointer;
	transition:800ms ease all; outline:none;}
	.btn:hover{background:#fff; color:#63145F;}
	.btn:before,.btn:after{content:''; position:absolute; top:0; right:0; height:2px; width:0; background: #63145F; transition:400ms ease all;}
	.btn:after{right:inherit; top:inherit; left:0; bottom:0;}
	.btn:hover:before,.btn:hover:after{width:100%; transition:800ms ease all;}
	
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- ${fn:length(plist)} : ${plist}의 크기 --%>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("장바구니");
		// 전체선택
		var allCnt = $("input[type=checkbox]:not(#checkAll)").length;
		var checkedCnt = $("input[type=checkbox]:checked:not(#checkAll)").length;
		$("input[type=checkbox]:not(#checkAll)").change(function () {
			var checked = $(this).is(":checked");
			if (checked) {
				checkedCnt++;
			} else {
				$("#checkAll").prop("checked", false);
				checkedCnt--;
			}
			if (checkedCnt >= allCnt) {
				$("#checkAll").prop("checked", true);
			} else {
				$("#checkAll").prop("checked", false);
			}
		});
		$("#checkAll").change(function(){
			var checked = $(this).is(":checked");
			if (checked) {
				$("input[type=checkbox]").prop("checked", true);
				checkedCnt = allCnt;
			} else {
				$("input[type=checkbox]").prop("checked", false);
				checkedCnt = 0;
			}
		});
		
		$("#delBtn")
		
	});
	<%-- ${fn:length(plist)} : ${plist}의 크기 --%>
	var cartCnt = ${fn:length(cart)};
	function minus(no){
		// 구매수량, 수량에 따른 가격 처리
		var cnt = Number($("#cnt"+no).text());
		if(cnt > 1){
			cnt--;
		}
		$("#cnt"+no).text(cnt);
		var price = Number($("#price"+no).text());
		$("#tot"+no).text(cnt*price);
		var point = cnt*price*0.01;
		// 반올림처리
		$("#point"+no).text(point+((point%1>0.5)?(1-(point%1))%1:-(point%1)));
	}
	function plus(no){
		// 구매수량, 수량에 따른 가격 처리
		var cnt = Number($("#cnt"+no).text());
		cnt++;
		$("#cnt"+no).text(cnt);
		var price = Number($("#price"+no).text());
		$("#tot"+no).text(cnt*price);
		var point = cnt*price*0.01;
		// 반올림처리
		$("#point"+no).text(point+((point%1>0.5)?(1-(point%1))%1:-(point%1)));
	}
	
	
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<div class="cart-cont">
		<header class="cart-title">
			<h2></h2>
		</header>
		<form method="post">
			<input type="hidden" name="proc"/>
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
							<th><input type="checkbox" name="cart_all" id="checkAll"/></th><th>상품명</th><th>수량</th><th>가격</th><th>합계</th><th>적립예정 포인트</th>
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
						<c:forEach var="cart" varStatus="status" items="${cart}">
						
										
						<tr>
							<td style="text-align:center"><input type="checkbox" name="cart"/></td>
							<td>
								<span class="product-img" style="background-image:url('image/CPU/${cart.parts_img}')" ></span><span>${cart.parts_name}</span>
							</td>
							<td style="text-align:center">
								<div class="pd_count">
									<input type="button" onclick="minus(${status.count})" value="-"/>
									<span id="cnt${status.count}">${cart.req_cnt}</span>
									<input type="button" onclick="plus(${status.count})" value="+"/>
								</div>
							</td>
							<td class="fmtnum">
								<span id="price${status.count}">${cart.parts_price}</span> 원
							<%-- <fmt:formatNumber id="price(${status.count})" type="number" value="${cart.parts_price}"/> --%></td>
							<td class="fmtnum">
								<span  id="tot${status.count}">${cart.parts_price*cart.req_cnt}</span> 원
							<%-- <fmt:formatNumber id="tot(${status.count})" type="number" value="${cart.parts_price*cart.req_cnt}"/> --%></td>
							<td class="fmtnum">
								<span id="point${status.count}">${(cart.req_cnt*cart.parts_price*0.01)+(((cart.req_cnt*cart.parts_price*0.01)%1>0.5)?(1-((cart.req_cnt*cart.parts_price*0.01)%1))%1:-((cart.req_cnt*cart.parts_price*0.01)%1))}</span> p
								<%-- <fmt:formatNumber type="number" value="${point+((point%1>0.5)?(1-(point%1))%1:-(point%1))}"/> --%>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="cart-price">
				<div>
					<b>결제예정금액</b>
					<p><span id="totalPay"></span> 원</p>
				</div>
			</div>
		</form>
		
		<div class="btn-order-ctrl">
			<div class="btn0">
				<div class="box_btn white huge" id="delBtn"><a href="javascript:basket_multidel()">선택삭제</a></div>
			</div>
			<div class="btn1">
				<input class="btn" type="button" name="selBtn" value="선택주문"/>
				<input class="btn" type="button" name="allBtn" value="전체주문"/>
			</div>
		</div>
		
		
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>