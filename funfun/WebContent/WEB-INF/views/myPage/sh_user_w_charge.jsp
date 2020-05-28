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
<link rel="stylesheet" href="css/sh_user_w_account.css">
<link rel="stylesheet" href="css/sh_user_w_userProfile.css">
<script>
		var blist = "${blist}";
		if(blist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		function rdCharge(){
			var amount = $("[name=chargeQuery]").val()
			if(amount == null){
				alert('충전할 금액을 입력해주세요')
			}else if(amount < 1000){
				alert('최소 충전 금액은 1000원 입니다')
			}else{
				var result = confirm(amount+'원을 충전 신청 하시겠습니까?'); 
				if(result) { 
					$("#chargeForm").submit();
					alert('신청이 완료되었습니다')
					alert('충전이 완료되었습니다(입금확인 프로세스 미적용)')
				} else {
					
				}
			}
		}
		function rdWithdrawl(){
			var memBalance = ${clist.memBalance};
			var amount = $("#wiAmount").val();
			if(amount == null || amount == 0){
				alert('출금 신청 금액을 정확히 입력해주세요')
			}else if(memBalance < amount){
				alert('보유금액이 부족합니다')
			}else{
				alert('신청이 완료되었습니다')
				alert('출금이 완료되었습니다(출금확인 프로세스 미적용)')
				$("#wiForm").submit()
			}
		}
		function chgAct(){
			var result = confirm('계좌 정보를 수정/등록 하시겠습니까?'); 
			if(result) { 
				$("#actForm").submit();
			} else {
				
			}
		}
		$(document).ready(function(){
			var memBank = "${clist.memBank}";
			$("#selectBox").val(memBank).prop("selected", true);			
			
			$(".numberic").keyup(function(){
				function numberWithCommas(x) {
				    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
				numberWithCommas($(".numberic").val());
			})
			
		})

</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:900px; margin:auto;padding-top:100px">
	        <div class="row">
			<div class="col-md-12" style="display:flex;">
				<div style="width:25%;">
					<div style="height : 300px;margin-top:50px;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;">
						<div class="titleNav"><p class="navText">예치금 관리</p></div>
						<div class="innerNav"><p class="navText txinner" id="chargeM">예치금 충전</p></div>
						<div class="innerNav"><p class="navText txinner" id="withdrawlM">예치금 출금</p></div>
						<div class="innerNav"><p class="navText txinner" id="usingM">이용내역</p></div>
						<div class="innerNav"><p class="navText txinner" id="infoM">계좌정보</p></div>
					</div>
					
					<div style="height:90px;margin-top:30px;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;padding:10px;">
						<table style="margin-left:5px;" class="moneyTable">
						<tr><td colspan="2" style="text-align:center;text-decoration:underline;font-weight:bold;">${clist.memName}님의 예치금</td></tr>
						<tr><td style="height:10px;"colspan="2"></td></tr>
						<tr><td style="font-weight:bold;font-size:14px;">보유금액</td><td style="width:120px;font-weight:bold;font-size:14px;text-align:right;">
						<fmt:formatNumber value = "${clist.memBalance}" type = "number" pattern = "#,###,###,###,###원"/>
						</td></tr>
						</table>
					</div>
				</div>
				
				<!-- 예치금 충전 -->			
				<div id="chargeM_div" style="width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">예치금 충전</p>
			    	<p style="font-size:14px;margin-bottom:20px;">
			    	회원님에게 할당된 아래 전용번호로 입금하면, 입금 금액만큼 KRW포인트가 충전됩니다.
			    	</p>
			    	<table class="chargInfo">
			    	<tr><td>입금은행</td><td class="secondTd">기업은행</td></tr>
			    	<tr><td>계좌번호</td><td class="secondTd">999555510</td></tr>
			    	<tr><td>예금주</td><td class="secondTd">펀펀(${clist.memName})</td></tr>
			    	</table>
			    	<hr style="margin-bottom: 20px;">
			    	<form id="chargeForm" action="/funfun/myaccount.do/chargeQuery.do">
			    	<input style="margin-top:15px;width:100%;height:40px;" class="numberic ph" name="chargeQuery" placeholder="충전할 금액을 입력해주세요">
			    	<div style="display:flex;margin-top:45px;">
						<button onclick="rdCharge()" style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="button">
						신청하기
						</button>
			    	</div>
			    	</form>
			    	<p style="margin-top:40px;margin-bottom:-10px;font-weight:bold;"class="profile__img--title">신청 내역</p>
			    	<table style="width:100%;margin:auto;">
			    		<tr><td colspan="3"><hr></td></tr>
			    		<c:forEach var="list" items="${rdlist}">
			    		<tr><td>${list.rddate}</td><td>
			    		<fmt:formatNumber value = "${list.chargeQueryAmount}" type = "number" pattern = "#,###,###,###,###원"/>
			    		</td><td>${list.curr}</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		</c:forEach>
			    	</table>
			    	
				</div>
				
				<!-- 예치금 출금 -->	
				<div id="withdrawlM_div" style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">예치금 출금</p>
			    	<div style="display:flex;font-size:14px;">
			    	<table style="font-size:14px;margin-bottom:20px;">
			    	<tr>
				    	<td style="font-size:14px;font-weight:bold;">보유 금액
				    	</td>
				    	<td style="width:440px;text-align:right;font-size:14px;font-weight:bold;">
				    		<fmt:formatNumber value = "${clist.memBalance}" type = "number" pattern = "#,###,###,###,###원"/>
				    	</td>
			    	</tr>
			    	</table>
			    	</div>
			    	<table class="chargInfo">
			    	<tr><td>출금은행</td><td class="secondTd">${clist.memBank}</td></tr>
			    	<tr><td>계좌번호</td><td class="secondTd">${clist.memAccount}</td></tr>
			    	<tr><td>예금주</td><td class="secondTd">${clist.memName}</td></tr>
			    	</table>
			    	<hr style="margin-bottom: 20px;">
			    	<form id="wiForm" action="/funfun/myaccount.do/withdrawlQuery.do">
			    	<input id="wiAmount" name="minusBal" style="margin-top:15px;width:100%;height:40px;" class="ph" placeholder="출금할 금액을 입력해주세요">
			    	<div style="display:flex;margin-top:45px;">
						<button onclick="rdWithdrawl()" style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="button">신청하기</button>
			    	</div>
			    	</form>
			    	<p style="margin-top:40px;margin-bottom:-10px;font-weight:bold;"class="profile__img--title">신청 내역</p>
			    	<table style="width:100%;margin:auto;">
			    		<tr><td colspan="3"><hr></td></tr>
			    		<c:forEach var="list" items="${wilist}">
			    		<tr><td>${list.wiDate}</td><td>
			    		<fmt:formatNumber value = "${list.minusBal}" type = "number" pattern = "#,###,###,###,###원"/>
			    		</td><td>${list.wiCurr}</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		</c:forEach>
			    	</table>
			    	
				</div>	
				
				<!-- 이용내역 -->	
				<div id="usingM_div"style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">이용내역</p>
			    	
			    	<table style="width:100%;margin:auto;text-align:center">
			    		<tr><td colspan="4"><hr></td></tr>
			    		<c:forEach var="list" items="${blist}">
			    		<tr><td>${list.balDate}</td><td>
			    		<fmt:formatNumber value = "${list.balAmount}" type = "number" pattern = "#,###,###,###,###원"/>
			    		</td><td>${list.balHis}</td>
			    		<td>
			    		<c:if test="${list.balType == '입금'}"><p class="ifText" style="color:rgb(247,0,0);">입금</p></c:if>
			    		<c:if test="${list.balType == '출금'}"><p class="ifText" style="color:rgb(9,54,135)">출금</p></c:if>
			    		<c:if test="${list.balType == '스토어구매'}"><p class="ifText" style="color:rgb(1,200,201);">스토어 구매</p></c:if>
			    		<c:if test="${list.balType == '펀딩투자'}"><p class="ifText" style="color:rgb(255,151,5);">펀딩 투자</p></c:if>
			    		<c:if test="${list.balType == '펀딩수입'}"><p class="ifText" style="color:gray;">펀딩 수입</p></c:if>
			    		<c:if test="${list.balType == '스토어수입'}"><p class="ifText" style="color:gray;">스토어 수입</p></c:if>
			    		</td></tr>
			    		<tr><td colspan="4"><hr></td></tr>
			    		</c:forEach>
			    	</table>
			    </div>
				<!-- 계좌 정보 -->	
				<div id="infoM_div" style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">계좌 정보 등록 및 수정</p>

			    	<form id="actForm" action="/funfun/myaccount.do/chgAccountInfo.do">
			    	<p style="margin-top:40px;font-weight:bold;"class="profile__img--title">은행 선택</p>
			    	<select id="selectBox" name="bankName" style="margin-top:5px;width:100%;height:40px;">
						    <option selected>은행선택</option>
						    <option value="신한은행">신한은행</option>
						    <option value="우리은행">우리은행</option>
						    <option value="농협은행">농협은행</option>
						    <option value="기업은행">기업은행</option>
						    <option value="산업은행">산업은행</option>
					</select>
					<p style="margin-top:30px;font-weight:bold;"class="profile__img--title">계좌 번호</p>
			    	<input name="memAccount" value="${clist.memAccount}" style="margin-top:-3px;width:100%;height:40px;">
			    	<div style="display:flex;margin-top:40px;">
							<button onclick="chgAct()" style="background-color:orange;color:white;width:100%;" class="profile__submit" type="button">제출</button>
			    	</div>
			    	</form>
							
				</div>
	        </div>
		    </div>
	    </div>
	</div>
	<script src="js/sh_user_w_myPage.js"></script>
	<!-- end main -->
</body>
</html>