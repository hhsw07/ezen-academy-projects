<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : product-detail</title>

    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
 

      wrap{width:1280px; margin:0 auto;}
      wrap p{margin:0px;}
        .info-wrap{margin-top:50px;}
          .class-image{width:900px; height:500px;  position:relative; left:-1px;}
            .move_image{position: relative; left:0px; bottom:61px; height:550px; padding-top:60px;}
              .visual{position:relative;}
              .visual button{position:absolute; z-index:10; left:84%; top:50%; transform:translate(-30%, -50% );
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
            .line{border-bottom:1px solid #d2d2d2; width:481px; margin:20px 0;}
              .mileage{font-size:13px; font-weight:900; margin-right:50px;}
              .mileage-point{font-size:13px; font-weight:900; color:gray;}
              .trans{font-size:13px; font-weight:900; margin-right:93px;}
            .select-pdt{margin-top:50px; width:480px; height:50px; font-size:20px;}
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
			 .buyPage p{text-align:center; font-size:15px; font-weight:900; color:#FA5882; margin:12px 0px;}
			 .buy-line{border-bottom:1px solid #D8D8D8;}
			 .pdt-box{border:1px solid red; width:380px; height:315px; position:absolute; left:10px; top:45px;}
				 .pdt-box img{width:360px; height:235px; position:absolute; left:10px; top:71px;}
				 .buy-info{font-weight:600; font-size:15px;}
				 .buy-info2{color:#FE2E9A; margin-top:5px; font-size:12px;}
				 .cnt{text-align:center; margin-top:10px;}
					 input[type="number"]::-webkit-outer-spin-button,
						input[type="number"]::-webkit-inner-spin-button {
						    -webkit-appearance: none;
						    margin: 0;
						    border:1px solid white;
						}
					.cnt button{border:1px solid black; background-color:white;}
				 .card-num{width:65px; height:25px; text-align:center;}
				 .btn{margin-top:23px;}
				 .btn1{width:197px; height:40px; border:1px solid #FA5882; background-color:#FA5882; color:white; font-weight:900; outline:none; cursor:pointer;}
				 .btn2{width:197px; height:40px; border:1px solid #FA5882; background-color:white; color:#FA5882; outline:none; cursor:pointer;}
			form{text-align:center; margin-top:10px;}
			.btn3{border:1px solid black; background-color: white;}
    </style>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">

    
    function buy(){
		buyWrap.style.display = "block";
		document.querySelector("body").style.overflow = "hidden";
	}
    function check(msg){
        alert(msg);     
    }
    </script>
  </head>
  <body onload="init();">

	  <div class="buy_wrap"  onload="init();">
			<div class="buyPage">
			  <div class="buyinfo-wrap">	
				<p>선택한 상품을 확인해 주세요.</p>
				<div class="buy-line"></div>
				<ul>
					<li class="buy-info">[노플랜 노프로젝트]라탄으로 이불 톡톡</li>
				
				</ul>
				<div class="pdt-box">
					<img alt="" src="../image/pdtdetail3.jpg">
					<div class="buy-line"></div>
					<div class="buy-line"></div>
				</div>
			  </div>	
			  <div class="buy-line"></div>	
			  <div onload="init();">
			 	
			  		<script language="JavaScript">
						var sell_price; // 상품 가격
						var amount; // 상품 수량
						function init () {
							sell_price = document.form.sell_price.value;
							amount = document.form.amount.value;
							document.form.sum.value = sell_price;
							change();
						}
						function add () {
							hm = document.form.amount;
							sum = document.form.sum;
							hm.value ++ ;
							sum.value = parseInt(hm.value) * sell_price;
						}
						function del () {
							hm = document.form.amount;
							sum = document.form.sum;
								if (hm.value > 1) {
									hm.value -- ;
									sum.value = parseInt(hm.value) * sell_price;
								}
						}
						function change () {
							hm = document.form.amount;
							sum = document.form.sum;
								if (hm.value < 0) {
									hm.value = 0;
								}
							sum.value = parseInt(hm.value) * sell_price;
						}
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
					</script>	
			 	
			  		<form name="form" method="get">
						<input type=hidden name="sell_price" value="21000"> 
						<input type="button" class="btn3" value=" - " onclick="del();">
						<input type="text" name="amount" value="1" size="3" onchange="change();" style="width:15px; border: 1px solid white;">
						<input type="button" class="btn3" value=" + " onclick="add();"><br>
						<input type="text" name="sum" size="11" readonly style="border: 1px solid white; width: 80px; font-size:24px; color:#FA5882;">원
					</form>
			
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
					<a href="?page=productDetail"><button class="btn2" type="button" name="button" >취소</button></a>
				</div>
			</div>
		</div>

    <div class="wrap">

      <div class="info-wrap">
          <div class="class-image">
            <div class="move_image">
              <section class="visual">
                <div class="bg1"><img src="../image/pdtdetail1.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg2"><img src="../image/pdtdetail2.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg3"><img src="../image/pdtdetail3.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg6"><img src="../image/pdtdetail6.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg7"><img src="../image/pdtdetail7.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg8"><img src="../image/pdtdetail8.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
                <div class="bg9"><img src="../image/pdtdetail9.jpg" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
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
              <li class="host-name">[노플랜 노프로젝트]</li>
              <li class="class-name">라탄으로 이불 톡톡</li>
              <li class="price-wrap"><span class="price">21,000</span><span class="day">원</span></li>
              <li class="line"></li>
              <li><span class="mileage">적립 마일리지</span><span class="mileage-point">최대2,100p</span></li>
              <li><span class="trans">배송비</span><span class="mileage-point">무료배송(도서산간지역 제외)</span></li>
              <li>
                <select class="select-pdt" name="">
                  <option value="">상품을 선택해주세요.</option>
                  <option value="">라탄으로 이불 톡톡</option>
                </select>
              </li>
              <li><button class="star" type="button" name="button" onclick="check('장바구니 추가완료')"><i class="xi-star-o"></i></button>
                  <a href="javascript:buy()" onclick=""><button class="buy" type="button" name="button">구매하기</button></a></li>
            </ul>
          <!-- class-info -->
          </div>
      <!-- info-wrap  -->
      </div>

      <div class="tab-wrap">
        <div class="tab">
          <a href="?page=productDetail&page2=pdtintro">상품소개</a>
          <a href="?page=productDetail&page2=pdtreview">구매후기</a>
          <a href="?page=productDetail&page2=pdtrefund">배송/교환/환불</a>
        <!-- tab  -->
        </div>
      <!-- tab-wrap  -->
      </div>

      <div>
<%
		String pl2=null;
		pl2 = request.getParameter("page2");
		if(pl2==null){
%>
		<%@include file="pdtintro.jsp" %>
<%		}else{
		if(pl2.equals("pdtintro")){
%>
		<%@include file="pdtintro.jsp"%>
<%		}
		if(pl2.equals("pdtreview")){
%>
		<%@include file="pdtreview.jsp"%>
<%		}
		if(pl2.equals("pdtrefund")){
%>
		<%@include file="pdtrefund.jsp"%>
<%			
		}		
} 
%>
      </div>

    <!-- wrap  -->
    </div>

  </body>
</html>
