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
		$(document).ready(function(){
			var memBank = "${clist.memBank}";
			$('#selectBox').val(memBank).prop("selected", true);

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
					
					<div style="height : 130px;margin-top:30px;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;padding:10px;">
						<table class="moneyTable">
						<tr><td colspan="2" style="text-align:center">${clist.memName}님의 예치금</td></tr>
						<tr><td style="height:18px;"colspan="2"></td></tr>
						<tr><td style="font-weight:bold;font-size:14px;">보유금액</td><td style="font-weight:bold;font-size:14px;text-align:right;">${clist.memBalance}원</td></tr>
						<tr><td style="font-size:13px;">거래대기</td><td style="font-size:13px;text-align:right;width:120px;">100,000원</td></tr>
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
			    	<form action="/funfun/myaccount.do/chargeQuery.do">
			    	<input style="margin-top:15px;width:100%;height:40px;" class="ph" name="chargeQuery" placeholder="충전할 금액을 입력해주세요">
			    	<div style="display:flex;margin-top:45px;">
						<input style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="submit" value="신청하기">
			    	</div>
			    	</form>
			    	<p style="margin-top:40px;margin-bottom:-10px;font-weight:bold;"class="profile__img--title">신청 내역</p>
			    	<table style="width:100%;margin:auto;">
			    		<tr><td colspan="3"><hr></td></tr>
			    		<c:forEach var="rdlist" items="${rdlist}">
			    		<tr><td>${rdlist.rddate}</td><td>${rdlist.amount}</td><td>${rdlist.curr}</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		</c:forEach>
			    	</table>
			    	
				</div>
				
				<!-- 예치금 출금 -->	
				<div id="withdrawlM_div" style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">예치금 출금</p>
			    	<div style="display:flex;font-size:14px;margin-bottom:20px;">
			    	<span style="font-size:14px;font-weight:bold;">출금 가능 금액</span><span style="width:80%;text-align:right;font-size:14px;font-weight:bold;">200,000원</span>
			    	</div>
			    	<table class="chargInfo">
			    	<tr><td>출금은행</td><td class="secondTd">${clist.memBank}</td></tr>
			    	<tr><td>계좌번호</td><td class="secondTd">${clist.memAccount}</td></tr>
			    	<tr><td>예금주</td><td class="secondTd">${clist.memName}</td></tr>
			    	</table>
			    	<hr style="margin-bottom: 20px;">
			    	
			    	<input style="margin-top:15px;width:100%;height:40px;" class="ph" placeholder="출금할 금액을 입력해주세요">
			    	<div style="display:flex;margin-top:45px;">
						<input style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="submit" value="신청하기">
			    	</div>
			    	
			    	<p style="margin-top:40px;margin-bottom:-10px;font-weight:bold;"class="profile__img--title">신청 내역</p>
			    	<table style="width:100%;margin:auto;">
			    		<tr><td colspan="3"><hr></td></tr>
			    		<tr><td>2020.05.2022:48</td><td>30,000원</td><td>출금완료</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		<tr><td>2020.05.2022:48</td><td>30,000원</td><td>출금완료</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		<tr><td>2020.05.2022:48</td><td>30,000원</td><td>출금완료</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    		<tr><td>2020.05.2022:48</td><td>30,000원</td><td>출금완료</td></tr>
			    		<tr><td colspan="3"><hr></td></tr>
			    	</table>
			    	
				</div>	
				
				<!-- 이용내역 -->	
				<div id="usingM_div"style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">이용내역</p>
			    	
			    	<table style="width:100%;margin:auto;text-align:center">
			    		<tr><td colspan="4"><hr></td></tr>
			    		<c:forEach var="list" items="${blist}">
			    		<tr><td>${list.balDate}</td><td>${list.balAmount}원</td><td>${list.balHis}</td>
			    		<td>
			    		<c:if test="${list.balType == '입금'}"><p class="ifText" style="color:red;">입금</p></c:if>
			    		<c:if test="${list.balType == '출금'}"><p class="ifText" style="color:blue;">출금</p></c:if>
			    		<c:if test="${list.balType == '스토어구매'}"><p class="ifText" style="color:orange;">스토어 구매</p></c:if>
			    		<c:if test="${list.balType == '펀딩투자'}"><p class="ifText" style="color:orange;">펀딩 투자</p></c:if>
			    		<c:if test="${list.balType == '펀딩수입'}"><p class="ifText" style="color:green;">펀딩 수입</p></c:if>
			    		<c:if test="${list.balType == '스토어수입'}"><p class="ifText" style="color:green;">스토어 수입</p></c:if>
			    		</td></tr>
			    		<tr><td colspan="4"><hr></td></tr>
			    		</c:forEach>
			    	</table>
			    </div>
				<!-- 계좌 정보 -->	
				<div id="infoM_div" style="display:none;width:75%;box-shadow: rgba(0, 0, 0, 0.1) 0px 3px 6px 0px;margin-left:40px;margin-top:50px;padding : 60px;">
			    	<p style="font-weight:bold;font-size:20px;margin-bottom:20px;">계좌 정보 등록 및 수정</p>

			    	<form>
			    	<p style="margin-top:40px;font-weight:bold;"class="profile__img--title">은행 선택</p>
			    	<select style="margin-top:5px;width:100%;height:40px;">
						    <option selected>은행선택</option>
						    <option id="selectBox" name="bankName" value="신한은행">신한은행</option>
						    <option id="selectBox" name="bankName" value="우리은행">우리은행</option>
						    <option id="selectBox" name="bankName" value="농협은행">농협은행</option>
						    <option id="selectBox" name="bankName" value="기업은행">기업은행</option>
						    <option id="selectBox" name="bankName" value="산업은행">산업은행</option>
					</select>
					<p style="margin-top:30px;font-weight:bold;"class="profile__img--title">계좌 번호</p>
			    	<input value="${clist.memAccount}" style="margin-top:-3px;width:100%;height:40px;">
			    	<div style="display:flex;margin-top:40px;">
							<button style="background-color:gray;color:white;" class="profile__cancle">취소</button>
							<input style="background-color:orange;color:white;" class="profile__submit" type="submit" value="제출">
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