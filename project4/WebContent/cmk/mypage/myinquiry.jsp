<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
/* 문의 */
	.myinquiry{width:1050px; margin:0 auto;}
	.myinquiry-wrap{padding:0 22px 0 30px;}
	.myinquiry-cont{margin:40px 0 0;padding:26px 26px 29px;border:5px solid #DFDFDF;}
	.myinquiry-area{height:auto;font-size:14px;color:#a1a4a8;overflow:hidden;line-height:1.71;}
    .myinquiry-tit{color:#2f3338; padding:0 0 5px; font-weight:bold;}
    .myinquiry-txt{display:inline-block;margin:0 30px 0 0;color:#a1a4a8;}
    .iqwrite-wrap{padding:0 3%; color:#3d4248;}
    .iqwrite-tit{margin:50px 0 0;padding:17px 0 10px;font-size:16px;border-bottom:2px solid #3d4248;line-height:1.5; position:relative;color:#3d4248;font-weight:bold;}
    .btn-write-direct{width:144px;height:35px;font-size:14px;line-height:33px;display:block;
    position:absolute;top:0; right:0;color:#202127; border:1px solid #3d4248;text-align:center;font-weight:normal;}
	.no-view-wrap{padding:70px 0; text-align:center;}
    .no-view-tit{color:#3d4248; font-size:24px; font-weight:bold;}
    .no-view-txt{margin:5px 0 0; color:#a1a4a8; font-size:16px;}

</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order"class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_mileage" class="mymenu_btn mymenu_btn-on">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">구매후기</a></li>
				<li class="mymenu_btn-on"><a href="#">1:1문의</a></li>
				<li><a href="?page=mypage_mileage">마일리지</a></li>
			</ul>
		</nav>
	</div>
<section>
	<article class="myinquiry">
	<div class="myinquiry-wrap">
		<div class="myinquiry-cont">
			<div class="myinquiry-area">
				<div class="myinquiry-tit">[상담 안내]</div>
				<span class="myinquiry-txt">• 1:1 문의를 주시면 담당자가 빠르게 답변 드리도록 하겠습니다.</span>
			</div>
		</div>
	</div>
	</article>
	<!-- 문의내역목록 -->
	
	<!--  문의내역 없음 -->
	<article class="myinquiry">
		<div class="iqwrite-wrap">
			<div class="iqwrite-tit">1:1 문의내역<a href="#" class="btn-write-direct btn-write-qna">1:1 문의 작성하기</a></div>
			<div class="no-view-wrap">
				<div class="no-view-tit">궁금하신 내용이 있으시면 1:1 문의를 신청해보세요.</div>
				<div class="no-view-txt">하비팩토리 서비스 이용시 궁금하신 내용이 있으시면 1:1 문의를 이용해보세요.<br>친절하고 빠르게 문제 해결을 도와드리겠습니다.</div>
			</div>
		</div>
	</article>
</section>
</body>
</html>