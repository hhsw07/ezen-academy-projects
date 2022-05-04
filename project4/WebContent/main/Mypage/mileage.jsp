<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, vo_cmk.*,java.text.*"%>
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
	.point_page{width:980px; margin:0 auto;}
	.pointinfo-cont{padding:32px 0; margin:40px 0 0; border:5px solid #DFDFDF;}
	.pointinfo_show{line-height:1.71; height:auto; font-size:14px; color:#a1a4a8; overflow:hidden;}
	.point-info{width:18%; float:left; padding:0;text-align:center;}
	.point-info-tit{font-size:14px; line-height:2.14;}
	.point-info-p{margin:2px 0; color:#2f3338; font-size:18px; line-height:1.67;}
	.point-info-txt{margin:10px 0 0; color:#909397; font-size:14px; line-height:1.8;}
	.point-cont{margin:40px 0 0;}
	.point-tit{padding:0 0 10px; font-size:16px; border-bottom:2px solid #3d4248; line-height:1.5; color:#3d4248;}
    .point-table{margin:10px 0 50px; text-align:center;}
    .point-th{color:#2f3338; font-size:14px; border-bottom:2px solid #3d4248; line-height:2; padding-bottom:10px; text-align:center;}
    .point-td{padding:15px 0 18px; color:#2f3338; font-size:14px; line-height:2; vertical-align:middle; border-bottom:1px solid #dfdfdf; text-align:center;}
    .txt-color-r{color:#f1645d !important;}
	.paging {text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}
	
</style>
</head>
<%
	DB_Mileage db = new DB_Mileage();
	DecimalFormat formatter = new DecimalFormat("###,###");

%>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order"class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_classreview" class="mymenu_btn mymenu_btn-on">나의 활동</a>
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
				<li><a href="?page=mypage_classreview">구매후기</a></li>
				<li><a href="?page=mypage_inquiry">1:1문의</a></li>
				<li class="mymenu_btn-on"><a href="?page=mypage_mileage">마일리지</a></li>
			</ul>
		</nav>
	</div>
<%
int tot=0;
int plus=0;
int minus=0;
if(db.getPtlist()!=null){
	for(VO_Mileage pt:db.getPtlist()){
		if(pt.getPoint_mileage()>=0){
			plus = plus+pt.getPoint_mileage();
		} else{
			minus = minus+pt.getPoint_mileage();
		}
		tot = plus+minus;
	}
}
%>
<!-- 마일리지조회 -->
	<section class="mypage_content">
		<article class="point-wrap">
			<div class="point_page">
				<div class="pointinfo-cont">
					<div class="pointinfo_show">
						<div class="point-info">
							<div class="point-info-tit">현재 마일리지</div>
							<div class="point-info-p"><%=formatter.format(tot) %> P</div>
						</div>
						<div class="point-info">
							<div class="point-info-tit">총 적립 마일리지</div>
							<div class="point-info-p"><%=formatter.format(plus) %> P</div>
						</div>
						<div class="point-info">
							<div class="point-info-tit">사용한 마일리지</div>
							<div class="point-info-p"><%=formatter.format(-minus) %> P</div>
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
					<%for(VO_Mileage pt:db.getPtlist()){%>
								<tr>
									<td class="point-td"><%=pt.getPoint_date() %></td>
									<td class="point-td"><%=pt.getPoint_detail() %></td>
						<%if(pt.getPoint_mileage()>=0){%>
									<td class="point-td txt-color-r">+<%=formatter.format(pt.getPoint_mileage()) %> p</td>
						<%} else{%>
									<td class="point-td"><%=formatter.format(pt.getPoint_mileage()) %> p</td>
						<%}%>
								</tr>
					<%}%>
							</tbody>
						</table>
					</div>
				</div>
				
			</div>
		</article>
	</section>

</body>
</html>