<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/ht_user_w_MS_projectReg.css">
<link rel="stylesheet" href="css/ht_user_w_MS_projectManage.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<script src="js/bootstrap-datepicker.js"></script>
<script>
	$(document).ready(function(){
		$(".proCancel").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proCancel")
		})
		$(".proCurrnet").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOpenRegConfirm")
		})
		$(".proQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proQnAManage")
		})

		$(".storeOpenReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOpenReg")
		})
		$(".storeBasicInfoReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeBasicInfo")
		})
		$(".storeOptionReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOption")
		})
		$(".storeOrderManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOrderManage")
		})
		$(".storeQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeQnAManage")
		})

	})
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 
 	<jsp:include page="../makerstudio/ht_user_w_MS_menu.jsp"/>
 
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">스토어 주문 관리</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">스토어에 등록된 주문 리스트입니다.</span>

  	<br><br><br><br>

	<table class="table table-hover">
		<thead>
			<tr>
			<th style="width:13%;">주문자 이름</th>
			<th style="width:13%;">주문 갯수</th>
			<th style="width:13%;">주문 총 가격</th>
			<th style="width:48%;text-align:center;">주문 상세 내용</th>
			<th style="width:13%;">주문 상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="orderList" items="${orderList}">
			
			<tr>
			<td>${orderList.mem_code}</td>
			<td>${orderList.sto_order_cnt}</td>
			<td>${orderList.sto_order_price}</td>
			<td style="word-break:break-all;">
			주문 날짜 : ${orderList.sto_order_date}<br>
			받는 사람 : ${orderList.sto_order_receiver}<br>
			전화 번호 : ${orderList.sto_order_phoneno}<br>
			배송 주소 : ${orderList.sto_order_address}<br>
			배송 요청 : ${orderList.sto_order_ask}
			<td style="text-align:center;">${orderList.sto_order_curr}</td>
			</tr>
			
			</c:forEach>
		</tbody>
	</table>



  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>