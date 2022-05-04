<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*,vo_cmk.*" %>
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
/* 주문/배송 조회 */
	.orderlist{padding:30px; width:980px; height:640px; margin:0 auto;}
	.orderlist article{position:relative; font-size:14px; border-bottom:1px #ddd solid; padding-top:25px;}
	.o-info{width:300px;}
	.o-title{width:70px;display:inline-block; margin-right:5px;}
	.o-value {color:#a3a3a3; margin-right:15px;}
	.o-btn{position:static; margin-top:16px;}
	.o-thumbnail{height:80px;}
	.o-thumbnail img{width:60px; padding:30%;}
	.o-name{padding-bottom:5px;}
	.o-option{color:#b6b6b6; font-size:11px; display:block; padding-top:4px;padding-bottom:4px;}
	.o-status {position:absolute; bottom:5px; right:0; color:#d67061;}
	.o-qty {bottom:5px; left:70px; color:#b6b6b6; font-size:11px;}
	.orderinfo div{display:inline-block; vertical-align: middle;}
/* 구매내역 없음 */
	.addrlist-wrap{padding:20px 3%;}
	.noaddr-wrap{padding:70px 0;text-align:center;}
	.noaddr-tit{font-size:24px;font-weight:bold;color:#3d4248;}
	.noaddr-txt{margin:5px 0 0;font-size:16px;color:#a1a4a8;}
/* 페이징 */	
	.paging{text-align:center; width:980px; position:absolute; bottom:10px}
	.pageNo{color:#f36359;}
</style>
</head>
<%
ArrayList <Orderlist> olist = new ArrayList<Orderlist>();
Orderlist o1 = new Orderlist(2003040001, "2020.03.04", "image/mypage_ex02.jpg","고래의 꿈 네온사인", "-", 1,"배송완료");
Orderlist o2 = new Orderlist(2003100001, "2020.03.10", "image/mypage_ex01.jpg","상콤 레몬 수세미", "-", 1,"배송준비중");
olist.add(o1);
olist.add(o2);
olist.add(o1);
olist.add(o2);
olist.add(o1);
olist.add(o2);
// 마일리지
ArrayList<Point> ptList = new ArrayList<Point>();
Point pt1 = new Point("2019.10.13", "회원가입 포인트", 3000);
Point pt2 = new Point("2020.01.23", "하비팩토리 세뱃돈! 새해 취미복 많이 받으세요", 2020);
Point pt3 = new Point("2020.03.04", "상품구매", -5020);
Point pt4 = new Point("2020.03.04", "주문취소", 5020);
ptList.add(pt1);
ptList.add(pt2);
ptList.add(pt3);
ptList.add(pt4);
session.setAttribute("ptList", ptList);
// 포인트계산


/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 5;
int p_size = 10;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = olist.size()-1- (w_size*i_page);
if(lastNo < 0) lastNo = -1;

Paging pg = new Paging(w_size,p_size,olist.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
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
				<li class="mymenu_btn-on"><a href="?page=mypage_order">주문/배송조회</a></li>
				<li><a href="?page=mypage_class">클래스 보관함</a></li>
				<li><a href="?page=mypage_shipment">배송지 목록</a></li>
				<li><a href="?page=mypage_add_shipment">배송지 추가</a></li>
			</ul>
		</nav>
	</div>
<!-- 주문/배송조회 -->
	<section class="orderlist">
	<%
	if(olist!=null){
		for(int idx=olist.size()-1 -(w_size*(i_page-1)); idx > lastNo ; idx--){
			Orderlist o = olist.get(idx);
	%>
		<article class="orderinfo">
			<div class="o-info">
				<ul>
					<li>
						<span class="o-title">주문번호</span> 
						<span class="o-value"><%=o.getO_num() %></span>
					</li>
					<li>
						<span class="o-title">신청일</span> 
						<span class="o-value"><%=o.getO_date() %></span>
					</li>
					<li class="o-btn"><a href="#">주문상세보기</a></li>
				</ul>
			</div>
			<div class="o-thumbnail">
				<img src="<%=o.getO_thum() %>" alt="">
			</div>
			<div>
				<ul>
					
					<li class="o-name"><%=o.getO_name() %></li>
					<li class="o-option"><%=o.getO_opt() %></li>
					<li class="o-status"><%=o.getO_sta() %></li>
					<li class="o-qty">수량 : <%=o.getO_qty() %></li>
				</ul>
			</div>
		</article>
	<%}
		%>
		<div class="paging">
			<h4>
			<%
			if(pg.isPre()){
			%>
				<a href="?page=mypage_order&i_page=<%=preNo %>">Pre</a>
			<%
			}
			for(int i = pg.getPage_Start(); i <= pg.getPage_End();i++){
				if(i == i_page){
			%>
				<a class="pageNo" href="?page=mypage_order&i_page=<%=i %>" ><%=i %></a>
			<%	}else{ %>
				<a href="?page=mypage_order&i_page=<%=i %>"><%=i %></a>
			<%	}
			}
			if(pg.isNext()){
			%>
				<a href="?page=mypage_order&i_page=<%=nextNo %>">Next</a>
			<%} %>
			</h4>	
		</div>
<%	} %>
	
	<%
	if(olist.size()==0){%>
		<article class="mymenu-content">
			<div class="addrlist-wrap">
				<div class="noaddr-wrap">
					<div class="noaddr-tit">주문한 내역이 없습니다.</div>
					<div class="noaddr-txt">스토어에서 구매 후 이용해주세요.</div>
				</div>
			</div>
		</article>
	<%}
	%>	
	</section>
	

</body>
</html>