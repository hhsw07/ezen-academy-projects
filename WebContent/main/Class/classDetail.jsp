<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : class-detail</title>

    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
     

      .wrap{width:1280px; margin:0 auto;}
      .wrap p{margin:0px;}
        .info-wrap{margin-top:50px;}
          .class-image{width:900px; height:500px;  position:relative; left:-1px;}
            .move_image{position: relative; left:0px; bottom:61px; height:550px; padding-top:60px;}
              .visual{position:relative;}
              .visual button{position:absolute; z-index:1; left:84%; top:50%; transform:translate(-30%, -50% );
                            width:50px; height:50px; border-radius:100%; background-color:rgba(0,0,0,0); border:none; }
              .visual button:before{font-family:'xeicon'; color:black; font-size:45px; }
              .visual button.slick-prev{left:0px; font-size:0; color:transparent; outline:none;}
              .visual button.slick-prev:before{content:"\e93d"; outline:none;}
              .visual button.slick-next{right:0px; font-size:0; color:transparent; outline:none;}
              .visual button.slick-next:before{content:"\e940"; outline:none;}

          .class-info{position:absolute; left:760px; top:200px;}
            .host-name{color:gray;}
            .class-name{font-size:30px; margin-top:5px;}
            .price-wrap{margin-top:20px;}
              .day{font-size:20px; font-weight:400;}
              .price{font-size:35px; font-weight:900;}
              .date{font-size:12px; font-weight:600; color:#FE2E9A;}
            .line{border-bottom:1px solid #d2d2d2; width:481px; margin:20px 0;}
              .mileage{font-size:13px; font-weight:900; margin-right:50px;}
              .mileage-point{font-size:13px; font-weight:900; color:gray;}
            .select-pdt{margin-top:50px; width:480px; height:50px; font-size:20px; outline: none;}
            .buy{width:425px; height:50px; margin-top:20px; background-color: #FA5882; border:none; font-size:20px;
                border:1px solid black; outline: none; cursor: pointer;}
            .star{width:50px; height:50px; border:1px solid gray; background-color: white; outline: none;
                  cursor: pointer;}
            .xi-star-o{font-size:22px;}

      .tab-wrap{width:1280px; margin:0 auto;}
        .tab{text-align:center; margin-top:100px; font-size:20px; font-weight:400;
            border-bottom:1px solid #d2d2d2;
            width:1280px;
            position:relative; 
            padding:20px 0px 20px 0px;}
          .tab a{margin:0px 160px;}
          .tab a:hover{border-top:3px solid black;
                       border-bottom:3px solid black;
                       padding:20px 0px 20px 0px;}
	
     .buy_wrap{position:absolute;width:1920px; left:-320px; height:100%; background-color:rgba(164,164,164,0.5);z-index:10;
			display:none;}
			.buyPage{position:absolute;top:0%;left:40%; width:400px;height:636px; background-color: #ffffff; z-index:4;}
			  .buyinfo-wrap{position:relative; height:385px;}
				.buyPage p{text-align:center; font-size:15px; font-weight:900; color:#FA5882; margin:15px 0px;}
				.buy-line{border-bottom:1px solid #D8D8D8;}
				.pdt-box{border:1px solid red; width:380px; height:315px; position:absolute; left:10px; top:45px;}
					.pdt-box img{width:360px; height:235px; position:absolute; left:10px; top:71px;}
					.buy-info{font-weight:600; font-size:15px;}
					.buy-info2{color:#FE2E9A; margin-top:5px; font-size:12px;}
					
					.card-num{width:65px; height:25px; text-align:center;}
					.btn{margin-top:42px;}
					.btn1{width:197px; height:40px; border:1px solid #FA5882; background-color:#FA5882; color:white; font-weight:900; outline:none; cursor:pointer;}
					.btn2{width:197px; height:40px; border:1px solid #FA5882; background-color:white; color:#FA5882; outline:none; cursor:pointer;}
			

    </style>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">
    window.onload = function(){
    buyWrap=document.querySelector(".buy_wrap");
    allWrap=document.querySelector(".all_wrap");
	top=document.querySelector(".top");
		userTop=document.querySelector(".user_top");
		menuTop=document.querySelector(".menu_top");
	middle=document.querySelector(".middle");
		ads=document.querySelector(".ads");
	bottom=document.querySelector(".bottom");
	
	top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
	console.log(top.scrollHeight);
	middle.style.paddingTop = top.scrollHeight+"px";
	bottom.style.paddingTop = 50+middle.scrollHeight+"px";
	
	//최상위 Wrap만 이렇게 해야 오류가 안남..
	allWrap.style.height = bottom.scrollHeight+"px";
    }
    
    function buy(){
		buyWrap.style.display = "block";
		document.querySelector("body").style.overflow = "hidden";
	}
    function check(msg){
        alert(msg);
      
    }
    
    </script>
  </head>
  <body>
	<div class="buy_wrap">
		<div class="buyPage">
		  <div class="buyinfo-wrap">	
			<p>선택한 상품을 확인해 주세요.</p>
			<div class="buy-line"></div>
			<ul>
				<li class="buy-info">[베란다자수]따뜻한 한마디 일러스트 글자수</li>
				<li class="buy-info2">정규클래스 매주 월,화,수,목 10~16시</li>
			</ul>
			<div class="pdt-box">
				<img alt="" src="../image/fra1.jpg">
				<div class="buy-line"></div>
				<div class="buy-line"></div>
			</div>
		  </div>	
		  <div class="buy-line"></div>	
		  <div>
		  	<p><span style="color:black;">클래스 금액</span><span>200,000</span></p>
		  </div>
		  <div class="payment">
		  	<p>결제정보</p>
		  	<select style="width:80px; height:30px; margin-left:10px;">
		  		<option>카드선택</option>
		  		<option>신한카드</option>
		  		<option>현대카드</option>
		  		<option>삼성카드</option>
		  		<option>롯데카드</option>
		  		<option>하나카드</option>
		  		<option>국민카드</option>
		  	</select>
		  	<input class="card-num" type="text">
		  	<input class="card-num" type="text">
		  	<input class="card-num" type="text">
		  	<input class="card-num" type="text"><br>
		  	<input class="card-num" style="margin-top:5px; margin-left:96px;" type="text" placeholder="MONTH">
		  	<input class="card-num" style="margin-top:5px;" type="text" placeholder="YEAR">
		  	<input class="card-num" style="margin-top:5px;" type="text" placeholder="CVC">
		  </div>
		  	<div class=btn>
				<a href="?page="><button class="btn1" type="button" name="button" >결제하기</button></a>
				<a href="?page=classDetail"><button class="btn2" type="button" name="button" >취소</button></a>
			</div>
		</div>
	</div>

    <div class="wrap">

      <div class="info-wrap">
          <div class="class-image">
            <div class="move_image">
              <section class="visual">
                <div class="bg1"><img src="../image/moveimg1.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg2"><img src="../image/moveimg2.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg3"><img src="../image/moveimg3.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg4"><img src="../image/moveimg4.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
              </section>
            </div>
          </div>

          <!--image slied-->
          
          <script type="text/javascript">
            $('.visual').slick({
              autoplay: true,
              autoplaySpeed: 3000,
              fade: true
            });
          </script>
			
          <div class="class-info">
            <ul>
              <li class="host-name">[베란다자수]</li>
              <li class="class-name">따듯한 한마디 일러스트 글자수</li>
              <li class="price-wrap"><span class="day">일</span><span class="price">20,000</span><span class="day">원</span></li>

              <li><span class="day">월</span><span class="price">200,000</span><span class="day">원</span></li>
 
              <li class="line"></li>
              <li><span class="mileage ">적립 마일리지</span><span class="mileage-point">최대2,000p</span></li>
              <li>
                <select class="select-pdt" name="">
                  <option value="">상품을 선택해주세요.</option>
                  <option value="">[원데이]20,000원(3월7일)0/10</option>
                  <option value="">[원데이]20,000원(3월14일)0/10</option>
                  <option value="">[원데이]20,000원(3월21일)0/10</option>
                  <option value="">[원데이]20,000원(3월28일)0/10</option>
                  <option value="">[정규]200,000원</option>
                </select>
              </li>
              <li><button class="star" type="button" name="button" onclick="check('장바구니 추가완료')"><i class="xi-star-o"></i></button>
                  <a href="javascript:buy()" onclick=""><button class="buy" type="button" name="button">구매하기</button></a></li>
            </ul>
          <!-- class-info -->
          </div>
      <!-- info-wrap -->
      </div>

      <div class="tab-wrap">
        <div class="tab">
          <a href="?page=classDetail&page2=classintro" >상품소개</a>
          <a href="?page=classDetail&page2=classreview" >구매후기</a>
          <a href="?page=classDetail&page2=classrefund" >배송/교환/환불</a>
        <!-- tab -->
        </div>
      <!-- tab-wrap  -->
      </div>

      <div>
<%
		String pl2=null;
		pl2 = request.getParameter("page2");
		if(pl2==null){
%>
		<%@include file="classintro.jsp" %>
<%		}else{
		if(pl2.equals("classintro")){
%>
		<%@include file="classintro.jsp"%>
<%		}
		if(pl2.equals("classreview")){
%>
		<%@include file="classreview.jsp"%>
<%		}
		if(pl2.equals("classrefund")){
%>
		<%@include file="classrefund.jsp"%>
<%			
		}		
} 
%>
      </div>

    <!-- wrap  -->
    </div>

  </body>
</html>
