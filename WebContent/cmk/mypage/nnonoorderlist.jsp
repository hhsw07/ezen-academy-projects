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
/* 마이페이지 메뉴바 */
.mymenu{display:block; position:relative; width:65%; background-color:#151515; color:#FFFFFF; font-size:18px; margin-top:64px; padding:5px;}
.mynav{text-align:left; display:inline;}
.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
.myhost{text-align:right; display:inline;}
.myhost ul li{padding-right: 30px;}
.mysubmenu{display:block; position: relative; width:65%; padding:4px;}

/* 내용 */
.orderlist {padding:20px; width:60%; display:block;}
.orderlist article {
    position: relative;
    font-size: 14px;
    border-bottom: 1px #ddd solid;
    float: left;
}
.o-num {
    display: inline-block;
}
.o-title {
    width: 65px;
    display: inline-block;
    margin-right: 5px;
}
.o-value {
    color: #a3a3a3;
    margin-right: 15px;
}

</style>
</head>
<body>

<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">주문/배송관리</a></li>
				<li><a href="#">나의 활동내역</a></li>
				<li><a href="#">내정보 관리</a></li>
			</ul>
		</nav>
		<nav class="myhost">
			<ul>
				<li>HOST</li>
			</ul>
		</nav>
	</div>

<!-- 소메뉴 -->
	<div class="submenu">
		<ul>
			<li><a href="#">주문/배송조회</a></li>
			<li><a href="#">클래스 보관함</a></li>
			<li><a href="#">배송지 목록</a></li>
			<li><a href="#">배송지 추가</a></li>
		</ul>
	</div>

<!-- 내용 -->
	<section class="orderlist">
		<article>
			<div class="o-num">
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
			<div class="o-info">
				<ul class="o-product">
					<li class="o-thumbnail"><img src="../img/resize.jpg" alt=""></li>
					<li class="o-name">이름</li>
					<li class="o-option">옵션</li>
					<li class="o-status">주문상태</li>
					<li class="o-qty">수량 : </li>
				</ul>
			</div>
		</article>
	</section>

</body>
</html>