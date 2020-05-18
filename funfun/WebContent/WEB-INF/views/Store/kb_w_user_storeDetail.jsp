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
<link rel="stylesheet" href="css/kb_w_user_StoreDetail.css">
<script>
		$(document).ready(function(){
		
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	  		<div class="store-title" style="text-align: center; margin-top:0;" >
	    		<div class="label label-warning">${store.cate_title}</div>
	    		<h3 style="font-weight:800;">${store.sto_title}</h3>
        	</div>
        <div id="sto_menu_Div">
            <ul class="sto_menu_ul">
                <li class="sto_menu_li"><a href="#sto_Title_Div" class="sto_menu_a">상단</a></li>
                <li class="sto_menu_li"><a href="#sto_Story_Div" class="sto_menu_a">스토리</a></li>
                <li class="sto_menu_li"><a href="#sto_QnA_Div" class="sto_menu_a">문의</a></li>
            </ul>
        </div>
        <div id="sto_Main_Info_Div">
            
            <div id="sto_Image_Div">
                <img src="img/${store.sto_image}" class="img-responsive" alt="Responsive image" 
                style="width:80%;
                height:100%; margin-left:auto; margin-right:auto;">
            </div>

            <div id="sto_pay_Div">
                <div id="maker_name_Div"> 메이커 명 : ${store.maker_name}</div>
                <div id="option_Div">
                    <span id="option_title">옵션 : </span>
                    <select class="form-data" id="option_select">
                        <option> 1kg (25,000)</option>
                        <option> 2kg (35,000)</option>
                    </select>
                </div>
                <div id="option_cnt_div">
                    <span id="option_cnt_title">수량 : </span>
                    <input type="number" class="form-data" id="cnt_input">
                </div>
                <div id="option_price_Div">
                    25,000원
                </div>
                <div id="pay_Btn_Div">
                    <button id="Pay_Btn">주문하기</button>
                </div>
            </div>

           
        </div>
        <div id="sto_Story_Div">
            <div id="sto_Story_Title">상세 스토리</div>
            ${store.sto_detai}
        </div>

        <div id="sto_QnA_Div">
            <div id="sto_QnA_Title">스토어 문의</div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>구분</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성날짜</th>
                        <th>답변여부</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>배송</td>
                        <td>배송 언제 되나요?</td>
                        <td> 이젠임당 </td>
                        <td> 2020.05.18 </td>
                        <td> 미답변 </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>배송</td>
                        <td>배송 언제 되나요?</td>
                        <td> 이젠임당 </td>
                        <td> 2020.05.18 </td>
                        <td> 미답변 </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>배송</td>
                        <td>배송 언제 되나요?</td>
                        <td> 이젠임당 </td>
                        <td> 2020.05.18 </td>
                        <td> 미답변 </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>배송</td>
                        <td>배송 언제 되나요?</td>
                        <td> 이젠임당 </td>
                        <td> 2020.05.18 </td>
                        <td> 미답변 </td>
                    </tr>
                </tbody>

            </table>

            <div id="pagination_Div">
                <ul class="pagination">
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                </ul>
            </div>
        </div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>