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
		.login_wrap{position:absolute;width:100%; height:100%; background-color:rgba(164,164,164,0.5);z-index:10;
			display:none;}
			.loginPage{position:absolute;top:10%;left:40%; width:400px;height:400px; background-color: #ffffff; z-index:4;}
			.loginPage input{width:300px;height:40px;margin:10px;font-size:15px; padding-left:5px;}
		.top{position:fixed; z-index:5; }
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

		.bottom{position:relative;height:400px; padding:0px 130px 50px 130px; background-color:#424242;
		z-index:-1;}
			.btm_article{padding-bottom:15px; border-bottom: 1px solid white}
			.btm_article span{color:white; cursor: pointer;}
			.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
			.bottom_intro{color:white;}
		
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
			middle.style.paddingTop = top.scrollHeight+"px";
			bottom.style.paddingTop = 50+middle.scrollHeight+"px";
			
			//????????? Wrap??? ????????? ?????? ????????? ??????..
			allWrap.style.height = bottom.scrollHeight+"px";
		}

	</script>
</head>
<body>
	<!-- ????????? div -->
	<div class="login_wrap">
		<div class="loginPage" style="text-align: center;">
<%	String lp = null;
	lp = request.getParameter("lp");
	if(lp==null){
%>
<%	}else{ 
		if(lp.equals("loginmain")){%>	
			<jsp:include page="Login/loginmain.jsp" />
			
<%		}
		if(lp.equals("findId")){%>
			<jsp:include page="Login/findId.jsp" />
			
<%		}
		if(lp.equals("findPw")){%>
			<jsp:include page="Login/findPw.jsp" />
			
<%		}
		if(lp.equals("memberJoin")){%>
			<jsp:include page="Login/memberJoin.jsp" />
			
<%		}
		if(lp.equals("findIdRes")){%>
			<jsp:include page="Login/findIdRes.jsp" />
			
<%		}
		if(lp.equals("findPwRes")){%>
			<jsp:include page="Login/findPwRes.jsp" />
			
<%		}
	} %>	
		</div>
	</div>
	<!--  -->
	<div class="all_wrap">
		<div class="top">
			<div class="user_top">
			<span onclick="adminpage()" style="cursor:pointer; padding:30px">?????????</span>	
				<ul class="ut_ul">
					<li class="ut_li"><a href="?page=maindetail&lp=loginmain" onclick="">?????????</a></li>
					<li class="ut_li"><a href="#">????????????</a></li>
					<li class="ut_li"><a href="?page=mypage">???????????????</a></li>
					<li class="ut_li"><a href="#">????????????</a></li>
				</ul>
			</div>
			<div class="menu_top">
				<p style="display:inline-block;"><a class="logo" href="?page=maindetail">HobbyFactory</a></p>
				<ul class="mt_ul">
					<li class="mt_li"><a href="?page=classList1">?????????</a></li>
					<li class="mt_li"><a href="?page=productList">?????????</a></li>
				</ul>
				<ul class="mt_ul2">
					<li class="mt_li2"><a href="#">????????????</a></li>
					<li class="mt_li2"><a href="#">??? ?????????</a></li>
				</ul>
			</div>
		</div>
		<div class="middle">
<!-- ?????? ????????? ????????? ??????????????? -->	
<%
	String pl=null;
	pl = request.getParameter("page");
	if(pl==null){
%>
	<jsp:include page="maindetail.jsp" />
<%}else{
		if(pl.equals("maindetail")){
%>
			<jsp:include page="maindetail.jsp" />
<%		}
		
		if(pl.equals("classList1")){
%>
			<jsp:include page="Class/classList1.jsp" />
<%		}
		if(pl.equals("classList2")){
%>
			<jsp:include page="Class/classList2.jsp" />
<%		}
		if(pl.equals("classList3")){
%>
			<jsp:include page="Class/classList3.jsp" />
<%		}	
		if(pl.equals("classDetail")){
%>
			<jsp:include page="Class/classDetail.jsp" />
<%		}
		if(pl.equals("productList")){
%>
			<jsp:include page="Store/productList.jsp" />
<%		}
		if(pl.equals("productDetail")){
%>
			<jsp:include page="Store/productDetail.jsp" />
<%		}
		if(pl.equals("mypage")){
%>
			<jsp:include page="Mypage/orderlist.jsp" />
<%		}

	} %>
	
	
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
		function adminpage(){
			location.href="Admin/Admin.jsp";
		}
	</script>
</html>