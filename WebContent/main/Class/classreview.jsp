<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
    body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
    ul li{list-style:none;}
    a{text-decoration:none; color:black;}
    div{display:block;}
    p{margin:0px;}
    textarea{outline: none; }

      .wrap{width:1520px; margin:0 auto; }
        .line{border-bottom:1px solid gray; width:1533px; display:inline-block; text-align: center;}
        .title{font-size: 35px; font-weight: 900; margin:20px 0;}

        .check{margin-bottom:20px;}
    </style>
  </head>
  <body>
    <div class="wrap">


      <div class="review">
        <p class="title">구매 후기</p>
      </div>

      <div class="line"></div>

      <div class="">
        <ul>
          <li>아이디</li>
          <li>작성날짜</li>
          <p>내용<br><br><br><br><br><br><br><br><br>내용</p>
        </ul>
      </div>

      <div class="line"></div>

      <div class="review-write">
        <p class="title">후기 작성</p>
      </div>

      <div class="">
        <textarea name="name" rows="8" cols="100"></textarea>
        <input class="check" type="submit" name="" value="등록">
      </div>


    </div>
  </body>
</html>
