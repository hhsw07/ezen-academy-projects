<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		body{font-family: Verdana, sans-serif; margin:0}
		a{text-decoration:none; color:black;}
		.all_wrap{width:1280px; margin:0 auto;}
		.top{position:fixed; z-index:1; }
			.user_top{width:1280px;height:50px; background-color:#000000; vertical-align:middle; position:relative;}
				.ut_ul{float:right;list-style:none; margin:0px; padding:5px 5px 5px 5px;}
				.ut_li{float:left; margin:10px;}
				.ut_li a{color:white;}
			.menu_top{width:1280px; height:110px; margin:0 auto; vertical-align:middle; background-color:#ffffff; position:inherit; border-bottom: 1px solid gray;}
				.mt_ul{width:300px;float:none; text-align:center;  list-style:none; margin-left:270px; margin-top:25px; margin-bottom:25px; padding:5px 5px 5px 5px; display:inline-block;}
				.mt_li{ margin:10px; display:inline-block; font-weight: bold; font-size:20px}
				.mt_li a{color:black;}
				.mt_ul2{width:200px;float:none; text-align:center;  list-style:none; margin-left:245px; margin-top:25px; margin-bottom:25px; padding:5px 5px 5px 5px; display:inline-block;}
				.mt_li2{ margin:10px; display:inline-block; font-weight: bold; font-size:14px}
				.mt_li2 a{color:black;}
		.middle{width:1280px;position:absolute; background-color: white; padding-bottom:50px;}
			.ads{position: relative;  margin: auto;  height:400px;}
			.class-box{margin:50px 15px 0px 15px;  display:inline-block; position:relative;}
				.class-image{width:390px; height:250px; border:1px dashed black; position:relative;}
				.class-info{position:relative; margin-top:8px;}
				.host-name{float:left; font-size:12px; color:gray;}
				.class-name{float:left; font-size:20px; font-weight:900;}
				.price-wrap1{position:absolute; right:0px; top:2px;}
				.price-wrap2{position:absolute; right:0px; top:23px;}
				.day{font-size:12px;}
				.price{font-size:20px; font-weight:900;}
		.bottom{position:relative;height:400px; padding:0px 130px 50px 130px; background-color:#424242; z-index:-1;}
			.btm_article{padding-bottom:15px; border-bottom: 1px solid white}
			.btm_article span{color:white; cursor: pointer;}
			.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
			.bottom_intro{color:white;}
		
		.ads_img {display: none}
		img {vertical-align: middle;}
		
		/* Fading animation */
		.fade {
		  -webkit-animation-name: fade;
		  -webkit-animation-duration: 1.5s;
		  animation-name: fade;
		  animation-duration: 1.5s;
		}
		@-webkit-keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}
		@keyframes fade {
		  from {opacity: .4} 
		  to {opacity: 1}
		}
	</style>
	<script type="text/javascript">
		
		window.onload = function(){
			//????????? ???????????? ??????
			allWrap=document.querySelector(".all_wrap");
			top=document.querySelector(".top");
				userTop=document.querySelector(".user_top");
				menuTop=document.querySelector(".menu_top");
			middle=document.querySelector(".middle");
				ads=document.querySelector(".ads");
			bottom=document.querySelector(".bottom");
			
			top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
			console.log(top.scrollHeight);
			middle.scrollHeight = ads.scrollHeight;
			middle.style.paddingTop = top.scrollHeight+"px";
			bottom.style.paddingTop = 50+middle.scrollHeight+"px";
			
			//????????? Wrap??? ????????? ?????? ????????? ??????..
			allWrap.style.height = bottom.scrollHeight+"px";

		}
	</script>
</head>
<body>
	<div class="all_wrap">
		<div class="top">
			<div class="user_top">
				<ul class="ut_ul">
					<li class="ut_li"><a href="#">?????????</a></li>
					<li class="ut_li"><a href="#">????????????</a></li>
					<li class="ut_li"><a href="#">???????????????</a></li>
					<li class="ut_li"><a href="#">????????????</a></li>
				</ul>
			</div>
			<div class="menu_top">
				<p class="logo" style="display:inline-block;"> HobbyFactory</p>
				<ul class="mt_ul">
					<li class="mt_li"><a href="#">?????????</a></li>
					<li class="mt_li"><a href="#">?????????</a></li>
				</ul>
				<ul class="mt_ul2">
					<li class="mt_li2"><a href="#">????????????</a></li>
					<li class="mt_li2"><a href="#">??? ?????????</a></li>
				</ul>
			</div>
		</div>
		<div class="middle">
<!-- ?????? ????????? ????????? ??????????????? -->		
			<div class="ads">
				<div class="ads_img fade"><img src="../image/ads01_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads02_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads03_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads04_wide.jpg" width="1280px"></div>
			</div>
			<!-- ????????? ????????? -->
			<div class="class_list">
				<h2 style="margin:10px 0 0 0 ;">?????????</h2>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">????????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">???</span><span class="price">00,000</span>???</div>
				    	<div class="price-wrap2"><span class="day">???</span><span class="price">000,000</span>???</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">????????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">???</span><span class="price">00,000</span>???</div>
				    	<div class="price-wrap2"><span class="day">???</span><span class="price">000,000</span>???</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">????????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">???</span><span class="price">00,000</span>???</div>
				    	<div class="price-wrap2"><span class="day">???</span><span class="price">000,000</span>???</div>
			    	</div>
				</div>
			</div>
			<div class="store_list">
				<h2 style="margin:10px 0 0 0 ;">?????????</h2>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">?????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">??????</span><span class="price">00,000</span>???</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">?????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">??????</span><span class="price">00,000</span>???</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[????????? ??????]</span><br><span class="class-name">?????? ??????</span></a></div>
				    	<div class="price-wrap1"><span class="day">??????</span><span class="price">00,000</span>???</div>
			    	</div>
				</div>
			</div>
		</div>
		<div class="bottom">
			<div class="btm_article">
				<span>?????????????????????</span>
				<span>????????????????????????</span>
			</div>
			<p class="logo">HobbyFactory</p>
			<p class="bottom_intro" style="font-weight:bold;">??????????????????</p>
			<p class="bottom_intro">???????????? ??????????????? ????????? ????????????6???</p>
			<p class="bottom_intro">?????????: ????????????????????????????????????:717-88-00777</p>
			<p class="bottom_intro">???????????? ????????????: 2017-????????????-0584???</p>
			<p class="bottom_intro">??????????????????: (???)???????????????</p>
			<p class="bottom_intro">02-6214-0529 (???????????? : 10:00 ~ 17:00 / ???????????? : 13:00 ~ 14:00)</p>
			<p class="bottom_intro">help@hobbyfactory.co.kr</p>
			<p class="bottom_intro">?? hobbyful Inc. 2018 All Rights Reserved.</p>
		</div>
	</div>
</body>
	<script type="text/javascript">
		//???????????? ????????? ??????
		var slideIndex = 0;
		showSlides();
	
		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("ads_img");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    

		    slides[slideIndex-1].style.display = "block";  
		    setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</html>