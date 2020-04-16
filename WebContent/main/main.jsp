<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}
			
	.policy{width:1280px; margin:0 auto;}
		.menu-img{position:relative;}
			.menu-img img{width:100%; height:400px;}
				.fade{-webkit-animation-name: fade;
					  -webkit-animation-duration: 5.5s;
						animation-name: fade;
					  	animation-duration: 5.5s;
						}
						@-webkit-keyframes fade {
						  from {opacity: .4} 
						  to {opacity: 4}
						}
						@keyframes fade {
						  from {opacity: .4} 
						  to {opacity: 4}
						}
	.pdt-wrap{width:1280px; margin:0 auto;}		
		.pdt-wrap p{margin:0px;}
	   	.pdt-box{margin:20px 15px 20px 15px; width:392px; height:290px; background-color:purple; display:inline-block; position:relative;}
	   		.pdt-image{position:relative; width:392px; height:230px; background-color:gold;}
	   		.pdt-info{position:relative; margin-top:8px;}
	   			.host-name{float:left; font-size:12px; color:gray;}
	   			.class-name{float:left; font-size:20px; font-weight:900;}
	   		.price-wrap1{position:absolute; right:0px; top:8px;}
	   			.price{font-size:20px; font-weight:900;}
</style>
</head>
<body>
<div class="all-wrap">

<jsp:include page="../main/top.jsp"/>

	<div class="policy">
		<img alt="" src="image/main/policy1.jpg">
		<img alt="" src="image/main/policy2.jpg">
		<img alt="" src="image/main/policy3.jpg">
		<img alt="" src="image/main/policy4.jpg">
	</div>
	
	<div class="menu-img">
        <div class="mImg fade"><img src="image/main/main1.jpg" alt=""></div>
        <div class="mImg fade"><img src="image/main/main2.jpg" alt=""></div>
        <div class="mImg fade"><img src="image/main/main3.jpg" alt=""></div>
        <div class="mImg fade"><img src="image/main/main4.jpg" alt=""></div>
	</div>
	
	<div class="pdt-wrap">
	
		<div class="pdt-box">
			<a>
				<div class="pdt-image">
					<img alt="" src="">
				</div>
				<div class="pdt-info">
					<div>
						<span class="host-name">용도</span><br>
						<span class="class-name">이름</span>
					</div>
					<div class="price-wrap1">
						<span class="price">가격</span>
					</div>
				</div>
			</a>
		</div>
		
	</div>
	

<jsp:include page="../main/bottom.jsp"/>


</div>
</body>
<script type="text/javascript">
		//슬라이드 이미지 코드
		var slideIndex = 0;
		showSlides();
	
		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mImg");
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