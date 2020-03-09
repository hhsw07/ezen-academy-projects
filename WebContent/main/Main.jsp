<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		body{font-family: Verdana, sans-serif; margin:0}
		a{text-decoration:none;}
		.all_wrap{width:1280px; margin:0 auto;}
		.top{position:fixed; z-index:1;}
			.user_top{width:1280px;height:50px; background-color:#000000; vertical-align:middle;}
				.ut_ul{float:right;list-style:none; margin:0px; padding:5px 5px 5px 5px;}
				.ut_li{float:left; margin:10px;}
				.ut_li a{color:white;}
			.menu_top{width:1280px; height:110px; margin:0 auto; vertical-align:middle;}
				.mt_ul{float:none; text-align:center;  list-style:none; margin-top:25px; margin-bottom:25px; padding:5px 5px 5px 5px;}
				.mt_li{ margin:10px; display:inline-block;}
				.mt_li a{color:black;}
		.middle{width:1280px;position:absolute;}
			.ads{position: relative;  margin: auto;  height:350px;}
		.bottom{position:absolute;height:500px;}
		
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
		
		/* On smaller screens, decrease text size */
		@media only screen and (max-width: 300px) {
		  .prev, .next,.text {font-size: 11px}
		}
	</style>
	<script type="text/javascript">
		
		window.onload = function(){
			//높이를 동적으로 설정
			allWrap=document.querySelector(".all_wrap");
			top=document.querySelector(".top");
				userTop=document.querySelector(".user_top");
				menuTop=document.querySelector(".menu_top");
			middle=document.querySelector(".middle");
				ads=document.querySelector(".ads");
			bottom=document.querySelector(".bottom");
			
			top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
			middle.scrollHeight = ads.scrollHeight;
			middle.style.paddingTop = top.scrollHeight+"px";
			bottom.style.paddingTop = middle.scrollHeight+"px";
			
			//최상위 Wrap만 이렇게 해야 오류가 안남..
			allWrap.style.height = top.scrollHeight	+ middle.scrollHeight + bottom.scrollHeight+"px";

		}
	</script>
</head>
<body>
	<div class="all_wrap">
		<div class="top">
			<div class="user_top">
				<ul class="ut_ul">
					<li class="ut_li"><a href="#">로그인</a></li>
					<li class="ut_li"><a href="#">회원가입</a></li>
					<li class="ut_li"><a href="#">마이페이지</a></li>
					<li class="ut_li"><a href="#">고객센터</a></li>
				</ul>
			</div>
			<div class="menu_top">
				<ul class="mt_ul">
					<li class="mt_li"><a href="#">클래스</a></li>
					<li class="mt_li"><a href="#">스토어</a></li>
				</ul>
			</div>
		</div>
		<div class="middle">
<!-- 상세 정보는 이곳에 들어가야함 -->		
			<div class="ads">
				<div class="ads_img fade"><img src="../image/ads01_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads02_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads03_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads04_wide.jpg" width="1280px"></div>
			</div>
			<div class="class_list">
			</div>
			<div class="store_list">
			</div>
		</div>
		<footer class="bottom">대충 바텀</footer>
	</div>
</body>
	<script type="text/javascript">
		//슬라이드 이미지 코드
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