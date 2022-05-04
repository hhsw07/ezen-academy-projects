<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*"%>
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
	.mynav ul li{float:right; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 수강생 목록 */
	.hc_class{display:inline-block; width:300px;}
	.hc_list_thumb{width:280px; height:168px; padding:0; position:relative; overflow:hidden;}
	.hc_list_thumb img{position:absolute; top:0; left:0; width:100%; vertical-align:middle; border:0;}
	.hc_listinfo{text-align:left; height:60px; margin:14px 0 0; position:relative;}
	
	.att-wrap{display:inline-block; width:700px;}
	.att-tit{padding:0 0 10px; border-bottom:2px solid #3d4248; font-size:16px; line-height:1.5; color:#3d4248;}
	.att-table{margin:10px 0 0; text-align:center; width:100%}
    .att-th{color:#2f3338; font-size:14px; border-bottom:2px solid #3d4248; line-height:2; padding-bottom:10px; text-align:center;}
    .att-td{padding:15px 0 18px; color:#2f3338; font-size:14px; line-height:2; vertical-align:middle; border-bottom:1px solid #dfdfdf; text-align:center;}

	.page_num{margin:20px auto 0; padding:0 10% 110px; text-align:center;position:absolute; bottom:10px}
	.btn_num{width:44px; height:44px; margin:0 7px; font-size:14px; line-height:42px; display:inline-block; text-align:center;}
	.btn_num-on{color:#f1645d; border:1px solid #f1645d;}
</style>
</head>
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
				<li><a href="#">스토어</a></li>
				<li class="mymenu_btn-on"><a href="#">클래스</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 상세보기 -->
	<section>
		<article>
			<div class="hc_class">
				<div>
					<div class="hc_list_thumb">
						<img src="../image/mypage_ex01.jpg" alt="">
					</div>
					<div class="hc_listinfo">
						<p class="hc_listname">상콤 레몬 수세미 뜨기</p>
					</div>
				</div>
			</div>
			<div>
				<div class="att-wrap">
					<div class="att-tit">수강생 목록</div>
					<div class="att-table">
						<table>
							<colgroup>
								<col width="20%">
								<col width="20%">
								<col width="30%">
								<col width="30%">
							</colgroup>
							<thead>
								<tr>
									<th class="att-th">아이디</th><th class="att-th">닉네임</th><th class="att-th">연락처</th><th class="att-th">수강일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="att-td">아이디</td><td class="att-td">닉네임</td><td class="att-td">연락처</td><td class="att-td">원데이(날짜)</td>
								</tr>
								<tr>
									<td class="att-td">아이디</td><td class="att-td">닉네임</td><td class="att-td">연락처</td><td class="att-td">정규</td>
								</tr>
								<tr>
									<td class="att-td">아이디</td><td class="att-td">닉네임</td><td class="att-td">연락처</td><td class="att-td">원데이(날짜)</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="page_num">
					<a href="#link" title="1" data-page="1" class="btn-num btn-num-on">1</a>
				</div>
			</div>
		</article>
	</section>

	
</body>
</html>