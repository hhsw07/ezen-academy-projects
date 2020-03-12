<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hobby Factory</title>
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
/* 주문/배송 조회 */
	.orderlist{padding:30px; width:980px; height:500px; margin:0 auto;}
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
	.orderlist div{display:inline-block; vertical-align: middle;}
/* 구매내역 없음 */
	.o-none{text-align:center; margin-top:50px; width:100%;}	
/* 페이징 */	
	.paging {text-align:center; width:980px; position:absolute; bottom:10px}
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

/* 페이징 처리
Paging pg = new Paging(w_size,p_size,memList.size(),i_page);
Paging pg = new Paging(화면에나오는글수,한번에보이는페이지수,글의최대개수,현재위치한페이지);
*/

int w_size = 4;
int p_size = 2;
int i_page = 1;
if(request.getParameter("i_page") != null) i_page = Integer.parseInt(request.getParameter("i_page"));
session.setAttribute("i_page",i_page);

int lastNo = w_size*i_page;
if(lastNo >= olist.size()) lastNo = olist.size();

Paging pg = new Paging(w_size,p_size,olist.size(),i_page);
int preNo = pg.getPage_Start()-1;
int nextNo = pg.getPage_End()+1;
%>
<body>

<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li style="font-weight:bold;"><a href="?page=mypage_order">주문/배송관리</a></li>
				<li><a href="#">나의 활동</a></li>
				<li><a href="?page=mypage_modiinfo">내 정보 관리</a></li>
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
				<li style="font-weight:bold;"><a href="#">주문/배송조회</a></li>
				<li><a href="?page=mypage_class">클래스 보관함</a></li>
				<li><a href="#">배송지 목록</a></li>
				<li><a href="#">배송지 관리</a></li>
			</ul>
		</nav>
	</div>
<!-- 주문/배송조회 -->
	<section class="orderlist">
	<%
	if(olist!=null){
		for(int idx=(w_size*i_page-w_size) ; idx<lastNo ; idx++){
	%>
		<article>
			<div class="o-info">
				<ul>
					<li>
						<span class="o-title">주문번호</span> 
						<span class="o-value"><%=olist.get(idx).getO_num() %></span>
					</li>
					<li>
						<span class="o-title">신청일</span> 
						<span class="o-value"><%=olist.get(idx).getO_date() %></span>
					</li>
					<li class="o-btn"><a href="#">주문상세보기</a></li>
				</ul>
			</div>
			<div class="o-thumbnail">
				<img src=<%=olist.get(idx).getO_thum() %> alt="">
			</div>
			<div>
				<ul>
					
					<li class="o-name"><%=olist.get(idx).getO_name() %></li>
					<li class="o-option"><%=olist.get(idx).getO_opt() %></li>
					<li class="o-status"><%=olist.get(idx).getO_sta() %></li>
					<li class="o-qty">수량 : <%=olist.get(idx).getO_qty() %></li>
				</ul>
			</div>
		</article>
	<%}
	} %>
	<%
	if(olist.size()==0){%>
		<div class="o-none">
			주문한 내역이 없습니다.
		</div>
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
	</section>
	

</body>
</html>