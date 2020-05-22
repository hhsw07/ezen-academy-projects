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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.0/bootbox.min.js"></script>
<script>
		var flist = "${flist}";
		if(flist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		
		

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
<div class="display_item">
<c:if test="${empty flist}">
	
   <div class="emptyMsg">관심프로젝트가 존재하지 않습니다</div>

</c:if>
<c:if test="${!empty flist}">
<div class="row">
	<c:forEach var="list" items="${flist}" begin="0" end="5" step="1">
	            <div class="col-xs-12 col-md-3 item">
	              <div class="thumbnail">
	                <img src="${path}/img/${list.image}" style="height:180px; width:320px" alt="...">
	                <div class="caption">
	                  
	                  <p class="item__title">${list.proTitle}</p>
	                  <span class="item__category">${list.cateTitle} | ${list.makerName}</span><span class="item__money">모금율 : ${list.percent}</span>
	                </div>
	              </div>
	            </div>     
	</c:forEach>
	 </div>
</c:if>		
</div>
<!--아이템들 끝-->

<!-- 참여한 펀딩 -->

<div class="funding_display">
<c:if test="${empty plist}">
	
   <div class="emptyMsg">참여한 펀딩이 존재하지 않습니다</div>

</c:if>
<c:if test="${!empty plist}">
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
			  </c:choose>
              </td><td class="funding__fund-date">참여일 : ${list.fundDate}</td></tr>
              <tr><td class="funding__name" colspan="2">[ ${list.cateTitle} ] ${list.proTitle}</td></tr>
              <tr><td class="funding__company">by ${list.makerName}</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">
              <fmt:formatNumber value="${list.fundPrice}" pattern="#,###,###원"/>
              </td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">${list.optTitle} -  ${list.optDetail} -  ${list.optCondition}</td></tr>
              
              <fmt:parseDate var="optDeliverDate" value="${list.optDeliverDate}" pattern="yyyy-MM-dd HH:mm:ss" />  
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">
              <fmt:formatDate value="${optDeliverDate}" pattern="yyyy-MM-dd"/>
              
              </td></tr>
              <tr><td class="funding__detail">배송상태</td><td class="funding__detail--text">${list.fundState}</td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">${list.fundAddress}</td></tr>
            </table>
             <button style="position:relative;top:10px; width : 48.5%;" class="btn btn-warning funding--btn btn1" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">주소지 정보 변경하기</button>
            <span style="width:3%"></span>
            <a style="position:relative;bottom:75px;width : 48.5%; float : right;" class="trigger-btn btn btn-warning funding--btn btn2" href="#myModal" data-toggle="modal">펀딩 취소 하기</a>
         </div>
        </div>
        </div>
      
</c:forEach>
</c:if>
</div>

<!-- 참여한 펀딩 끝 -->
<!-- 주문 및 배송조회 -->
<div class="trans_display">
<c:if test="${empty tlist}">
	
   <div class="emptyMsg">주문 및 배송내역이 존재하지 않습니다</div>

</c:if>
<c:if test="${!empty tlist}">
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
              <tr><td class="funding__detail">주문금액</td><td class="funding__detail--text">
              <fmt:formatNumber value="${list.orderPrice}" pattern="#,###,###원"/>
              </td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">${list.optDetail}</td></tr>
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">
	              <fmt:parseDate var="receivDate" value="${list.receivDate}" pattern="yyyy-MM-dd HH:mm:ss" />
	           	  <fmt:formatDate value="${receivDate}" pattern="M월 dd일"/>에 배송 예정
              </td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">${list.orderAddress}</td></tr>
            </table>
            <button style="position:relative;top:10px; width : 48.5%;" class="btn btn-warning funding--btn btn1" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">주소지 정보 변경하기</button>
            <span style="width:3%"></span>
            <a style="position:relative;bottom:75px;width : 48.5%; float : right" class="trigger-btn btn btn-warning funding--btn btn2" href="#myModal2" data-toggle="modal">주문 취소 하기</a>
          </div>
          </div>
        </div>
        
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">

		          <div class="form-group">
		            <label for="recipient-name" class="col-form-label">기존 주소</label><br>
		            	${list.orderAddress}	          
		          </div>
		          <div style="display:none;">주문 코드 : ${list.orderCode}</div>
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">새로운 주소를 입력해주세요</label>
		            <input class="form-control" id="message-text"/>
		          </div>

		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">이전으로 돌아가기</button>
		        <button onclick="changeOrderAdr()" type="button" class="btn btn-primary">변경하기</button>
		      </div>
		    </div>
		  </div>
		</div>
		<script>
			function changeOrderAdr(){
				var newAdr = $("#message-text").val()
				var orderCode = "${list.orderCode}"
				$("[name=fundAddress]").val(newAdr)
				$("[name=orderCode]").val(orderCode)
				$("form").submit()
			}
        </script>
</c:forEach>
</c:if>
</div>

<form style="display:hidden" action="/funfun/changeOrderAdr.do" method="POST">
	<input type="hidden" name="newAdr">
	<input type="hidden" name="orderCode">
	<input type="submit">
</form>


<!-- 주문 및 배송 조회 끝 -->
<!-- 모달 -->
<div class="text-center">
<!-- Modal HTML -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
				<h4 class="modal-title">정말 취소 하시겠습니까?</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p>펀딩 취소시 사용 금액은 즉시 반환됩니다</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" data-dismiss="modal">이전화면으로</button>
				<button type="button" class="btn btn-danger">펀딩취소하기</button>
			</div>
		</div>
	</div>
</div>     

<!-- 모달 -->
<div class="text-center">
<!-- Modal HTML -->
<div id="myModal2" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
				<h4 class="modal-title">정말 취소 하시겠습니까?</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p>주문 취소시 사용 금액은 즉시 반환됩니다</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" data-dismiss="modal">이전화면으로</button>
				<button type="button" class="btn btn-danger">주문취소하기</button>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

          <div class="form-group">
            <label for="recipient-name" class="col-form-label">기존 주소</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">새로운 주소를 입력해주세요</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">이전으로 돌아가기</button>
        <button type="button" class="btn btn-primary">변경하기</button>
      </div>
    </div>
  </div>
</div>

      </div>
    </div>
    </div>
  
  <!-- end main -->
  <script>

</script>
<script src="js/sh_user_w_myPage.js"></script>
</body>
</html>