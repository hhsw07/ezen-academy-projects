<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
ex) useBean을 활용하여
	물건종류 물건명  가격  갯수를 dao에 있는 내용을 
	등록 처리하고, 등록된 내용을 list하세요. 
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<jsp:useBean id="prod" class="jspexp.z01_vo.Product" scope="page"/>
<jsp:setProperty property="*" name="prod"/>
<%
	System.out.println("이름:"+prod.getName());
	A03_ShoppingDao dao = new A03_ShoppingDao();
	if(prod.getName()!=null){
		dao.insertProduct(prod);	
	}
%>	
	<h2>Bean을 활용한 등록처리</h2>
	<form method="post">
	<table>
		<tr><th>물건종류</th><td><input name="kind"/></td></tr>
		<tr><th>물건명</th><td><input name="name"/></td></tr>
		<tr><th>물건가격</th><td><input name="price"/></td></tr>
		<tr><th>물건갯수</th><td><input name="cnt"/></td></tr>
		<tr><td colspan="2"><input type="submit" value="등록"/></td></tr>
	</table>
	</form>
	<h2>등록된 물품 내용!</h2>
	<table>
		<tr><th>종류</th><th>물건명</th><th>가격</th><th>갯수</th></tr>
		<%for(Product pro:dao.plist()){%>
		<tr><td><%=pro.getKind() %></td><td><%=pro.getName() %></td>
			<td><%=pro.getPrice() %></td><td><%=pro.getCnt() %></td></tr>
		<%} %>
	</table>
	
	
</body>
</html>