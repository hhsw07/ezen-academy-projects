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
	a{text-decoration:none; color:black;}
/* 메뉴 */
	.mymenu{position:relative; width:1050px; background-color:#151515; color:#FFFFFF; font-size:18px; margin:64px auto 0; padding:5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.myhost{text-align:right; display:inline;}
	.myhost ul li{padding-right:30px; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 회원탈퇴 */
	.drop{padding:30px; width:980px; height:500px; margin:0 auto;}
	.drop article{margin:20px 0 0; padding:0 5%; color:#3d4248;}
	.d-last{font-size:16px; font-weight:bold; line-height:1.5;}
	.d-txt {margin:5px 0 0; color:#a1a4a8; font-size:12px; line-height:1.67;}
	.n-title{padding:0 0 5px; font-size:12px; border-bottom:1px solid #3d4248; font-weight:bold; line-height:2;}
	.n-cont{margin:30px 0 0;}
	.n-info{margin:10px 0 0; color:#a1a4a8; font-size:12px;}
	.d-point{margin:20px 0 0; padding:12px 14px; border:3px solid #DFDFDF; text-align:center !important;}
	.d-mileage{color:#f1645d !important; font-weight:bold !important;}
	.d-write{padding:14px 0 15px 80px; background:none;}
	.w-title{top:21px;left:0;color:#a1a4a8;font-weight:normal;}
	.w-input{position:relative; padding: 7px 10px 9px;border: 1px solid #eaeaea;}
	.w-password{width:100%; color:#3d4248; background:none; border:0;}
</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=mypage_order">주문/배송관리</a></li>
				<li><a href="#">나의 활동</a></li>
				<li style="font-weight:bold;"><a href="?page=mypage_modiinfo">내 정보 관리</a></li>
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
				<li><a href="?page=mypage_modiinfo">회원정보수정</a></li>
				<li><a href="?page=mypage_modipass">비밀번호변경</a></li>
				<li style="font-weight:bold;"><a href="#">회원탈퇴</a></li>
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
					불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도도록 노력하겠습니다.
				</div>
			</div>
			<div class="n-cont">
				<div class="n-title">회원탈퇴 안내</div>
				<div class="n-info">
					• 회원 탈퇴 시 고객님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 하비팩토리 고객정보 보호정책에 따라 관리 됩니다.<br>
					• 탈퇴 시 보유하고있던 마일리지, 쿠폰은 모두 영구 삭제됩니다.<br>
					• 정기구독이 진행 중인 경우에는 탈퇴가 불가능하며, 취소/반품이 완료된 이후 가능합니다.<br>
					• 탈퇴 후 24시간 동안 기존에 사용하신 이메일과 휴대폰 번호로는 재가입이 불가능합니다.
				</div>
				<div class="d-point">현재 고객님의 사용 가능 마일리지는 <br><span class="d-mileage">5020 p</span>입니다</div>
			</div>
			<div class="d-write">
				<div class="w-title">비밀번호</div>
				<div class="w-box">
					<div class="w-input"><input type="password" class="w-password"></div>
				</div>
			</div>
		</article>
	</section>
	

</body>
</html>