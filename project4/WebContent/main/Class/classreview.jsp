<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath(); %>
<%

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

    textarea{outline: none; }

      .wrap-review{width:1520px; margin:0 auto; }
      .review{margin-top:80px;}
        .line-review{border-bottom:1px solid gray; width:1280px; display:inline-block;
        			position:relative; left:-40px;}
        .title{font-size: 35px; font-weight: 900; margin:20px 0;}
		.review-btn{width: 148px; height: 40px; background-color: white; border: 1px solid #A4A4A4; color: #A4A4A4; cursor:pointer; outline:none; font-weight:1000; margin:20px 0px;}
        .check{margin-bottom:20px;}
      .input_wrap{position:absolute;width:1920px; left:-320px; height:100%; z-index:10;
			display:none;}
			.buyPage{position:absolute;top:0%;left:40%; border:1px solid black; width:400px; height:573px; background-color: #ffffff; z-index:4;}
			.buyPage p{text-align:center; font-size:15px; font-weight:900; color:#FA5882; margin:15px 0px;}
			.btn{margin-top:18px;}
			.btn1{width:197px; height:40px; border:1px solid #FA5882; background-color:#FA5882; color:white; font-weight:900; outline:none; cursor:pointer;}
			.btn2{width:197px; height:40px; border:1px solid #FA5882; background-color:white; color:#FA5882; outline:none; cursor:pointer;}
			
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
    function reviewInput(){
		buyWrap.style.display = "block";
	}
    function check(msg){
        alert(msg);     
    }
    </script>
    
  </head>
  <body>  
  	<!-- 댓글을 작성하는 부분 -->	
  	<form method="post">
  	<div class="input_wrap">
		<div class="buyPage">
		  <div>
		    <p>리뷰작성</p>
		  </div>
		  <div>
		    <textarea name="cReview_detail" style="width:388px; height:450px; padding:5px;"></textarea>
		  </div>
		  <div class=btn>
			<a href="?page=classDetail"><input type="submit" name="addComm" class="btn1" onclick="check('댓글이 등록되었습니다.')" value="등록" ></a>
			<a href="?page="><button class="btn2" type="button" name="button" >취소</button></a>
		  </div> 	  
		</div>
	</div>
	</form>
<%
long time = System.currentTimeMillis();
SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-MM-dd");
String timeS = dayTime.format(new Date(time));

String mem_id = request.getParameter("mem_id"); 
String req_noS = request.getParameter("req_no"); 
String cReview_detail = request.getParameter("cReview_detail"); 
String cReview_starS = request.getParameter("cReview_star"); 
String cReview_date = request.getParameter("cReview_date"); 
if(mem_id==null) mem_id="";
if(cReview_detail==null) cReview_detail="";
if(cReview_date==null) cReview_date=timeS;
int req_no=0; if(req_noS!=null) req_no=Integer.parseInt(req_noS);
int cReview_star=0; if(cReview_starS!=null) cReview_star=Integer.parseInt(cReview_starS);

if(!cReview_detail.equals("")){
	ArrayList<CReview> commList=null;
	if(session.getAttribute("commList")!=null){
		commList = (ArrayList<CReview>)session.getAttribute("commList");
	}else{
		commList = new ArrayList<CReview>();
	}
	commList.add(new CReview(req_no, cReview_detail, cReview_star, cReview_date));
	session.setAttribute("commList",commList);
}
%>
<script type="text/javascript">
	var addComm = document.querySelector("#addComm");
	addComm.onclick=function(){
		document.querySelector("form").submit();
	}
</script>
	<!-- 댓글이 등록되는 부분 -->
    <div class="wrap-review">
      <div class="review">
        <p class="title">구매 후기</p>
        <a href="javascript:reviwInput(): onclick=""><button class="review-btn" onclick="reviewInput()">후기 작성</button></a>
      </div>
      <div class="">
        <ul>
        <%
		ArrayList<CReview> commList = new ArrayList<CReview>();
		if(session.getAttribute("commList")!=null){
			commList = (ArrayList<CReview>)session.getAttribute("commList");
		}
		%>
        <%
		for(int idx=0; idx<commList.size(); idx++){
		CReview crv = commList.get(idx);
		%>  
        <li style="margin-bottom:10px;"><%=crv.getcReview_date()%></li>
        <li ><%=crv.getcReview_detail()%></li> 
        <div class="line-review"></div>  
        <%		
		}
		%>
        </ul>
      </div>                    
    </div>   
  </body>
</html>
