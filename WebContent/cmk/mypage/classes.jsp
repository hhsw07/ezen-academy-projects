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
	a{text-decoration:none; color:black;}
/* 메뉴 */
	.mymenu{position:relative; width:950px; background-color:#151515; color:#FFFFFF; font-size:18px; margin:64px auto 0; padding:5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.myhost{text-align:right; display:inline;}
	.myhost ul li{padding-right:30px; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:950px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 클래스목록 */
	.pre-list{padding-bottom:50px; width:870px; height:500px; margin:0 auto;}
	.pre-class{padding:0 10px; color:#4a4a4a; font-size:15px;}
	.preview{text-align:left;}
	.c-list{display:inline; float:left; width:390px; margin:0; padding-top:25px; text-align:left;}
	.c-thumbnail{position:relative; width:360px; height:216px; padding:0; overflow:hidden;}
	.c-thumbnail img{position:absolute; top:0; left:0; width:100%;}
	.c-fordate{text-align:left; margin-top:14px;}
	.c-listcon{text-align:left; height:75px; margin-top:14px;}
	.c-lecture{font-size:12px; color:#a1a4a8; padding-top:2px;}
	.c-name {margin-top:2px; font-size:14px; line-height:1.38; font-weight:bold;padding:0 100px 0 0;}
	.c-when{font-size:11px;}
	.c-date{color:#a1a4a8; margin-left:10px;}
	.o-none{text-align:center; margin-top:50px; width:100%;}
</style></head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li><a href="#">주문/배송관리</a></li>
				<li><a href="#">나의 활동</a></li>
				<li><a href="#">내 정보 관리</a></li>
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
				<li><a href="#">주문/배송조회</a></li>
				<li><a href="#">클래스 보관함</a></li>
				<li><a href="#">배송지 목록</a></li>
				<li><a href="#">배송지 관리</a></li>
			</ul>
		</nav>
	</div>
	
<!-- 내가 들었던 클래스 -->
	<section class="pre-list">
	<%
	ArrayList<Myclasses> myclist = new ArrayList<Myclasses>();
	Myclasses mc1 = new Myclasses("2020.03.04","image/mypage_ex01.jpg","[원데이 클래스] 바이유어핸즈","바이유어핸즈의 상콤 레몬 수세미 뜨기");
	Myclasses mc2 = new Myclasses("2020.03.10","image/mypage_ex02.jpg","[원데이 클래스] 더베러라이프 작가님","밤바다 고래의 꿈 네온사인 클래스");
	myclist.add(mc1);
	myclist.add(mc2);
	myclist.add(mc1);
	myclist.add(mc2);
	if(myclist!=null){
	%>
		<article class="pre-class">
		 	<ul class="preview">
	<%	for(Myclasses myc:myclist){ %>
		 		<li class="c-list">
		 			<a href="#">
		 				<div class="c-fordate">		 					
			 				<p class="c-when"><span>수강날짜</span><span class="c-date"><%=myc.getC_date() %></span></p>
		 				</div>
		 				<div class="c-thumbnail">
		 					<img src="<%=myc.getC_thum() %>" alt="">
		 				</div>
		 				<div class="c-listcon">
			 				<p class="c-lecture"><%=myc.getC_lec() %></p>
			 				<p class="c-name"><%=myc.getC_name() %></p>
		 				</div>
		 			</a>
		 		</li>
		 <%
		 } %>
		 	</ul>
		</article>
	<%}%>
	<%if(myclist.size()==0){ %>
		<div class="o-none">
			수강 이력이 없습니다.
		</div>
	
	<%} %>
	</section>

</body>
</html>