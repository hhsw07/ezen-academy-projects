<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hobby Factory</title>
<style type="text/css">
/* 전체 */
	ul li{list-style:none;}
	a{text-decoration:none; color:black;}
/* 메뉴 */
	.mymenu{display:block; position:relative; width:900px; background-color:#151515; color:#FFFFFF; font-size:18px; margin-top:64px; padding:5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.myhost{text-align:right; display:inline;}
	.myhost ul li{padding-right:30px;}
	.mysubmenu{display:block; position:relative ;width:900px; padding:4px;}
/* 주문/배송 조회 */
	.orderlist{padding:20px; width:850px;}
	.orderlist article{position:relative; font-size:14px; border-bottom:1px #ddd solid;}
	.o-title{width:70px;display:inline-block; margin-right:5px;}
	.o-value {color:#a3a3a3; margin-right:15px;}
	.o-btn {position: static; margin-top:16px;}
	.o-thumbnail img{width:50px;}
	.o-option{color: #b6b6b6; font-size: 11px;display: block;padding-top: 4px;}
	.o-status {position: absolute; bottom: 5px;right: 0;color: #d67061;}
	.o-qty { bottom: 5px;left: 70px; color: #b6b6b6;font-size: 11px;}
	.orderlist div{display: inline-block; vertical-align: middle;}
</style>
</head>
<body>

<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li>주문/배송관리</li>
				<li>나의 활동</li>
				<li>내 정보 관리</li>
			</ul>
		</nav>
		<nav class="myhost">
			<ul>
				<li>HOST</li>
			</ul>
		</nav>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li>주문/배송조회</li>
				<li>클래스 보관함</li>
				<li>배송지 목록</li>
				<li>배송지 관리</li>
			</ul>
		</nav>
	</div>
<!-- 주문/배송조회 -->
	<section class="orderlist">
		<article>
			<div>
				<ul>
					<li>
						<span class="o-title">주문번호</span> 
						<span class="o-value">20030422-41030R6139</span>
					</li>
					<li>
						<span class="o-title">신청일</span> 
						<span class="o-value">2020. 3. 4</span>
					</li>
					<li class="o-btn"><a href="#">주문상세보기</a></li>
				</ul>
			</div>
			<div style="height:100px">
				<img src="../img/resize.jpg" style="width:50px;padding:50%;"alt="">
			</div>
			<div>
				<ul>
					
					<li class="o-name">이름</li>
					<li class="o-option">옵션</li>
					<li class="o-status">주문상태</li>
					<li class="o-qty">수량 : 1</li>
				</ul>
			</div>
		</article>
	</section>

</body>
</html>