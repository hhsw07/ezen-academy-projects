<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String snoS = request.getParameter("sno"); 
int sno=0;
if(snoS!=null) sno=Integer.parseInt(snoS);
A03_ShoppingDao dao = new A03_ShoppingDao();
dao.deleteProduct(sno);
%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert("삭제되었습니다!");
	location.href="a03_productList.jsp";
</script>
<body>

</body>
</html>