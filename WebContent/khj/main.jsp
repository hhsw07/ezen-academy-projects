<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<style>
body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}

.all-wrap{}

	.menu-wrap{width:100%;}
		.menu-1{width:1280px; margin:0 auto; height:25px; padding:5px 0;
					border-right:1px solid #E4E1E1; border-left:1px solid #E4E1E1;}
			.menu-1 ul li{display:inline; margin:0 15px; float:right;}
		.menu-div{border-bottom:1px solid #E4E1E1;}
		.menu-2-wrap{background-color:#63145F;}
			.menu-2{width:1280px; margin:0 auto; padding:10px 0; text-align:center; color:white; font-weight:1px;
					border-right:1px solid #E4E1E1; border-left:1px solid #E4E1E1;}
				.menu-2 li{display:inline; font-size:25px; margin:0 15px;}


						
		.policy{width:1280px; margin:0 auto;}
			.menu-img img{width:100%; height:400px;}	
       		.visual button{position:absolute; right:1000%;}


   		
     .footer-wrap{background-color:#65645E;}  		
	    .bottom{width:1280px; margin:0 auto; text-align:center;}
				.btm_article{padding:10px 0; border-bottom: 1px solid white}
				.btm_article span{color:white; cursor: pointer;}
				.logo{font-family:sans-serif; font-size:35px; color:#FF4000;font-weight:bold; margin:0; padding:5px 0;}
				.bottom_intro{color:white;}


	</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
	<div class="all-wrap">

		<div class="menu-wrap">
			<div class="menu-1">
				<ul>
					<li>고객센터</li>
					<li>로그인</li>
				</ul>				
			</div>
			<div class="menu-div"></div>
			<div class="menu-2-wrap">
				<div class="menu-2">
					<ul>
						<li style="margin-right:290px; color:#F2B809">PC냥이</li>
						<li>조립컴퓨터</li>
						<li>컴퓨터부품</li>
						<li>견적컴퓨터</li>
						<li style="margin-left:290px;">장바구니</li>
					</ul>
				</div>
			</div>
		</div>


		<div class="policy">
			<img alt="" src="../image/main/policy1.jpg">
			<img alt="" src="../image/main/policy2.jpg">
			<img alt="" src="../image/main/policy3.jpg">
			<img alt="" src="../image/main/policy4.jpg">
		</div>
		
		<div class="menu-img">
			<div>
		        <section class="visual">
		          <div><img src="../image/main/main1.jpg" alt=""></div>
		          <div><img src="../image/main/main2.jpg" alt=""></div>
		          <div><img src="../image/main/main3.jpg" alt=""></div>
		          <div><img src="../image/main/main4.jpg" alt=""></div>
		        </section>
		    </div>
		</div>
		<script type="text/javascript">
        $('.visual').slick({
          autoplay: true,
          autoplaySpeed: 2000,
          fade: true
        });
  	    </script>


  	    <div class="footer-wrap">
			<div class="bottom">
				<div class="btm_article">
					<span>서비스이용약관</span>
					<span>개인정보취급방침</span>
				</div>
				<ul>
					<li class="logo">PC냥이</li>
					<li class="bottom_intro" style="font-weight:bold;">㈜PC냥이</li>
					<li class="bottom_intro">대한민국 서울특별시 종로구 미려빌딩6층</li>
					<li class="bottom_intro">대표자: 김이젠ㅣ사업자등록증번호:717-88-00777</li>
					<li class="bottom_intro">통신판매 신고번호: 2017-서울성동-0584호</li>
					<li class="bottom_intro">호스팅서비스: (주)PC냥이</li>
					<li class="bottom_intro">02-6214-0529 (문의시간 : 10:00 ~ 17:00 / 점심시간 : 13:00 ~ 14:00)</li>		
				</ul>
			</div>
		</div>


	</div>
</body>
</html>