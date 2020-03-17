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
	.mymenu{position:relative; width:1050px; background-color:#151515; color:#FFFFFF; font-size:18px; margin:64px auto 0; padding:5px 5px 45px 5px;}
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:left; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
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

<body>

<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<nav class="mynav">
			<ul>
				<li style="font-weight:bold;">서비스센터</li>
			</ul>
		</nav>
	</div>
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li><a href="?page=serviceCenter&service=notice">공지사항</a></li>
				<li><a href="">FAQ</a></li>
				<li><a href="">1:1문의</a></li>
				<li><a href="">호스트 신청</a></li>
			</ul>
		</nav>
	</div>
<%	String sv = null;
sv = request.getParameter("service");
if(sv==null){
%>
	<%@include file="notice.jsp" %>
<%	}else{ 
		if(sv.equals("notice")){%>	
			<%@include file="notice.jsp" %>
<%	}
}
%>
</body>
</html>