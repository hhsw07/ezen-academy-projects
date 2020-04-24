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
<%
Product p1 = new Product("사과",3000,2);
Product p2 = new Product("바나나",4000,3);
pageContext.setAttribute("p1", p1);
session.setAttribute("p2", p2);
%> 
<body>
<!-- 
# 페이지 범위로 구매할 물건명을 할당하고, 
세션 범위로 구매할 물건명, 가격, 갯수를 할당하고,
1. 현재 페이지에서 로딩..
2. link한 다음 페이지에서 페이지범위로/세션범위로 설정한
	물건명, 가격, 갯수를 출력하세요.
 -->


<% 
// 현재 페이지에서 호출..
Product call1 = (Product)pageContext.getAttribute("p1");
Product call2 = (Product)session.getAttribute("p2");
%>
<h2>페이지범위:<%=call1.getName()%>,<%=call1.getPrice()%>,<%=call1.getCnt()%></h2>
<h2>세션범위:<%=call2.getName()%>,<%=call2.getPrice()%>,<%=call2.getCnt()%></h2>
<a href="a04_goPage.jsp">페이지 이동</a> 
 
</body>
</html>

