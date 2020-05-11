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
		$(document).ready(function(){
			
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
          <span class="profile__name">홍길동</span>
          <br>
          <span class="profile__level">서포터 회원</span>
          <img  class="profile__img" src="img/profile01.png" alt="">
          <table class="profile__times--table">
            <tr><td class="profile__times--num">2</td><td class="profile__times--num">3</td></tr>
            <tr><td class="profile__times--text">펀딩</td><td class="profile__times--text">주문</td></tr>
          </table>
          <button class="btn btn-default profile__detail">프로필 편집</button>
          <button class="btn btn-default profile__detail">계좌정보</button>
          <button class="btn btn-default profile__detail">회원탈퇴</button>
          <table class="profile__choice--table">
            <tr>
              <td class="profile__choice">관심프로젝트<br><br><div class="clicked"></div></td>
              <td class="profile__choice">참여한 펀딩<br><br></td>
              <td class="profile__choice">주문 및 배송 조회<br><br></td>
            </tr>
          </table>
      </div>

<!--하단 푸른 박스 -->
      <div style="background-color: rgb(245, 247, 250); margin-top: -20px; min-height: 490px">
        <div class="container my-container" style="max-width:1200px; padding-top:10px; background-color: rgb(245, 247, 250);">

<!-- 아이템들 -->
          <div class="display_item" class="row">

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
              </div>
            </div>

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
              </div>
            </div>

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
              </div>
            </div>

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
              </div>
            </div>

            <div class="col-xs-12 col-md-3 item">
              <div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
              </div>
            </div>


          </div>
<!--아이템들 끝-->

<!-- 참여한 펀딩 -->
<div class="funding_display">
        <div class="row" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10 funding">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">펀딩중</td><td class="funding__fund-date">참여일 : 2020.05.21</td></tr>
              <tr><td class="funding__name">[패션.잡화] 클래식 안경</td><td></td></tr>
              <tr><td class="funding__company">by 이젠</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">100,000원</td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">블랙-D</td></tr>
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">2020.06.02</td></tr>
              <tr><td class="funding__detail">배송상태</td><td class="funding__detail--text">배송준비중</td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">서울 종로구 이젠컴퓨터아카데미 5층</td></tr>
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
        </div>

        <div class="row">
          <div class="col-xs-1 col-md-1"></div>
          <div class="col-xs-10 col-md-10 funding">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">펀딩중</td><td class="funding__fund-date">참여일 : 2020.05.21</td></tr>
              <tr><td class="funding__name">[패션.잡화] 클래식 안경</td><td></td></tr>
              <tr><td class="funding__company">by 이젠</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">100,000원</td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">블랙-D</td></tr>
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">2020.06.02</td></tr>
              <tr><td class="funding__detail">배송상태</td><td class="funding__detail--text">배송준비중</td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">서울 종로구 이젠컴퓨터아카데미 5층</td></tr>
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
        </div>

        <div class="row" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10 funding">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state" style="color : rgb(245, 2, 2)">펀딩실패</td><td class="funding__fund-date">참여일 : 2020.05.21</td></tr>
              <tr><td class="funding__name">[패션.잡화] "STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</td><td></td></tr>
              <tr><td class="funding__company">by 이젠</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">200,000원</td></tr>
              <tr><td colspan class="funding__alert">* 모금실패시 투자액은 즉시 락업해제 됩니다</td></tr>
              
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
        </div>

        <div class="row" >
          <div class="col-xs-1 col-md-1 "></div>
          <div class="col-xs-10 col-md-10 funding">
            <table class="col-xs-12 col-md-12">
              <tr><td class="funding__state">펀딩중</td><td class="funding__fund-date">참여일 : 2020.05.21</td></tr>
              <tr><td class="funding__name">[패션.잡화] 클래식 안경</td><td></td></tr>
              <tr><td class="funding__company">by 이젠</td><td></td></tr>
              <tr><td colspan="2"><hr class="funding--hr"></td></tr>
              <tr><td class="funding__detail">펀딩금액</td><td class="funding__detail--text">100,000원</td></tr>
              <tr><td class="funding__detail">상품옵션</td><td class="funding__detail--text">블랙-D</td></tr>
              <tr><td class="funding__detail">배송예정일</td><td class="funding__detail--text">2020.06.02</td></tr>
              <tr><td class="funding__detail">배송상태</td><td class="funding__detail--text">배송준비중</td></tr>
              <tr><td class="funding__detail">주소지정보</td><td class="funding__detail--text">서울 종로구 이젠컴퓨터아카데미 5층</td></tr>
            </table>
            <button class="col-xs-12 col-md-12 btn btn-warning funding--btn">주소지 정보 변경하기</button>
          </div>
        </div>
</div>
<!-- 참여한 펀딩 끝 -->
    <div class="trans_display" class="row">

      <div class="col-xs-12 col-md-3 item">
        <span data-html = "true" data-toggle="tooltip" data-placement="top" title="주문번호 : 0000001&#013;주문일 : 2020.05.12&#013;결제금액 : 50,000원&#013;상태 : 배송준비중">   
        <div class="thumbnail">
          <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
          <div class="caption">
            
            <p class="item__title">클래식 안경 – 블랙 (1개)</p>
            <span class="trans__date">5월 5일에 배송 예정</span>
          </div>
        </div>
      </div>
     </span>

     <div class="col-xs-12 col-md-3 item">
      <span data-html = "true" data-toggle="tooltip2" data-placement="top" title="주문번호 : 0000001&#013;주문일 : 2020.05.12&#013;결제금액 : 50,000원&#013;상태 : 배송준비중">   
      <div class="thumbnail">
        <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
        <div class="caption">
          
          <p class="item__title">클래식 안경 – 블랙 (1개)</p>
          <span class="trans__date">5월 5일에 배송 예정</span>
        </div>
      </div>
    </div>
   </span>
     
    </div>

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