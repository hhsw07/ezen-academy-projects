<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
//  DB 처리 후, list화면으로 이동
String kind = request.getParameter("kind"); if(kind==null) kind="";
String name = request.getParameter("name"); if(name==null) name="";
int price=0;
String priceS = request.getParameter("price"); 
if(priceS!=null&&!priceS.equals("")) price=Integer.parseInt(priceS);
int cnt=0;
String cntS = request.getParameter("cnt"); 
if(cntS!=null&&!cntS.equals("")) cnt=Integer.parseInt(cntS);

Product ins = new Product(kind,name,price,cnt);
A03_ShoppingDao dao = new A03_ShoppingDao();
// DB 등록 처리 완료..
dao.insertProduct(ins);
%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert("등록했습니다.");
	location.href="a03_productList.jsp";
</script>
<body>

</body>
</html>