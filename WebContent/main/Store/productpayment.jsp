<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date,
    java.text.SimpleDateFormat,z01_vo.*, vo_khj.*,vo_cmk.* " 
    
%>
<!DOCTYPE html>
<%
S_Pdt dao = new S_Pdt();
DB_Addr db = new DB_Addr();
%>
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
      ul li{list-style:none;}
      a{text-decoration:none;}
      table{border-bottom:2px solid black;
            border-top:2px solid black;
            padding:10px 0px;}

      .payment-wrap{margin:0 auto; width:400px;}
      .class-Dinfo ul li{font-size:12px; width:255px;}
      .title-name{font-size:15px; font-weight:900; margin-top:50px;}
      .fix-info{color:gray; height:32px; font-size:13px; width:90px; margin:10px 0px;}
      .insert-info{border:1px solid gray; padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:300px;}
      .insert-info2{padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:300px; text-align: right;}
      .insert-info3{padding:5px 0px 5px 5px; font-size:13px; font-weight:800; width:200px;}
      .ad-btn{width:92px; height:31px; border:1px solid black; font-weight:900;
              color:white; background-color:black; cursor:pointer; outline:none;}
      .mi-btn{width:87px; height:31px; border:1px solid black; font-weight:900;
              color:white; background-color:black; cursor:pointer; outline:none;}
      .payment-btn-wrap{text-align: center;}
      .payment-btn{width: 200px; height: 40px; border: 1px solid black; background-color: white; 
     				 cursor: pointer;  margin: 10px; outline: none;}
     				 
	.btn3{border:1px solid black; background-color: white;}

    </style>
    <script language="JavaScript">
		var sell_price; // 상품 가격
		var amount; // 상품 수량
		function init () {
			sell_price = document.form.sell_price.value;
			amount = document.form.amount.value;
			document.form.sum.value = sell_price;
			change();
		}
		function add () {
			hm = document.form.amount;
			sum = document.form.sum;
			hm.value ++ ;
			sum.value = parseInt(hm.value) * sell_price;
		}
		function del () {
			hm = document.form.amount;
			sum = document.form.sum;
				if (hm.value > 1) {
					hm.value -- ;
					sum.value = parseInt(hm.value) * sell_price;
				}
		}
		function change () {
			hm = document.form.amount;
			sum = document.form.sum;
				if (hm.value < 0) {
					hm.value = 0;
				}
			sum.value = parseInt(hm.value) * sell_price;
		}
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
	</script>

  </head>
  <body onload="init();">
	    <%
	    DecimalFormat formatter = new DecimalFormat("###,###");
		ArrayList<Store> sList = new ArrayList<Store>();
	    sList = dao.getStoreList();
		if(session.getAttribute("sList")!=null){
		}
		String store_noS = request.getParameter("store_no");
		int store_no=0; if(store_noS!=null) store_no=Integer.parseInt(store_noS);
		%>
      <div class="payment-wrap">
      <div class="class-Dinfo">
        <p class="title-name">주문할 취미</p>
        <table>
          <tr>
            <td class="fix-info">
              <img class="" src="../image/<%=sList.get(store_no-1).getStore_img() %>" alt="" style="width:100px; height:80px;">
            </td>
            <td>
              <ul>
                <li><%=sList.get(store_no-1).getMem_id() %></li>
                <li><%=sList.get(store_no-1).getStore_title() %></li>
                <li>
                	<form name="form" method="get">
						<input type=hidden name="sell_price" value="<%=sList.get(store_no-1).getStore_price() %>"> 
						<input type="button" class="btn3" value=" - " onclick="del();">
						<input type="text" name="amount" value="1" size="3" onchange="change();" style=" width:15px; border: 1px solid white;">
						<input type="button" class="btn3" value=" + " onclick="add();"><br>
						<p style="margin:0px; padding:0px;">가격</p>
						<input type="text" name="sum" size="11" readonly style="border: 1px solid white; width: 42px; font-size:13px; color:#FA5882;">원
					</form>
                </li>
              </ul>
            </td>
          </tr>
        </table>
      </div>
	  <%
	  String searchid = (String)session.getAttribute("loginid");
	  Member md = new Member(); //로그인한 아이디에 해당하는 회원정보를 받아올 객체 ArrayList<Member> memlist = new
	  ArrayList<Member> mlist = new ArrayList<Member>(); //db에서 불러온 회원객체 리스트가 저장될 리스트
	  if(session.getAttribute("memList")!=null){ 
		  mlist = (ArrayList<Member>)session.getAttribute("memList"); //db에 있는 회원객체리스트를 전부 불러옴
	  } 
	  for(Member m : mlist){ //m : for문을 돌리기 위한 임시 회원객체
	  if(m.getMem_id().equals(searchid)){
		  md = m; //md에 내가 찾는 회원정보 입력
	   } 
	  }
	  %>
      <div class="class-Dinfo">
        <p class="title-name">주문자 정보</p>
        <table>
          <tr>
            <td class="fix-info">아이디</td>
            <td><input class="insert-info" type="text" name="" value="<%=md.getMem_id() %>"></td>
          </tr>
          <tr>
            <td class="fix-info">이름</td>
            <td><input class="insert-info" type="text" name="" value="<%=md.getMem_name() %>"></td>
          </tr>
          <tr>
            <td class="fix-info">이메일</td>
            <td><input class="insert-info" type="text" name="" value="<%=md.getMem_mail() %>"></td>
          </tr>
          <tr>
            <td class="fix-info">휴대폰 번호</td>
            <td><input class="insert-info" type="text" name="" value="<%=md.getMem_phone() %>"></td>
          </tr>
        </table>
        <p style="font-size:11px; color:gray;">*구매내역, 환불, 품절 등을 이메일과 sms문자로 안내해드립니다</p>
      </div>
	  <%
	  String uad = request.getParameter("uad"); 
	  session.setAttribute("userad", uad);
	  String searchad = (String)session.getAttribute("userad");
	  Addr ad = new Addr(); //로그인한 아이디에 해당하는 회원정보를 받아올 객체 ArrayList<Member> memlist = new
	  ArrayList<Addr> adlist = new ArrayList<Addr>(); //db에서 불러온 회원객체 리스트가 저장될 리스트
	  
	  if(session.getAttribute("addrList")!=null){ 
		 
	  } 
	  for(Addr a : adlist){ //m : for문을 돌리기 위한 임시 회원객체
	  if(a.getMem_id().equals(searchad)){
		  ad = a; //md에 내가 찾는 회원정보 입력
	   } 
	  }
	  %>
      <div class="mem-Dinfo">
        <p class="title-name">배송지 정보</p>
        <table>
          <tr>
            <td class="fix-info"></td>
            <td>
              <div style="font-size:15px;"><input type="radio" name="ch" value="">새로운 배송지 입력</div>
            </td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><div style="font-size:15px;"><input type="radio" name="ch" value="">배송지 불러오기</div></td>
          </tr>
          <tr>
            <td class="fix-info">배송지명</td>
            <td><input class="insert-info" type="text" name="" value="<%=ad.getAddr_title()%>"></td>
          </tr>
          <tr>
            <td class="fix-info">수령자명</td>
            <td><input class="insert-info" type="text" name="" value="<%=ad.getAddr_name()%>"></td>
          </tr>
          <tr>
            <td class="fix-info">휴대전화</td>
            <td><input class="insert-info" type="text" name="" value="<%=ad.getAddr_phone()%>"></td>
          </tr>
            <td class="fix-info">주소</td>
            <td> <input class="insert-info3" type="text" name="" value="<%=ad.getAddr_mailAddr()%>"> <button class="ad-btn" type="button" name="button">우편번호</button> </td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><input class="insert-info" type="text" name="" value="<%=ad.getAddr_address()%>"></td>
          </tr>
          <tr>
            <td class="fix-info"></td>
            <td><input class="insert-info" type="text" name="" value="<%=ad.getAddr_address2()%>"></td>
          </tr>
        </table>
      </div>

      <div class="del-Dinfo">
        <p class="title-name">결제 정보</p>
        <table>
          <tr>
            <td class="fix-info">마일리지</td>
            <td>
              <input class="insert-info3" type="text" name="" value="">
              <button class="mi-btn" type="button" name="button">적용</button>
            </td>
          </tr>
          <tr>
            <td class="fix-info"></td><td style="color:red; font-size:12px;">*현재 보유 마일리지 :<span></span>2000p</td>
          </tr>
          <tr>
            <td class="fix-info">상품금액</td>
            <td class="insert-info2"><%=sList.get(store_no-1).getStore_price() %></td>
          </tr>
          <tr>
            <td class="fix-info">할인금액</td>
            <td class="insert-info2">금액</td>
          </tr>
          <tr>
            <td class="fix-info">배송비</td>
            <td class="insert-info2">무료</td>
          </tr>
          <tr>
            <td class="fix-info">전체 주문금액</td>
            <td class="insert-info2">전체금액</td>
          </tr>
        </table>
      </div>
      <div class="payment-btn-wrap">
        <form class="" action="index.html" method="post">
          <button class="payment-btn" type="button" name="button">주문하기</button>
        </form>
      </div>
    </div>

  </body>
</html>
