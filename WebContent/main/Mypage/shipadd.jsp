<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*" %>
<% request.setCharacterEncoding("UTF-8");
String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hobby Factory</title>
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
/* 배송지추가 */
	.add_addr{width:1050px; margin:0 auto;}
	.add_addr-wrap{padding:0 4%;}
	.add_addr-cont{margin:40px 0 0;font-size:14px;line-height:1.71;color:#909397;}
	.add_addr-table{width:970px; color:#909397;line-height:2;}
	.add_addr-th{padding:10px 0 10px 30px;vertical-align:baseline;}
	.add_addr-td{color:#3d4248;}
	.add_content{padding:10px 0;}
	.input-wrap{width:212px !important; line-height:1.4;padding:5px 10px 6px;border:1px solid #dfdfdf;display:inline-block;vertical-align:middle;position:relative;}
	.input{width:100%;color:#3d4248; background:none;border:0;}
	.add_addr_sub{font-size:10px;line-height:1.4;}
	.input_zip{width:139px !important;margin:0 7px 0 0;}
	.input_zip_btn{width:66px; margin:0;height:34px;line-height:34px;display:inline-block;color:#FFFFFF;font-size:12px;background:#3d4248;text-align:center;vertical-align:middle;}
	.input_addr{margin-right:20px;display:inline-block; width:45%;}
	.input_addr-wrap{width:350px !important;line-height:1.4;padding:5px 10px 6px;border:1px solid #dfdfdf;display:inline-block;vertical-align:middle;position:relative;}
	.add_basic{display:inline-block; margin:10px 20px 0 0;}
	.add_basic_label{color:#a1a4a8;letter-spacing:-0.3px;font-size:14px;}
	.add_addr_btn{padding:50px 0;}
	.btn-addaddr{width:260px;height:64px;font-size:16px;line-height:64px;display:block;margin:0 auto;color:#FFFFFF; background:#3d4248;text-align:center;}

</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" title="주문/배송관리" class="mymenu_btn mymenu_btn-on">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn">나의 활동</a>
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
				<li><a href="#">주문/배송조회</a></li>
				<li><a href="?page=mypage_class">클래스 보관함</a></li>
				<li><a href="#">배송지 목록</a></li>
				<li class="mymenu_btn-on"><a href="#">배송지 추가</a></li>
			</ul>
		</nav>
	</div>
<!-- 배송지추가 -->
	<section>
		<article class="add_addr">
			<div class="add_addr-wrap">
				<div class="add_addr-cont">
					<table class="add_addr-table">
						<colgroup>
							<col width="14%">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th class="add_addr-th">배송지명</th>
								<td class="add_addr-td">
									<div class="add_content">
										<span class="input-wrap">
											<input type="text" class="input" name="addr_name" value="">
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th class="add_addr-th">수령자명</th>
								<td class="add_addr-td">
									<div class="add_content">
										<span class="input-wrap">
											<input type="text" class="input" name="recipient" value="">
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th class="add_addr-th">휴대전화</th>
								<td class="add_addr-td">
									<div class="add_content">
										<span class="input-wrap">
											<input type="text" class="input" name="hp" value="">
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th class="add_addr-th">추가번호<div class="add_addr_sub">(선택)</div></th>
								<td class="add_addr-td">
									<div class="add_content">
										<span class="input-wrap">
											<input type="text" class="input" name="subhp" value="">
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<th class="add_addr-th">주소</th>
								<td class="add_addr-td">
									<div class="add_content">
										<span class="input-wrap input_zip">
											<input type="text" class="input" name="newaddr_zip" value="">
										</span>
										<a href="#" title="우편번호" class="input_zip_btn">우편번호</a>
									</div>
									<div class="add_content input_addr">
										<span class="input_addr-wrap">
											<input type="text" class="input" name="newaddr" value="">
										</span>
									</div>
									<div class="add_content input_addr">
										<span class="input_addr-wrap">
											<input type="text" class="input" name="newaddr_detail" value="">
										</span>
									</div>
									<!-- 
									<div class="add_content">
										<input type="checkbox" id="basic-addr" class="add_basic">
										<label for="basic-addr" class="add_basic_label">기본 배송지로 저장</label>
									</div>
									 -->
								</td>
							</tr>
						</tbody>
					</table>
					<div class="add_addr_btn">
						<a href="#" title="배송지 추가하기" class="btn-addaddr">배송지 추가하기</a>
					</div>
				</div>
			</div>
		</article>
	</section>
	

</body>
</html>