<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*"%>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 */
	ul li{list-style:none;}
	a{text-decoration:none; color:black;cursor:pointer;}
/* 메뉴바 */
	.mymenu{width:1050px; margin:60px auto 0; background:none; position:relative;}
	.mymenubar{position:relative; height:64px; background:#2a2c34; overflow:hidden;}
	.mymenubar ul{width:100%; padding:0 10px; overflow:hidden;}
	.mymenubar ul li{float:left;}
	.mymenu_btn{padding:4px 18px 23px; font-size:18px; display:block; color:#FFFFFF;}
	.mymenu_btn-on{font-weight:bold;}
	.host_btn{width:90px; height:64px; padding-left:89px; color:#FFFFFF; font-size:18px; background-size:19px 18px; text-indent:0;
	line-height:64px; display:block; position:absolute; top:0; right:0; overflow:hidden;}
/* 소메뉴 */
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 마일리지조회 */
	.point-wrap{padding:0 10%; color:#a1a4a8;}
	.point_page{width:1050px; margin:0 auto;}
	.pointinfo-cont{padding:32px 0; margin:40px 0 0; border:5px solid #DFDFDF;}
	.reply-info-area-type02{line-height:1.71;}
	.reply-info-area{height:auto; font-size:14px; color:#a1a4a8; overflow:hidden;}
	.point-info{width:18%; float:left; padding:0;text-align:center;}
	.point-info-tit{font-size:14px; line-height:2.14;}
	.point-info-p{margin:2px 0; color:#2f3338; font-size:18px; line-height:1.67;}
	.point-info-txt{margin:10px 0 0; color:#909397; font-size:14px; line-height:1.8;}
	.point-cont{margin:40px 0 0;}
	.point-tit{padding:0 0 10px; font-size:16px; border-bottom:2px solid #3d4248; line-height:1.5; color:#3d4248;}
    .point-table{margin:10px 0 0; text-align:center;}
    .point-th{color:#2f3338; font-size:14px; border-bottom:2px solid #3d4248; line-height:2; padding-bottom:10px; text-align:center;}
    .point-td{padding:15px 0 18px; color:#2f3338; font-size:14px; line-height:2; vertical-align:middle; border-bottom:1px solid #dfdfdf; text-align:center;}
    .txt-color-r{color:#f1645d !important;}
	.page_num{margin:20px 0 0; padding:0 10% 110px; text-align:center;}
	.btn-num-on{color:#f1645d; border:1px solid #f1645d;}
	.btn-num{width:44px; height:44px; margin:0 7px; font-size:14px; line-height:42px; display:inline-block; text-align:center;}
	
</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" title="주문/배송관리" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn mymenu_btn-on">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" title="내 정보 관리" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="#" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">구매후기</a></li>
				<li><a href="#">1:1문의</a></li>
				<li class="mymenu_btn-on"><a href="#">마일리지</a></li>
			</ul>
		</nav>
	</div>

<!-- 마일리지조회 -->
	<section class="mypage_content">
		<article>
			<div class="point_page">
				<div class="pointinfo-cont">
					<div class="reply-info-area reply-info-area-type02">
						<div class="point-info">
							<div class="point-info-tit">현재 마일리지</div>
							<div class="point-info-p">5,020P</div>
						</div>
						<div class="point-info">
							<div class="point-info-tit">총 적립 마일리지</div>
							<div class="point-info-p">10,040P</div>
						</div>
						<div class="point-info">
							<div class="point-info-tit">사용한 마일리지</div>
							<div class="point-info-p">5,020P</div>
						</div>
					</div>
				</div>
				<div class="point-info-txt">•  마일리지는 적립(충전)된 달로부터 12개월 이내에 사용하셔야 합니다.<br></div>
				<div class="point-cont">
					<div class="point-tit">마일리지 적립/사용 내역</div>
					<div class="point-table">
						<table width="100%">
							<colgroup>
								<col width="28%">
								<col width="44%">
								<col width="28%">
							</colgroup>
							<thead>
								<tr>
									<th class="point-th">적립날짜</th>
									<th class="point-th">내역</th>
									<th class="point-th">마일리지</th>
								</tr>
							</thead>
							<tbody class="point_list_wrap">
								<tr>
									<td class="point-td">2020.03.04</td>
									<td class="point-td">주문취소</td>
									<td class="point-td txt-color-r">+5,020p</td>
								</tr>
								<tr>
									<td class="point-td">2020.03.04</td>
									<td class="point-td">상품구매</td>
									<td class="point-td">-5,020p</td>
								</tr>
								<tr>
									<td class="point-td">2020.01.23</td>
									<td class="point-td">하비팩토리 세뱃돈! 새해 취미복 많이 받으세요</td>
									<td class="point-td txt-color-r">+2,020p</td>
								</tr>
								<tr>
									<td class="point-td">2019.10.13</td>
									<td class="point-td">회원가입 포인트</td>
									<td class="point-td txt-color-r">+3,000p</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="page_num">
					<a href="#" title="1" data-page="1" class="btn-num btn-num-on">1</a>
				</div>
			</div>
		</article>
	</section>

</body>
</html>