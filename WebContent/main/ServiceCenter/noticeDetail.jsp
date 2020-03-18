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
	</script>
</head>
<%
int cn = Integer.parseInt(request.getParameter("cn")); //checkedNotice
Notice nd = new Notice();//noticeDeatil
ArrayList <Notice> notiList = new ArrayList<Notice>();
if(session.getAttribute("notiList")!=null){
	notiList = (ArrayList<Notice>)session.getAttribute("notiList");
}
for(Notice n : notiList){
	if(n.getNoti_no()==cn){
		nd = n;
		System.out.println("1번 : "+nd.getNoti_detail());
		nd.getNoti_detail().replaceAll(System.getProperty("line.separator"),"<br/>");
		System.out.println("2번 : "+nd.getNoti_detail());
	}
}
%>
<body>
<section class="orderlist">
		<article>
			<div class="o-info">
				<ul>
					<li>
						<span class="o-title">공지번호</span> 
						<span class="o-value"><%=nd.getNoti_no() %></span>
					</li>
					<li>
						<span class="o-title">작성일</span> 
						<span class="o-value"><%=nd.getNoti_date() %></span>
					</li>
				</ul>
			</div>
			<div>
				<ul>
					<li class="o-name"><%=nd.getNoti_title() %></li>
				</ul>
			</div>
		</article>
		
		<div class="o-detail">
				<%=nd.getNoti_detail() %>
				<br><br>
				<div style="display:inline-block;margin:0 auto; padding:10px; border:1px solid black; cursor: pointer;">
				<a href="?page=serviceCenter&service=notice">목록으로</a></div>
		</div>
</section>
</body>
	<script type="text/javascript">
	</script>
</html>