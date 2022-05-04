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
					<a href="?page=mypage_order" class="mymenu_btn mymenu_btn-on">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_classreview" class="mymenu_btn">나의 활동</a>
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
				<li><a href="?page=mypage_order">주문/배송조회</a></li>
				<li><a href="?page=mypage_class">클래스 보관함</a></li>
				<li><a href="?page=mypage_shipment">배송지 목록</a></li>
				<li class="mymenu_btn-on"><a href="?page=mypage_add_shipment">배송지 추가</a></li>
			</ul>
		</nav>
	</div>
<!-- 배송지추가 -->
	<section>
		<article class="add_addr">
			<div class="add_addr-wrap">
				<div class="add_addr-cont">
					<form method="post">
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
										<div class="add_content" onclick="findpost()">
											<span class="input-wrap input_zip">
												<input type="text" id="zip" class="input" name="newaddr_zip" value="" readonly="readonly">
											</span>
											<a href="#" class="input_zip_btn">우편번호</a>
										</div>
										<div class="add_content input_addr">
											<span class="input_addr-wrap">
												<input type="text" id="addr" class="input" name="newaddr" value="" readonly="readonly">
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
					</form>
					<div class="add_addr_btn" id="shipadd">
						<a href="#" class="btn-addaddr">배송지 추가하기</a>
					</div>
				</div>
			</div>
		</article>
	</section>
<%
	String addr_name = request.getParameter("addr_name");
	String recipient = request.getParameter("recipient");
	String hp = request.getParameter("hp");
	String subhp = request.getParameter("subhp");
	String newaddr_zip = request.getParameter("newaddr_zip");
	String newaddr = request.getParameter("newaddr");
	String newaddr_detail = request.getParameter("newaddr_detail");
%>	
	
</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
var shipadd = document.querySelector("#shipadd");
shipadd.onclick = function(){
	document.querySelector("form").submit();
}
function findpost() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip').value = data.zonecode;
            document.getElementById("addr").value = roadAddr;
            
        }
    }).open();
}
</script>
</html>