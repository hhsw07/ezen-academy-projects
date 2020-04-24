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
<%--
   장바구니
[] 물건명
[] 사과
[] 바나나
[] 딸기
[최종결재목록] ==> 클릭시,
  결제목록
  ###
  ###
 --%>
<%
ArrayList<String> clist = new ArrayList<String>();
clist.add("사과");
clist.add("바나나");
clist.add("딸기");
%> 
<h2>장바구니</h2>
<form method="post" action="a0310_cart2.jsp">
<input type="checkbox"/>물건명<br>
-----------------<br>
<input type="checkbox" name="ckProd" value="사과"/>사과<br>
<input type="checkbox" name="ckProd" value="바나나"/>바나나<br>
<input type="checkbox" name="ckProd" value="딸기"/>딸기<br>
<input type="checkbox" name="ckProd" value="오렌지"/>오렌지<br>
<input type="checkbox" name="ckProd" value="수박"/>수박<br>
<input type="submit" value="최종결재목록"/>
</form> 
 

</body>
</html>