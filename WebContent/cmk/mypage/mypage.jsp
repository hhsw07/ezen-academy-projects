<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"    
    import="java.util.*, z01_vo.*"%>
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
</style>
</head>
<body>
<!-- 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="#" title="주문/배송관리" class="mymenu_btn mymenu_btn-on">주문/배송관리</a>
				</li>
				<li>
					<a href="#" title="나의 활동" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="#" title="내 정보 관리" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="#" title="호스트" class="host_btn">HOST</a>
	</div>
<!-- vo객체 생성 -->
<%
	ArrayList<Point> points = new ArrayList<Point>();
	Point pt01 = new Point(0,"", "2019.10.13","회원가입 포인트",3000);
	Point pt02 = new Point(0,"", "2020.01.23","하비팩토리 세뱃돈! 새해 취미복 많이 받으세요",2020);
	Point pt03 = new Point(0,"", "2020.03.04","상품구매",-5020);
	points.add(pt01);
	points.add(pt02);
	points.add(pt03);
	session.setAttribute("points", points);
%>

</body>
</html>