<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
// 현재 페이지에서 호출..
Product call1 = (Product)pageContext.getAttribute("p1");
if(call1==null) call1 = new Product();
Product call2 = (Product)session.getAttribute("p2");
if(call2==null) call2 = new Product();
%>
<h1>이동한 페이지에서!!</h1>
<h2>페이지범위:<%=call1.getName()%>,<%=call1.getPrice()%>,<%=call1.getCnt()%></h2>
<h2>세션범위:<%=call2.getName()%>,<%=call2.getPrice()%>,<%=call2.getCnt()%></h2>
</body>
</html>