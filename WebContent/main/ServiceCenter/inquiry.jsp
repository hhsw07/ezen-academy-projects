<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*, z01_vo.*"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.o-detail{display:block; margin:15px auto; padding:15px; width:980px;}
	</style>
	<script type="text/javascript">
		window.onload = function(){
			allWrap=document.querySelector(".all_wrap");
			top=document.querySelector(".top");
				userTop=document.querySelector(".user_top");
				menuTop=document.querySelector(".menu_top");
			middle=document.querySelector(".middle");
				ads=document.querySelector(".ads");
			bottom=document.querySelector(".bottom");
			
			orderlist = document.querySelector(".orderlist");
			oinfo = document.querySelector(".o-info");
			odetail = document.querySelector(".o-detail");
			notice = document.querySelector(".notice_wrap");
			
			top.scrollHeight = userTop.scrollHeight + menuTop.scrollHeight;
			
			orderlist.style.height = oinfo.scrollHeight + odetail.scrollHeight + "px";
			notice.style.height = orderlist.scrollHeight+"px";
			
			middle.style.paddingTop = top.scrollHeight+"px";
			middle.style.height = notice.scrollHeight + "px"
			bottom.style.paddingTop = 50+middle.scrollHeight+"px";
			
			allWrap.style.height = bottom.scrollHeight+"px"
		}
		//문의하기 알림창
		function inquiry(){
			alert('문의가 완료되었습니다.');
		}
	</script>
</head>
	
<body>
<form>
<section class="orderlist">
<div style="padding-top:15px; font-size:20px; font-weight: bold;">궁금하신 사항을 물어보시면 성심성의껏 답해드리겠습니다.
</div>
		<article>
			<div class="o-info">
				<ul style="padding:15px">
					<li class="o-name">
					<input style="padding:10px; font-size:20px; width:900px" type="text"
					placeholder="제목을 입력해주세요." />
					</li>
				</ul>
			</div>
		</article>
		
		<div class="o-detail">
			<div><textarea style="padding:10px; font-size:20px" rows="20" cols="89"
			placeholder="문의내용을 입력해주세요."></textarea></div>
			<div style="display:block; width:200px;margin:0 auto; padding:10px; border:1px solid black; cursor: pointer;
			text-align: center;">
				<a href="javascript:inquiry()">문의하기</a></div>				
		</div>
</section>
</form>
</body>
	<script type="text/javascript">
	
	</script>
</html>