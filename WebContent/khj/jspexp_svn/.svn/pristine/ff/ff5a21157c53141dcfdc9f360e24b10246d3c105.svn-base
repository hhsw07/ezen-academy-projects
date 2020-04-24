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
		<th onclick="go(1)">전자</th>
		<th onclick="go(2)">식품</th>
		<th onclick="go(3)">의류</th>
		<th onclick="go(4)"
			style="background-color:yellow;">장바구니</th>
	</tr>
</table>
<%
String delCart[]=request.getParameterValues("chk");

ArrayList<Product> cartList=new ArrayList<Product>();
if(session.getAttribute("cartList")!=null){
	cartList= (ArrayList<Product>)session.getAttribute("cartList");
	if(delCart!=null&&delCart.length>0){
		for(int idx=delCart.length-1;idx>=0;idx--){
			cartList.remove(Integer.parseInt(delCart[idx]));
		}
	}
	session.setAttribute("cartList",cartList);
	
}	
%>
<form method="post">
<table border>
	<tr>
		<th>선택</th>
		<th>종류</th>
		<th>물건</th>
		<th>가격</th>
		<th>갯수</th>
	</tr>
	<%
	for(int idx=0;idx<cartList.size();idx++ ){
		Product prod=cartList.get(idx);
	%>
	<tr>
		<td><input type="checkbox" name="chk" size="3" value="<%=idx%>"/></td>
		<td><%=prod.getKind()%></td>
		<td><%=prod.getName()%></td>
		<td><%=prod.getPrice()%></td>
		<td><%=prod.getCnt()%></td>
	</tr>
	<%
	}
	%>	
	<tr><td colspan="4">
		<input type="button" value="장바구니삭제" id="delCart"/>
		<input type="button" value="결재하기" id="calcu"/>
	</td></tr>
</table>
</form>
<script type="text/javascript">
	function go(num){
		location.href="a0313_buy0"+num+".jsp";
	}
	var delCart = document.querySelector("#delCart");
	delCart.onclick=function(){
		document.querySelector("form").submit();
	};
	
</script>
</body>
</html>