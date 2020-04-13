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

<jsp:include page="top.jsp"/>

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
		jQuery.noConflict('.visual').slick({
          autoplay: true,
          autoplaySpeed: 2000,
          fade: true
        });
  	    </script>
<div style="height:200px;">
	<h1 align="center">메인페이지 추가로 들어갈 공간</h1>
</div>

<jsp:include page="bottom.jsp"/>


</div>
</body>

</html>