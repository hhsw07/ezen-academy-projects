<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>장바구니 현황</h2>
<table border>
	<tr><th>물건명</th><th>갯수</th></tr>

<%
String del = request.getParameter("del");
if(del==null) del="";
Cookie[] cookies = request.getCookies();
for(Cookie ck:cookies){
	if(!ck.getName().equals("JSESSIONID")){
%>
	<tr><td><%=ck.getName()%></td>
		<td><%=ck.getValue()%></td></tr>
<%	}
	if(del.equals("y")){
		ck.setMaxAge(0);
		response.addCookie(ck);
	}
}
%>
</table>
<a href="a03_cartList.jsp">물건 담기!</a>
<a href="a04_cart.jsp?del=y">장바구니 삭제</a>

</body>
</html>