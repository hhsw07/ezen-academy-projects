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
<link rel="stylesheet" href="${path}/css/kb_w_user_StorePay.css">
<title>Insert title here</title>
<script>
	
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <h2 class="store_pay_Title">주문/결제</h1>

        <div class="user_info_div">
            <h3>구매자정보</h3>
            <div class="user_info">
                <table class="store_table">
                    <tr class="store_tr">
                        <th class="store_th">이름</th>
                        <td class="store_td">권기범</td>
                    </tr>
                    <tr class="store_tr">
                        <th class="store_th">이메일</th>
                        <td class="store_td">rlqja914kg@naver.com</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="user_shipping_info_Div">
            <h3>배송지 정보</h3>
            <table class="store_table">
                <tr class="store_tr">
                    <th class="store_th">이름</th>
                    <td class="store_td"><input type="text" name="pay_name" class="inputs"></td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">배송지정보</th>
                    <td class="store_td"><input type="text" name="pay_zipcode"><button>우편번호찾기</button><br>
                    <input type="text" name="pay_addr" class="inputs" style="margin-top:10px;"></td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">연락처</th>
                    <td class="store_td"><input type="text" name="pay_phone"></td>
                </tr>
                
            </table>
        </div>

        <div class="pay_product_info">
            <h3>상품 정보</h3>
            <table class="store_table">
                <tr class="store_tr">
                    <th class="store_th">상품 이름</th>
                    <td class="store_td">초~달아서 초당! 초당 옥수수</td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">상품 옵션</th>
                    <td class="store_td">초당옥수수 2KG</td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">상품 수량</th>
                    <td class="store_td">3 개</td>
                </tr>

            </table>
        </div>
        <div class="pay_info_Div">
            <h3>결제 정보</h3>
            <table class="store_table">
                <tr class="store_tr">
                    <th class="store_th">상품가격</th>
                    <td class="store_td">105,000원</td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">보유 예치금</th>
                    <td class="store_td">120,000원</td>
                </tr>
                <tr class="store_tr">
                    <th class="store_th">결제후 잔액</th>
                    <td class="store_td">15,000원</td>
                </tr>
            </table>
        </div>
        <div class="pay_btn_Div">
            <button id="pay_btn">결제하기</button>
        </div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>