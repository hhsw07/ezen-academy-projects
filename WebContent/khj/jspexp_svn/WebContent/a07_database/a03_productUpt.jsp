<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String snoS = request.getParameter("sno"); 
int sno=0;
if(snoS!=null) sno=Integer.parseInt(snoS);
String kind = request.getParameter("kind"); if(kind==null) kind="";
String name = request.getParameter("name"); if(name==null) name="";
String priceS = request.getParameter("price"); 
int price=0;
if(priceS!=null) price=Integer.parseInt(priceS);
String cntS = request.getParameter("cnt"); 
int cnt=0;
if(cntS!=null) cnt=Integer.parseInt(cntS);
Product upt = new Product(sno,kind,name,price,cnt);
A03_ShoppingDao dao = new A03_ShoppingDao();
dao.updateProduct(upt);
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<form method="post" action="a03_productList.jsp">
		<input type="hidden" name="sno" 
			value="<%=sno%>"/>
	</form>
</body>
<script type="text/javascript">
	alert("수정되었습니다!");
	// 화면에 조회된 데이터 확인..
	
	document.querySelector("form").submit();
</script>

</html>