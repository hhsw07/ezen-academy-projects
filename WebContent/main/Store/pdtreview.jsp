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
    body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
    ul li{list-style:none;}
    a{text-decoration:none; color:black;}
    div{display:block;}

    textarea{outline: none; }

      .wrap-review{width:1520px; margin:0 auto; }
      .review{margin-top:80px;}
        .line-review{border-bottom:1px solid gray; width:1280px; margin:0 auto; display:inline-block;
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
			.comment-result ul li{margin-bottom:5px;}
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
		    <textarea name="pReview_detail" style="width:388px; height:450px; padding:5px;"></textarea>
		  </div>
		  <div class=btn>
			<a href="?page=productDetail"><input type="submit" name="addComm" class="btn1" onclick="check('댓글이 등록되었습니다.')" value="등록" ></a>
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
String order_noS = request.getParameter("order_no"); //int
String pReview_detail = request.getParameter("pReview_detail"); 
String pReview_starS = request.getParameter("pReview_star"); 
String pReview_date = request.getParameter("pReview_date"); 
if(mem_id==null) mem_id="";
if(pReview_detail==null) pReview_detail="";
if(pReview_date==null) pReview_date=timeS;
int order_no=0; if(order_noS!=null) order_no=Integer.parseInt(order_noS);
int pReview_star=0; if(pReview_starS!=null) pReview_star=Integer.parseInt(pReview_starS);

System.out.println("###"+pReview_detail);


if(!pReview_detail.equals("")){
	ArrayList<PReview> commList=null;
	if(session.getAttribute("commList")!=null){
		commList = (ArrayList<PReview>)session.getAttribute("commList");
	}else{
		commList = new ArrayList<PReview>();
	}
	commList.add(new PReview(order_no,mem_id, pReview_detail, pReview_star, pReview_date));
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
      <div class="comment-result">
        <ul>
        <%
		ArrayList<PReview> commList = new ArrayList<PReview>();
		if(session.getAttribute("commList")!=null){
			commList = (ArrayList<PReview>)session.getAttribute("commList");
		}
		%>
        <%
		for(int idx=0; idx<commList.size(); idx++){
		PReview prv = commList.get(idx);
		%>
		<div class="line-review"></div>  
	    <li name="pReview_detail" ><%=prv.getMem_id()%></li>
        <li name="pReview_date" style="margin-bottom:10px;"><%=prv.getpReview_date()%></li>
        <li name="pReview_detail" ><%=prv.getpReview_detail()%></li> 
        <div class="line-review"></div>  
        <%		
		}
		%>
        </ul>
      </div>                    
    </div>   
  </body>
</html>
