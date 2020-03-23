<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat,z01_vo.*, vo_khj.* " 
    
%>
<!DOCTYPE html>
<%
S_Pdt dao = new S_Pdt();
%>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>HobbyFactory : product-detail</title>
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <style media="screen">
      body{height:100%; margin:0px; padding:0px; position:relative; min-width:1820px;}
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}
      wrap{width:1280px; margin:0 auto;}
      wrap p{margin:0px;}
        .info-wrap{margin-top:50px;}
          .class-image{width:900px; height:500px;  position:relative; left:-1px;}
            .move_image{position: relative; left:0px; bottom:61px; height:550px; padding-top:60px;}
              .visual{position:relative;}
             

          .class-info{position:absolute; left:760px; top:200px;}
            .host-name{color:gray;}
            .class-name{font-size:30px; margin-top:5px;}
            .price-wrap{margin-top:20px;}
              .day{font-size:20px; font-weight:400;}
              .price{font-size:35px; font-weight:900;}
            .line{border-bottom:1px solid #d2d2d2; width:481px; margin:20px 0;}
              .mileage{font-size:13px; font-weight:900; margin-right:50px;}
              .mileage-point{font-size:13px; font-weight:900; color:gray;}
              .trans{font-size:13px; font-weight:900; margin-right:93px;}
            .select-pdt{margin-top:50px; width:480px; height:50px; font-size:20px;}
            .buy{width:480px; height:50px; margin-top:20px; background-color: #FA5882; border:none; font-size:20px;
                border:1px solid black; outline: none; cursor: pointer;}
            .star{width:50px; height:50px; border:1px solid gray; background-color: white; outline: none;
                  cursor: pointer;}
            .xi-star-o{font-size:22px;}

      .tab-wrap{width:1280px; margin:0 auto;}
        .tab{text-align:center; margin-top:100px; font-size:20px; font-weight:400;
            border-bottom:1px solid #d2d2d2;
            width:1280px;
            position:relative;
            padding:20px 0px 20px 0px;}
          .tab a{margin:0px 160px;}
          .tab a:hover{border-top:3px solid black;
                       border-bottom:3px solid black;
                       padding:20px 0px 20px 0px;}

	   .buy_wrap{position:absolute;width:1920px; left:-320px; height:100%; background-color:rgba(164,164,164,0.5);z-index:10;
	    	display:none;}
		 .buyPage{position:absolute;top:0%;left:40%; width:400px;height:524px; background-color: #ffffff; z-index:4;}
		   .buyinfo-wrap{position:relative; height:385px;}
			 .buyPage p{text-align:center; font-size:15px; font-weight:900; color:#FA5882; margin:12px 0px;}
			 .buy-line{border-bottom:1px solid #D8D8D8;}
			 .pdt-box{border:1px solid red; width:380px; height:315px; position:absolute; left:10px; top:45px;}
				 .pdt-box img{width:360px; height:235px; position:absolute; left:10px; top:71px;}
				 .buy-info{font-weight:600; font-size:15px;}
				 .buy-info2{color:#FE2E9A; margin-top:5px; font-size:12px;}
				 .cnt{text-align:center; margin-top:10px;}
					 input[type="number"]::-webkit-outer-spin-button,
						input[type="number"]::-webkit-inner-spin-button {
						    -webkit-appearance: none;
						    margin: 0;
						    border:1px solid white;
						}
					.cnt button{border:1px solid black; background-color:white;}
				 .card-num{width:65px; height:25px; text-align:center;}
				 .btn{margin-top:23px;}
				 .btn1{width:197px; height:40px; border:1px solid #FA5882; background-color:#FA5882; color:white; font-weight:900; outline:none; cursor:pointer;}
				 .btn2{width:197px; height:40px; border:1px solid #FA5882; background-color:white; color:#FA5882; outline:none; cursor:pointer;}
			form{text-align:center; margin-top:10px;}
			.btn3{border:1px solid black; background-color: white;}
			.goup i{font-size:60px; position:fixed; left:81%; top:93%; z-index:30; cursor:pointer;}
			.cartcss{width:237px; height:45px; margin-top:30px; border:1px solid black; background-color:white;}
			.paycss{width:238px; height:45px; margin-top:30px; border:1px solid black; background-color:white;}
    </style>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script type="text/javascript">  
    
    buyWrap=document.querySelector(".buy_wrap");
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
	
    function buy(){
		buyWrap.style.display = "block";
		document.querySelector("body").style.overflow = "hidden";
	}
    function check(msg){
        alert(msg);     
    }
    </script>
  </head>
  
  <body>
    <div class="wrap" id="arr">
    <%
    
    %>
	    <%
	    DecimalFormat formatter = new DecimalFormat("###,###");
		ArrayList<Store> sList = new ArrayList<Store>();
	    sList = dao.getStoreList();
		if(session.getAttribute("sList")!=null){
			
		}
		String store_noS = request.getParameter("store_no");
		int store_no=0; if(store_noS!=null) store_no=Integer.parseInt(store_noS);
		%>
      <div class="info-wrap">
          <div class="class-image">
            <div class="move_image">
              <section class="visual">
                <div class="bg1"><img name="store_img" src="../image/<%=sList.get(store_no-1).getStore_img()%>" style="border:1px solid #fff; height:442px; width:780px;" alt=""></div>
              </section>
            </div>
          </div>
         
          <div class="class-info">
            <ul>
              <!-- 호스트 이름  -->
              <li class="host-name" ><%=sList.get(store_no-1).getMem_id()%></li>
              <!-- 상품 이름  -->
              <li class="class-name"><%=sList.get(store_no-1).getStore_title()%></li>
              <!-- 상품 가격 -->
              <li class="price-wrap"><span class="price" ><%=formatter.format(sList.get(store_no-1).getStore_price())%></span><span class="day">원</span></li>
              <li class="line"></li>
              <!-- 상품 마일리지 -->
              <li><span>적립 마일리지</span><span class="mileage-point">2000p</span></li>
              <li><span class="trans">배송비</span><span class="mileage-point">무료배송(도서산간지역 제외)</span></li>
              <li>
                <select class="select-pdt" name="">
                  <option value="">상품을 선택해주세요.</option>
                  <!-- 상품 옵션 선택 -->
                  <option value="" ><%=sList.get(store_no-1).getStore_title()%></option>
                </select>
              </li>
              <li>
              	  <input class="cartcss" type="submit" name="goCart" value="장바구니">
                  <a href="javascript:buy()" onclick="">
                  <input class="paycss" type="submit" onclick="go(<%=sList.get(store_no-1).getStore_no()%>)" value="구매하기">
                  </a>
              </li>
            </ul>
          <!-- class-info -->
          </div>
      <!-- info-wrap  -->
      </div>
<script type="text/javascript">
	function go(num){
	location.href="?page=productpayment&store_no="+num;
	}
</script>

      <div class="tab-wrap">
        <div class="tab">
          <a href="?page=productDetail_jsp&store_no=<%=request.getParameter("store_no") %>&page2=pdtintro">상품소개</a>
          <a href="?page=productDetail_jsp&store_no=<%=request.getParameter("store_no") %>&page2=pdtreview">구매후기</a>
          <a href="?page=productDetail_jsp&store_no=<%=request.getParameter("store_no") %>&page2=pdtrefund">배송/교환/환불</a>
        <!-- tab  -->
        </div>
      <!-- tab-wrap  -->
      </div>		
	  <div class="goup"><a href="#arr"><i class="xi-caret-up-square"></i></a></div>
      <div>
<%
		String pl2=null;
		pl2 = request.getParameter("page2");
		if(pl2==null){
%>
		<%@include file="pdtintro.jsp" %>
<%		}else{
		if(pl2.equals("pdtintro")){
%>
		<%@include file="pdtintro.jsp"%>
<%		}
		if(pl2.equals("pdtreview")){
%>
		<%@include file="pdtreview.jsp"%>
<%		}
		if(pl2.equals("pdtrefund")){
%>
		<%@include file="pdtrefund.jsp"%>
<%			
		}		
} 
%>
      </div>
    <!-- wrap  -->
    </div>
  </body>
</html>
