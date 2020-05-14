<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<fmt:requestEncoding value="utf-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sh_user_w_myPage.css">
<script>
		var flist = "${flist}";
		if(flist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		
		$(document).ready(function(){
			
			
		})

</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
          <span class="profile__name">${meminfo.memName}</span>
          <br>
          <span class="profile__level">${memState}</span>
          <img  class="profile__img" src="${path}/img/${meminfo.memProfile}" alt="">
          <table class="profile__times--table">
            <tr><td class="profile__times--num">${fundCnt}</td><td class="profile__times--num">${orderCnt}</td></tr>
            <tr><td class="profile__times--text">펀딩</td><td class="profile__times--text">주문</td></tr>
          </table>
          <button class="btn btn-default profile__detail">프로필 편집</button>
          <button class="btn btn-default profile__detail">계좌정보</button>
          <button class="btn btn-default profile__detail">회원탈퇴</button>
          <table class="profile__choice--table">
            <tr>
              <td class="profile__choice">관심프로젝트<br><br><div id="myProject" class="clicked" style="width:70px;height:3px"></div></td>
              <td class="profile__choice">참여한 펀딩<br><br><div id="myFunding" style="width:70px;height:3px"></div></td>
              <td class="profile__choice">주문 및 배송 조회<br><br><div id="myOrder" style="width:70px;height:3px"></div></td>
            </tr>
          </table>
      </div>

<!--하단 푸른 박스 -->
      <div style="background-color: rgb(245, 247, 250); margin-top: -20px; min-height: 490px">
        <div class="container my-container" style="max-width:1200px; padding-top:10px; background-color: rgb(245, 247, 250);">

<!-- 아이템들 -->
<c:forEach var="list" items="${flist}" begin="0" end="5" step="1">
          <div class="display_item" class="row">

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="${path}/img/${list.image}" style="height:180px; width:320px" alt="...">
                <div class="caption">
                  
                  <p class="item__title">${list.proTitle}</p>
                  <span class="item__category">${list.cateTitle} | ${list.makerName}</span><span class="item__money">모금율 : ${list.percent}</span>
                </div>
              </div>
            </div>
            </div>
</c:forEach>
		
<!--아이템들 끝-->

<!-- 참여한 펀딩 -->
<div class="funding_display">

<c:forEach var="list" items="${plist}" begin="0" end="5" step="1">
        <div class="row" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10" style="margin-top:10px">
          <span style="font-size:14px;color:gray;padding-bottom:10px;">펀딩번호 : ${list.fundingCode}</span>
          <div class="funding" style="margin-top:5px">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">
              <c:choose>
				<c:when test="${list.proLeftDate<0 and list.percent>=0.8}">펀딩성공 </c:when>	
				<c:when test="${list.proLeftDate<0 and list.percent<0.8}">펀딩실패 </c:when>
				<c:when test="${list.proLeftDate>=0}"> 펀딩중 </c:when>
				<c:otherwise> ${list.percent} </c:otherwise>
			  </c:choose>
              </td><td class="funding__fund-date">참여일 : ${list.fundDate}</td></tr>
              <tr><td class="funding__name" colspan="2">[ ${list.cateTitle} ] ${list.proTitle}</td></tr>
              <tr><td class="funding__company">by ${list.makerName}</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">${list.fundPrice}원</td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">${list.optTitle} -  ${list.optDetail} -  ${list.optCondition}</td></tr>
              <fmt:parseDate var="optDeliverDate" value="${list.optDeliverDate}" pattern="yyyy-MM-dd HH:mm:ss" />
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">
              <fmt:formatDate value="${optDeliverDate}" pattern="yyyy-MM-dd"/>
              </td></tr>
              <tr><td class="funding__detail">배송상태</td><td class="funding__detail--text">${list.fundState}</td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">${list.fundAddress}</td></tr>
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
        </div>
        </div>
      
</c:forEach>

</div>

<!-- 참여한 펀딩 끝 -->
<!-- 주문 및 배송조회 -->
<div class="trans_display">

<c:forEach var="list" items="${tlist}" begin="0" end="5" step="1">
        <div class="row" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10" style="margin-top:10px">
          <span style="font-size:14px;color:gray;padding-bottom:10px;">주문번호 : ${list.orderCode}</span>
          <div class="funding" style="margin-top:5px">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">${list.orderCurr}</td><td class="funding__fund-date">주문일 : ${list.orderDate}</td></tr>
              <tr><td class="funding__name" colspan="2">${list.stoTitle}</td></tr>
              <tr><td class="funding__company">by ${list.makerName}</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">주문금액</td><td class="funding__detail--text">${list.orderPrice}원</td></tr>
              <tr><td class="funding__detail">주문금액</td><td class="funding__detail--text">${list.orderPrice}원</td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">${list.optDetail}</td></tr>
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">
	              <fmt:parseDate var="receivDate" value="${list.receivDate}" pattern="yyyy-MM-dd HH:mm:ss" />
	           	  <fmt:formatDate value="${receivDate}" pattern="M월 dd일"/>에 배송 예정
              </td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">${list.orderAddress}</td></tr>
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
          </div>
        </div>
</c:forEach>

</div>

<!-- 주문 및 배송 조회 끝 -->

      </div>
    </div>
    </div>

  <!-- end main -->
  <script>
  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
  $(function () {
    $('[data-toggle="tooltip2"]').tooltip()
  })
</script>
<script src="js/sh_user_w_myPage.js"></script>
</body>
</html>