<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
session을 이용하여, 메뉴별로 물건을 장바구니에 담고, 
최종 물건을 추가 삭제 처리하여, 결재 처리하는 프로그램을 작성해
보세요..
	전자    식품    의류    장바구니 
	==> 페이지 이동하며 장바구니 담기 처리
	==> 장바구니 항목에서 삭제 처리 및 최종 물건 구매 처리	
	#전자
	종류 물건명  가격  갯수
	전자 [   ]  [  ] [  ]
	   [장바구니담기]
	#장바구니
	선택 종류 물건명  가격 갯수
	[]   @@@  @@@    @@@  @@@
	[]   @@@  @@@    @@@  @@@
	[]   @@@  @@@    @@@  @@@
	[장바구니삭제] [최종결재]
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<table>
	<tr>
		<th onclick="go(1)" 
			>전자</th>
		<th onclick="go(2)"
		    style="background-color:yellow;">식품</th>
		<th onclick="go(3)">의류</th>
		<th onclick="go(4)">장바구니</th>
	</tr>
</table>
<form method="post">
<table border>
	<tr>
		<th>종류</th>
		<th>물건</th>
		<th>가격</th>
		<th>갯수</th>
	</tr>
	<tr>
		<td><input name="kind" size="3" value="식품"/></td>
		<td><input name="name" size="3" value=""/></td>
		<td><input name="price" size="3" value="0"/></td>
		<td><input name="cnt" size="3" value="0"/></td>
	</tr>	
	<tr><td colspan="4">
		<input type="button" value="장바구니담기" id="addCart"/>
		<input type="button" value="장바구니보기" onclick="go(4)" />
	</td></tr>
</table>
</form>
<script type="text/javascript">
	function go(num){
		location.href="a0313_buy0"+num+".jsp";
	}
</script>
</body><%
String kind = request.getParameter("kind");
String name = request.getParameter("name");
String priceS = request.getParameter("price");
String cntS = request.getParameter("cnt");
if(kind==null) kind=""; 
if(name==null) name="";
int price=0; if(priceS!=null) price=Integer.parseInt(priceS); 
int cnt=0; if(cntS!=null) cnt=Integer.parseInt(cntS); 

if(!kind.equals("")){
	// session 값이 있을 때와 없을 때는 구분 하여 처리..
	ArrayList<Product> cartList=null;
	if(session.getAttribute("cartList")!=null){
		cartList= (ArrayList<Product>)session.getAttribute("cartList");
		
 	}else{
		cartList = new ArrayList<Product>();
 	}
	// 카트에 추가 처리..
	cartList.add(new Product(kind,name,price,cnt));
	session.setAttribute("cartList",cartList);
}



%>

<script type="text/javascript">
	function go(num){
		location.href="a0313_buy0"+num+".jsp";
	}
	var addCart = document.querySelector("#addCart");
	addCart.onclick=function(){
		document.querySelector("form").submit();
	}
	
</script>
</html>