<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
body{margin:0; padding:0; overflow-x:hidden;}
a{text-decoration:none;}
ul{margin:0; padding:0;}
ul li{list-style:none;}

.all-wrap{}
/*상단 메뉴바 시작*/
	.menu-wrap{width:100%;}
		.menu-1{width:1280px; margin:0 auto; height:25px; padding:5px 0;
					border-right:1px solid #E4E1E1; border-left:1px solid #E4E1E1;}
			.menu-1 ul li{display:inline; margin:0 15px; float:right;}
		.menu-div{border-bottom:1px solid #E4E1E1;}
		.menu-2-wrap{background-color:#63145F;}
			.menu-2{width:1280px; margin:0 auto; padding:10px 0; text-align:center; color:white; font-weight:1px;
					border-right:1px solid #E4E1E1; border-left:1px solid #E4E1E1;}
				.menu-2 li{display:inline; font-size:25px; margin:0 15px;}
/*상단 메뉴바 끝*/


</style>
<!-- 서버 안에 jquery lib를 다운 받아서 설정 -->	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
</script>
</head>
<body>
	
<!-- 상단 메뉴바 시작 -->
		<div class="menu-wrap">
			<div class="menu-1">
				<ul>
					<li><a href="notice.jsp">고객센터</a></li>
					<li><a href="login.jsp">로그인</a></li>
				</ul>				
			</div>
			<div class="menu-div"></div>
			<div class="menu-2-wrap">
				<div class="menu-2">
					<ul>
						<li style="margin-right:290px; color:#F2B809">PC냥이</li>
						<li>조립컴퓨터</li>
						<li>컴퓨터부품</li>
						<li>견적컴퓨터</li>
						<li style="margin-left:290px;">장바구니</li>
					</ul>
				</div>
			</div>
		</div>
<!-- 상단 메뉴바 끝 -->

</body>
</html>