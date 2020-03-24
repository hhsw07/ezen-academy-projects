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
    <title>HobbyFactory : product-list</title>
    <style media="screen">
      ul li{list-style:none;}
      a{text-decoration:none; color:black;}
      div{display:block;}  
      img{width:500px; height:300px;}
      /* 상단 카테고리 리스트 */
      .category-wrap{width:1280px;}
      .category-wrap p{margin:0px;}
        .category-list{text-align:center;}
        .category-list ul li{display:inline; margin:0 15px; font-size:13px; padding-bottom:3px;}
        .category-list ul li:hover{border-bottom:1px solid #ff3399;}
        .category-list a{font-weight:900;}
        .category-list a:hover{color:#ff3399;}
      /* 하단 클래스 리스트 */
      .class-wrap{width:1280px; margin:0 auto; text-align:center;}
      .class-wrap p{margin:0px;}
        .class-box{margin:20px 15px 0px 15px;  display:inline-block; position:relative;}
          .class-image{position:relative;}
          .class-info{position:relative; margin-top:8px;}
              .host-name{float:left; font-size:12px; color:gray;}
              .class-name{float:left; font-size:20px; font-weight:900;}
            .price-wrap1{position:absolute; right:0px; top:8px;}
              .price{font-size:20px; font-weight:900;}
    </style>
  </head>
  <body>
    <!-- 카테고리 리스트 -->
    <div class="category-wrap">
      <div class="category-list">
        <ul>
          <li><a href="#">전체</a></li>
          <li><a href="#">마크라메</a></li>
          <li><a href="#">프랑스자수</a></li>
          <li><a href="#">수채화/드로잉</a></li>
          <li><a href="#">뜨개질/위빙</a></li>
          <li><a href="#">가죽공예</a></li>
          <li><a href="#">쥬얼리/네온사인</a></li>
          <li><a href="#">다양한 취미</a></li>
        </ul>
      <!-- category-list -->
      </div>
    <!-- category-wrap -->
    </div>

    <!-- 클래스 리스트 -->
    <div class="class-wrap">
    
	<%
	DecimalFormat formatter = new DecimalFormat("###,###");
	ArrayList<Store> sList = new ArrayList<Store>();
	sList = dao.getStoreList();
	if(session.getAttribute("sList")!=null){
		
	}
	%>
	<%
	for(int idx=0; idx<sList.size(); idx++){
		Store sL = sList.get(idx);
	%>
      <div class="class-box">
      	<!-- 상품 이동 -->
        <a onclick="go(<%=sL.getStore_no()%>)">
        <div class="class-image">
        	<!-- 상품 이미지  -->
        	<img src="../image/<%=sL.getStore_img()%>" alt="">
        </div>
        <div class="class-info">
          <div>
          	<!-- 호스트 이름 -->
          	<span class="host-name"><%=sL.getMem_id()%></span><br>
          	<!-- 상품 이름 -->
          	<span class="class-name"><%=sL.getStore_title()%></span>
          </div>
          <div class="price-wrap1">
          	<!-- 가격 -->
          	<span class="price"><%=formatter.format(sL.getStore_price())%></span>원
          </div>
          
        </div>
        </a>
      </div>
    <%
    }
    %>	
<script type="text/javascript">
	function go(num){
		location.href="?page=productDetail_jsp&store_no="+num;
	}
</script>
    <!-- class-wrap -->
    </div>
  </body>
</html>
