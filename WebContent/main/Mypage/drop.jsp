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
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 회원탈퇴 */
	.drop{padding:30px; width:1050px; height:500px; margin:0 auto;}
	.drop article{margin:20px 0 0; padding:0 5%; color:#3d4248;}
	.d-last{font-size:16px; font-weight:bold; line-height:1.5;}
	.d-txt {margin:5px 0 0; color:#a1a4a8; font-size:12px; line-height:1.67;}
	.n-title{padding:0 0 5px; font-size:12px; border-bottom:1px solid #3d4248; font-weight:bold; line-height:2;}
	.n-cont{margin:30px 0 0;}
	.n-info{margin:10px 0 0; color:#a1a4a8; font-size:12px;}
	.d-point{margin:20px 0 0; padding:12px 14px; border:3px solid #DFDFDF; text-align:center !important;}
	.d-mileage{color:#f1645d !important; font-weight:bold !important;}
	.d-write{margin:0 auto; padding:14px 0 15px; background:none;}
	.w-title{top:21px; left:0; color:#a1a4a8; font-weight:normal;}
	.w-input{position:relative; padding:7px 10px 9px; border:1px solid #eaeaea;}
	.w-password{width:100%; color:#3d4248; background:none; border:0;}
	.myinfo_btn{padding:50px 0;}
	.btn-myinfo_edit{width:260px;height:64px;font-size:16px;line-height:64px;display:block;margin:0 auto;color:#FFFFFF;background:#3d4248;text-align:center;}
	
</style>
</head>
<body>
<%
ArrayList<Point> ptList =(ArrayList<Point>)session.getAttribute("ptList");
%>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_mileage" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn mymenu_btn-on">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" title="호스트" class="host_btn">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=mypage_modiinfo">회원정보수정</a></li>
				<li><a href="?page=mypage_modipass">비밀번호변경</a></li>
				<li class="mymenu_btn-on"><a href="?page=mypage_delete">회원탈퇴</a></li>
			</ul>
		</nav>
	</div>

<!-- 회원탈퇴 -->	
	<section class="drop">
		<article>
			<div class="d-title">
				<div class="d-last">그 동안 하비팩토리를 이용해주셔서 감사합니다.</div>
				<div class="d-txt">
					고객님께서 회원 탈퇴를 원하신다니 저희 서비스가 많이 부족하고 미흡했나 봅니다.<br>
					고객님이 다시 돌아오실 수 있도록 더 나은 하비팩토리가 되도록 노력하겠습니다.
				</div>
			</div>
			<div class="n-cont">
				<div class="n-title">회원탈퇴 안내</div>
				<div class="n-info">
					• 회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 하비팩토리 고객정보 보호정책에 따라 관리 됩니다.<br>
					• 탈퇴 시 보유하고있던 마일리지, 쿠폰은 모두 영구 삭제됩니다.<br>
					• 주문이 진행 중인 경우나 수강 미도래 클래스가 있는 경우에는 탈퇴가 불가능하며, 취소/반품이 완료된 이후 가능합니다.<br>
					• 탈퇴 후 24시간 동안 기존에 사용하신 이메일과 휴대폰 번호로는 재가입이 불가능합니다.
				</div>
				<div class="d-point">현재 고객님의 사용 가능 마일리지는 <br><span class="d-mileage"><%=session.getAttribute("totPoint") %> P</span>입니다</div>
			</div>
			<div class="d-write">
				<div class="w-title">비밀번호</div>
				<div class="w-box">
					<div class="w-input"><input type="password" class="w-password"></div>
				</div>
			</div>
			<div class="myinfo_btn">
				<a href="#" title="수정완료" class="btn-myinfo_edit">탈퇴하기</a>
			</div>
		</article>
	</section>
	

</body>
</html>