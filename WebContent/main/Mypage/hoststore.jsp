<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.Myclasses"%>
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
	.mynav ul li{float:right; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 클래스목록 */
	.hoststore{width:1050px; margin:0 auto; display:block;}
	.hs_list{padding:0 3%;}
	.hs_list ul{width:100%;}
	.hs_list ul li{display:inline; float:left; margin:0 20px 0 0; padding:30px 0 10px; border:2px soild tomato;}
	.c-fordate{text-align:left; margin-top:10px;}
	.c-when{font-size:11px;}
	.c-date{color:#a1a4a8; margin-left:10px;}
	.hs_list_thumb{width:280px; height:168px; padding:0; position:relative; overflow:hidden;}
	.hs_list_thumb img{position:absolute; top:0; left:0; width:100%; vertical-align:middle; border:0;}
	.hs_listinfo{text-align:left; height:60px; margin:14px 0 0; position:relative;}
	.hs_listname{margin-top:2px; font-size:16px; line-height:1.38; font-weight:bold; float:left; color:#3d4248; overflow:hidden;
	text-overflow:ellipsis; white-space:nowrap; word-break:break-all;}
	.paging-cont{width:1050px; text-align:center; margin:0 auto;}
	.page_num{margin:20px 0 0; padding:20px 10% 70px; width:725px; text-align:center; position:absolute; bottom:10px}
	.btn_num{width:44px; height:44px; margin:0 7px; font-size:14px; line-height:42px; display:inline-block; text-align:center;}
	.btn_num-on{color:#f1645d; border:1px solid #f1645d;}
</style></head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="#" title="주문/배송관리" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="#" title="내 정보 관리" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="#" title="호스트" class="host_btn mymenu_btn-on">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li class="mymenu_btn-on"><a href="#">스토어</a></li>
				<li><a href="#">클래스</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 내 클래스 -->
	<section class="mypage_content">
		<article class="hoststore">
			<div class="hs_list">
				<ul>
					<li>
						<a href="#">
							<div class="c-fordate">		 					
				 				<p class="c-when"><span>등록일</span><span class="c-date">등록날짜</span></p>
			 				</div>
							<div class="hs_list_thumb">
								<img src="../image/mypage_ex01.jpg" alt="">
							</div>
							<div class="hs_listinfo">
								<p class="hs_listname">상콤 레몬 수세미 뜨기</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="c-fordate">		 					
				 				<p class="c-when"><span>등록일</span><span class="c-date">등록날짜</span></p>
			 				</div>
							<div class="hs_list_thumb">
								<img src="../image/mypage_ex02.jpg" alt="">
							</div>
							<div class="hs_listinfo">
								<p class="hs_listname">고래의 꿈 네온사인 클래스</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="c-fordate">		 					
				 				<p class="c-when"><span>등록일</span><span class="c-date">등록날짜</span></p>
			 				</div>
							<div class="hs_list_thumb">
								<img src="../image/mypage_ex01.jpg" alt="">
							</div>
							<div class="hs_listinfo">
								<p class="hs_listname">상콤 레몬 수세미 뜨기</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="c-fordate">		 					
				 				<p class="c-when"><span>등록일</span><span class="c-date">등록날짜</span></p>
			 				</div>
							<div class="hs_list_thumb">
								<img src="../image/mypage_ex02.jpg" alt="">
							</div>
							<div class="hs_listinfo">
								<p class="hs_listname">고래의 꿈 네온사인 클래스</p>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</article>
		<div class="paging-cont">
			<div class="page_num">
				<a href="#" title="1" data-page="1" class="btn_num btn_num-on">1</a>
			</div>
		</div>
	</section>

</body>
</html>