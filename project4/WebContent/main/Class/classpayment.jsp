<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
      ul li{list-style:none;}
      a{text-decoration:none;}
      table{border-bottom:2px solid black;
            border-top:2px solid black;
            padding:10px 0px;}

      .payment-wrap{margin:0 auto; width:400px;}
      .class-Dinfo ul li{font-size:12px; width:255px;}
      .title-name{font-size:15px; font-weight:900; margin-top:50px;}
      .fix-info{color:gray; height:32px; font-size:13px; width:90px; margin:10px 0px;}
      .insert-info{border:1px solid gray; padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:300px;}
      .insert-info2{padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:300px; text-align: right;}
      .insert-info3{padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:200px;}
      .ad-btn{width:92px; height:31px; border:1px solid black; font-weight:900;
              color:white; background-color:black; cursor:pointer; outline:none;}
      .mi-btn{width:87px; height:31px; border:1px solid black; font-weight:900;
              color:white; background-color:black; cursor:pointer; outline:none;}
      .payment-btn-wrap{text-align: center;}
      .payment-btn{width: 200px; height: 40px; border: 1px solid black; background-color: white; 
     				 cursor: pointer;  margin: 10px; outline: none;}
    </style>

  </head>
  <body>

      <div class="payment-wrap">
      <div class="class-Dinfo">
        <p class="title-name">주문할 취미</p>
        <table>
          <tr>
            <td class="fix-info">
              <img class="" src="../image/fra1.jpg" alt="" style="width:100px; height:80px;">
            </td>
            <td>
              <ul>
                <li>호스트이름</li>
                <li>클래스이름</li>
                <li>원데이?정규?</li>
                <li>가격</li>
              </ul>
            </td>
          </tr>
        </table>
      </div>

      <div class="class-Dinfo">
        <p class="title-name">주문자 정보</p>
        <table>
          <tr>
            <td class="fix-info">주문자명</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info">주문자명</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info">이메일</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info">휴대전화</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
        </table>
        <p style="font-size:11px; color:gray;">*구매내역, 환불, 품절 등을 이메일과 sms문자로 안내해드립니다</p>
      </div>

      <div class="mem-Dinfo">
        <p class="title-name">배송지 정보</p>
        <table>
          <tr>
            <td class="fix-info"></td>
            <td>
              <div style="font-size:15px;"><input type="radio" name="ch" value="">새로운 배송지 입력</div>
            </td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><div style="font-size:15px;"><input type="radio" name="ch" value="">배송지 불러오기</div></td>
          </tr>
          <tr>
            <td class="fix-info">배송지명</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info">수령자명</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info">휴대전화</td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
            <td class="fix-info">주소</td>
            <td> <input class="insert-info3" type="text" name="" value=""> <button class="ad-btn" type="button" name="button">우편번호</button> </td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><input class="insert-info" type="text" name="" value=""></td>
          </tr>
        </table>
      </div>

      <div class="del-Dinfo">
        <p class="title-name">결제 정보</p>
        <table>
          <tr>
            <td class="fix-info">마일리지</td>
            <td>
              <input class="insert-info3" type="text" name="" value="">
              <button class="mi-btn" type="button" name="button">적용</button>
            </td>
          </tr>
          <tr>
            <td class="fix-info"></td><td style="color:red; font-size:12px;">*현재 보유 마일리지 :<span></span>p</td>
          </tr>
          <tr>
            <td class="fix-info">상품금액</td>
            <td class="insert-info2">금액</td>
          </tr>
          <tr>
            <td class="fix-info">할인금액</td>
            <td class="insert-info2">금액</td>
          </tr>
          <tr>
            <td class="fix-info">배송비</td>
            <td class="insert-info2">무료</td>
          </tr>
          <tr>
            <td class="fix-info">전체 주문금액</td>
            <td class="insert-info2">전체금액</td>
          </tr>
        </table>
      </div>
      <div class="payment-btn-wrap">
        <form class="" action="index.html" method="post">
          <button class="payment-btn" type="button" name="button">주문하기</button>
        </form>
      </div>
    </div>

  </body>
</html>
