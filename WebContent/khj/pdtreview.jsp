<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat " 
%>

<!DOCTYPE html>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
    ul li{list-style:none;}
    a{text-decoration:none; color:black;}
    div{display:block;}

	.line-review{border-bottom:1px solid gray; width:1280px; margin:0 auto; display:inline-block; position:relative; left:-40px;}
      
    </style>
    
    <script type="text/javascript">
    window.onload = function(){
    buyWrap=document.querySelector(".input_wrap");
    allWrap=document.querySelector(".all_wrap");
   	top=document.querySelector(".top");
	userTop=document.querySelector(".user_top");
	menuTop=document.querySelector(".menu_top");
   	middle=document.querySelector(".middle");
 	ads=document.querySelector(".ads");
   	bottom=document.querySelector(".bottom");
   	
   	top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
   	console.log(top.scrollHeight);
   	middle.style.paddingTop = top.scrollHeight+"px";
   	bottom.style.paddingTop = 50+middle.scrollHeight+"px";
   	
   	//최상위 Wrap만 이렇게 해야 오류가 안남..
   	allWrap.style.height = bottom.scrollHeight+"px";
    }
    </script>
    
  </head>
  <body>  

	<h1>구매 후기</h1>
	<!-- 후기 작성 버튼 -->
	<input type="button" value="후기작성" class="" id="regBtn">
	
	<div class="line-review"></div>
	
	<!-- 작성한 댓글 출력되는 부분 -->
	<table style="width:800px; height:200px;">
		<tr><td>리뷰번호</td></tr>
		<tr><td>아이디</td></tr>
		<tr><td>날짜</td></tr>
		<tr><td>내용</td></tr>
		<tr><td><div class="line-review"></div></td></tr>
		<tr><td><input type="button" value="수정"></td></tr>
	</table>
	<div id="regDiv" 
		style="width:500px; height:600px; background-color:white;
		visibility:hidden; border:1px solid black;
		position:absolute; top:50%; left:50%;">
	<h2>후기 작성</h2>
	<form method="post" id="regForm" action="">
		<input type="text" name=""/>
		<input type="submit" value="등록"/>
		<input type="button" value="취소" onclick="javascript:closeWin('#regDiv')"/>
	</form>
	</div>
  </body>
</html>








