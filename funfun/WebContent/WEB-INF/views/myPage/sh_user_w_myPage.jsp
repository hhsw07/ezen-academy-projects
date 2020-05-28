<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
          <img  class="profile__img" src="${meminfo.memProfile}" alt="">
          <table class="profile__times--table">
            <tr><td class="profile__times--num">${fundCnt}</td><td class="profile__times--num">${orderCnt}</td></tr>
            <tr><td class="profile__times--text">펀딩</td><td class="profile__times--text">주문</td></tr>
          </table>
          <button class="btn btn-default profile__detail" onclick="location.href='${path}/profileEdit.do'">프로필 편집</button>
          <button class="btn btn-default profile__detail" onclick="location.href='${path}/myaccount.do'">예치금 관리</button>
          <button class="btn btn-default profile__detail" onclick="location.href='${path}/secession.do'">회원탈퇴</button>
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
	<c:forEach var="list" items="${flist}">
	            <div class="col-xs-12 col-md-3 item">
	              <div class="thumbnail">
	                <img src="${list.image}" style="height:180px; width:320px" alt="...">
	                <span onclick="deleteFavor('${list.proCode}')" id="deleteFavor">X</span>
	                <div class="caption">
	                  
	                  <p class="item__title">${list.proTitle}</p>
	                  <span class="item__category">${list.cateTitle} | 
	                  
					  <c:choose>
				        <c:when test="${fn:length(${list.makerName}) gt 4}">
				        <c:out value="${fn:substring(list.makerName, 0, 4)}">...
				        </c:out></c:when>
				        <c:otherwise>
				        <c:out value="${list.makerName}">
				        </c:out></c:otherwise>
					  </c:choose>
					  
					  </span><span class="item__money">모금율 : ${list.percent}</span>
	                </div>
	              </div>
	            </div>    
	            
	         <script>
	         	var proCode;
				function deleteFavor(proCode){
					this.proCode = proCode;
					$("[name=pc]").val(proCode)
					$("#deleteFavorForm").submit()
				}
	         </script>    
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
</c:if>
<c:forEach var="list" items="${plist}" begin="0" end="5" step="1">
        <div class="row rowposition" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10" style="margin-top:10px">
          <span style="font-size:14px;color:gray;padding-bottom:10px;">펀딩번호 : ${list.fundingCode}</span>
          <div class="funding" style="margin-top:5px">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">
              <c:choose>
             	<c:when test="${list.fundState eq '펀딩취소'}"><span style="color:gray">펀딩취소</span></c:when>
				<c:when test="${list.proLeftDate<0 and list.percent>=0.8}">펀딩성공 </c:when>	
				<c:when test="${list.proLeftDate<0 and list.percent<0.8}"><span style="color:red">펀딩실패 </span></c:when>
				<c:when test="${list.proLeftDate>=0}"><span style="color:orange">펀딩중 </span></c:when>
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
             <button onclick="openFundingAdrChangeModal('${list.fundAddress}','${list.fundingCode}')" style="position:relative;top:10px; width : 48.5%;" class="btn btn-warning funding--btn btn1" data-toggle="modal" data-target="#exampleModal2" data-whatever="@mdo">주소지 정보 변경하기</button>
            <span style="width:3%"></span>
            <a onclick="cancleFundingModal('${list.fundingCode}')" style="position:relative;bottom:75px;width : 48.5%; float : right;" class="trigger-btn btn btn-warning funding--btn btn2" href="#myModal" data-toggle="modal">펀딩 취소 하기</a>
         </div>
        </div>
        </div>
        
        <script>
        var fundingCode;
		function openFundingAdrChangeModal(oldAdr,fundingCode){
			$("#oldAdr2").html(oldAdr)
			this.fundingCode = fundingCode;
		}
		function changeFundingAdr(){
			var newAdr2 = $("#message-text2").val()
			$("[name=newAdr2]").val(newAdr2)
			$("[name=fc]").val(fundingCode)
			$("#form2").submit()
			alert('주소가 변경 되었습니다')
			
		}
		function cancleFundingModal(fundingCode){
			this.fundingCode = fundingCode;
		}
		function cancleFunding(){
			$("[name=fcCancle]").val(fundingCode)
			$("#cancleFunding").submit()
			alert('펀딩이 취소되었습니다')
		}
        </script>
      
</c:forEach>
</div>

<!-- 참여한 펀딩 끝 -->
<!-- 주문 및 배송조회 -->
<div class="trans_display">
<c:if test="${empty tlist}">

   <div class="emptyMsg">주문 및 배송내역이 존재하지 않습니다</div>

</c:if>
	<c:if test="${!empty tlist}">
	<c:forEach var="list" items="${tlist}">
        <div class="row rowposition" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10" style="margin-top:10px">
          <span style="font-size:14px;color:gray;padding-bottom:10px;">주문번호 : ${list.orderCode}</span>
          <div class="funding" style="margin-top:5px">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">
               <c:choose>
             	<c:when test="${list.orderCurr eq '주문취소'}"><span style="color:gray">주문취소</span></c:when>
				<c:when test="${list.orderCurr eq '배송완료'}">배송완료 </c:when>	
				<c:when test="${list.orderCurr eq '배송중'}"><span style="color:orange">배송중 </span></c:when>
				<c:when test="${list.orderCurr eq '주문완료'}"><span style="color:orange">주문완료 </span></c:when>
			  </c:choose>              
              </td><td class="funding__fund-date">주문일 : ${list.orderDate}</td></tr>
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
           
            <c:choose>
             	<c:when test="${list.orderCurr eq '주문취소' or list.orderCurr eq '배송완료' or list.orderCurr eq '배송중'}">
             		<p style="color:red; font-size:13px;position:relative;top:15px">* ${list.orderCurr} 상태에서는 주문 취소 및 주소지 수정이 불가능합니다</p>
             		<button class="MovedetailPage">상품 상세페이지로 이동하기</button>
             	</c:when>
				<c:when test="${list.orderCurr eq '주문완료'}">
					<button onclick="openAdrChangeModal('${list.orderAddress}','${list.orderCode}')" style="position:relative;top:10px; width : 48.5%;" class="btn btn-warning funding--btn btn1" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">주소지 정보 변경하기</button>
            		<span style="width:3%"></span>
					<a onclick="cancleOrderModal('${list.orderCode}')" style="position:relative;bottom:75px;width : 48.5%; float : right" class="trigger-btn btn btn-warning funding--btn btn2" href="#myModal2" data-toggle="modal">주문 취소 하기</a>
				</c:when>
			  </c:choose> 
            
          </div>
          </div>
        </div>
        <script>
        var orderCode;
		function openAdrChangeModal(oldAdr,orderCode){
			$("#oldAdr").html(oldAdr)
			this.orderCode = orderCode;
		}
		function changeAdr(){
			var newAdr = $("#message-text").val()
			$("[name=newAdr]").val(newAdr)
			$("[name=oc]").val(orderCode)
			$("#form1").submit()
			alert('주소가 변경되었습니다')
		}
		function cancleOrderModal(orderCode){
			this.orderCode = orderCode;
		}
		function cancleOrder(){
			$("[name=ocCancle]").val(orderCode)
			$("#cancleOrder").submit()
			alert('주문이 취소되었습니다')
		}
        </script>
	</c:forEach>
	</c:if>

</div>

<form id="form1" style="display:none" action="/funfun/changeAdr.do">
	<input type="hidden" name="newAdr">
	<input type="hidden" name="oc">
	<input type="submit">
</form>

<form id="form2" style="display:none" action="/funfun/changeFundingAdr.do">
	<input type="hidden" name="newAdr2">
	<input type="hidden" name="fc">
	<input type="submit">
</form>

<form id="cancleOrder" style="display:none" action="/funfun/cancleOrder.do">
	<input type="hidden" name="ocCancle">
	<input type="submit">
</form>

<form id="cancleFunding" style="display:none" action="/funfun/cancleFunding.do">
	<input type="hidden" name="fcCancle">
	<input type="submit">
</form>

<form id="deleteFavorForm" style="display:none" action="/funfun/deleteFavor.do">
	<input type="hidden" name="pc">
	<input type="submit">
</form>



<!-- 주문 및 배송 조회 끝 -->

<!-- 주소 변경 모달 -->
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
	            <span id="oldAdr"></span> 
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">새로운 주소를 입력해주세요</label>
	            <input class="form-control" id="message-text"/>
	          </div>

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">이전으로 돌아가기</button>
	        <button onclick="changeAdr()" type="button" class="btn btn-primary">변경하기</button>
	      </div>
	    </div>
	  </div>
	</div>
	
<!-- 주소 변경 모달2 -->
       <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
	            <span id="oldAdr2"></span> 
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">새로운 주소를 입력해주세요</label>
	            <input class="form-control" id="message-text2"/>
	          </div>

	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">이전으로 돌아가기</button>
	        <button onclick="changeFundingAdr()" type="button" class="btn btn-primary">변경하기</button>
	      </div>
	    </div>
	  </div>
	</div>	


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
				<button onclick="cancleFunding()" type="button" class="btn btn-danger">펀딩취소하기</button>
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
			<div class="modal-footer">`
				<button type="button" class="btn btn-info" data-dismiss="modal">이전화면으로</button>
				<button onclick="cancleOrder()" type="button" class="btn btn-danger">주문취소하기</button>
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