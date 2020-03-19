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
	.middle{width:1280px;position:absolute; background-color: white; padding-bottom:50px;}
	.ads{position: relative;  margin: auto;  height:400px;}
	.class-box{margin:50px 15px 0px 15px;  display:inline-block; position:relative;}
		.class-image{width:390px; height:250px; position:relative;}
		.class-info{position:relative; margin-top:8px;}
		.host-name{float:left; font-size:12px; color:gray;}
		.class-name{float:left; font-size:20px; font-weight:900;}
		.price-wrap1{position:absolute; right:0px; top:2px;}
		.price-wrap2{position:absolute; right:0px; top:23px;}
		.day{font-size:12px;}
		.price{font-size:20px; font-weight:900;}
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
	</script>
</head>
<body>
		<div class="middle">
<!-- 상세 정보는 이곳에 들어가야함 -->		
			<div class="ads">
				<div class="ads_img fade"><img src="../image/ads01_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads02_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads03_wide.jpg" width="1280px"></div>
				<div class="ads_img fade"><img src="../image/ads04_wide.jpg" width="1280px"></div>
			</div>
			<!-- 클래스 리스트 -->
			<div class="class_list">
				<h2 style="margin:10px 0 0 0 ;">클래스</h2>
				<div class="class-box">
        <a href="?page=classDetail">
        <div class="class-image"><img src="../image/fra1.jpg" width="100%" height="100%" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[베란다자수]</span><br><span class="class-name">따뜻한 한마디 일러스트 글자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">20,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">200,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/mac1.jpg" width="100%" height="100%" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[슈에뜨마망]</span><br><span class="class-name">비온뒤맑음 마크라메 월행잉</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">25,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">250,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>

      <div class="class-box">
        <a href="#">
        <div class="class-image"><img src="../image/fra2.jpg" width="100%" height="100%" alt=""></div>
        <div class="class-info">
          <div><span class="host-name">[제니스리]</span><br><span class="class-name">꽃 소풍 프랑스자수</span></div>
          <div class="price-wrap1"><span class="day">일</span><span class="price">20,000</span>원</div>
          <div class="price-wrap2"><span class="day">월</span><span class="price">200,000</span>원</div>
        <!-- class-info  -->
        </div>
        </a>
      <!-- class-box  -->
      </div>
			</div>
			<div class="store_list">
				<h2 style="margin:10px 0 0 0 ;">스토어</h2>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="../image/pdt1.jpg" width="100%" height="100%" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[노플랜 프로젝트]</span><br><span class="class-name">라탄으로 이불 톡톡</span></a></div>
				    	<div class="price-wrap1"><span class="day">가격</span><span class="price">28,000</span>원</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="../image/pdt2.jpg" width="100%" height="100%" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[람자수 공방]</span><br><span class="class-name">장미정원 자수 끈 파우치</span></a></div>
				    	<div class="price-wrap1"><span class="day">가격</span><span class="price">30,000</span>원</div>
			    	</div>
				</div>
				<div class="class-box">
			    	<div class="class-image"><a href="#"><img src="../image/pdt3.jpg" width="100%" height="100%" alt=""></a></div>
			    	<div class="class-info">
				    	<div><a href="#"><span class="host-name">[솜씨]</span><br><span class="class-name">플랜트행어</span></a></div>
				    	<div class="price-wrap1"><span class="day">가격</span><span class="price">13,000</span>원</div>
			    	</div>
				</div>
			</div>
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