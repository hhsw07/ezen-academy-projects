<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
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
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<%--
	ex) 데이터 클릭시, 상세데이터 로딩 처리. 
		div 화면에 가져오기..
		- sch proc로 넘기고 처리.
 --%>
<%
A03_ShoppingDao dao = new A03_ShoppingDao();
// 공통 및 전역 변수 선언.
String name="";
int frPrice=0;
int toPrice=999999;
Product sch = new Product();
//System.out.println(dao.plist().size());
name=request.getParameter("name"); if(name==null) name="";
String frPriceS=request.getParameter("frPrice");
if(frPriceS!=null) frPrice=Integer.parseInt(frPriceS);
String toPriceS=request.getParameter("toPrice");
if(toPriceS!=null) toPrice=Integer.parseInt(toPriceS);
sch = new Product(frPrice, toPrice, name);

%>
<body>
<h2 align="center">물건 현황</h2>
<form method="post" id="schForm">
	<input type="hidden" name="sno" value="0"/>
<table align="center">
	<tr><th>물건명</th>
		<td><input type="text" name="name" value="<%=name%>"/></td></tr>
	<tr><th>가격</th>
		<td> <!-- frPrice toPrice -->
			<input type="text" name="frPrice" size="3" value="<%=frPrice%>"/>~
			<input type="text" name="toPrice" size="3" value="<%=toPrice%>"/>
		</td></tr>
	<tr><td colspan="2" style="text-align:right">
			<input type="submit" value="검색"/>
			<input type="button" value="등록" id="regBtn"/>
			</td></tr>
</table>
</form>
<table align="center">
	<tr>
		<th>물건번호</th>
		<th>물건종류</th>
		<th>물건명</th>
		<th>가격</th>
		<th>재고량</th>
	</tr>
	<%for(Product prod:dao.plist(sch)){%>
	<tr ondblclick="detail(<%=prod.getSno()%>)">
		<td><%=prod.getSno()%></td>
		<td><%=prod.getKind()%></td>
		<td><%=prod.getName()%></td>
		<td><%=prod.getPrice()%></td>
		<td><%=prod.getCnt()%></td>
	</tr>
	<%}%>
<!-- 
회원가입현황리스트
회원id, 비밀번호, 이름, 포인트, 권한, 등록일
A04_MemberDao.java
 -->
</table>
<div id="regDiv" 
	style="width:50%;height:50%;background-color:
		white;visibility:hidden;border:1px solid green;
		position:absolute;top:25%;left:25%;">
	<h2 align="center">물품 등록</h2>
	<form method="post" id="regForm" 
		action="a03_productInsert.jsp">
	<table align="center">
		<tr><th>물건종류</th>
			<td>
				<input type="text" name="kind"/>
			</td></tr>
		<tr><th>물건명</th>
			<td>
				<input type="text" name="name"/>
			</td></tr>
		<tr><th>가격</th>
			<td>
				<input type="text" name="price"/>
			</td></tr>
		<tr><th>재고량</th>
			<td>
				<input type="text" name="cnt"/>
			</td></tr>			
		<tr><td colspan="2">
				<input type="submit" value="등록"/>
				<input type="button" value="창닫기" 
					 onclick="javascript:closeWin('#regDiv')"/>
			</td></tr>
	</table>
	</form>	
</div>
<%
String snoS = request.getParameter("sno");
System.out.println("##"+snoS);
int sno = 0;
if(snoS!=null&&!snoS.equals("")) sno=Integer.parseInt(snoS);
System.out.println("상세 조회 :"+sno);
Product dt = dao.getProduct(sno);


%>
<div id="detailDiv" 
	style="width:50%;height:60%;background-color:
		white;visibility:hidden;border:1px solid green;
		position:absolute;top:25%;left:25%;">
	<h2 align="center">물품 상세데이터 (<%=sno%>)</h2>
	<form method="post" id="uptForm" 
		action="a03_productUpt.jsp">
		<input type="hidden" name="proc" value="upt"/>
	<table align="center">
		<tr><th>물건번호</th>
			<td>
				<input type="text" name="sno" value="<%=dt.getSno()%>"/>
			</td></tr>	
		<tr><th>물건종류</th>
			<td>
				<input type="text" name="kind"  value="<%=dt.getKind()%>"/>
			</td></tr>
		<tr><th>물건명</th>
			<td>
				<input type="text" name="name"  value="<%=dt.getName()%>"/>
			</td></tr>
		<tr><th>가격</th>
			<td>
				<input type="text" name="price"  value="<%=dt.getPrice()%>"/>
			</td></tr>
		<tr><th>재고량</th>
			<td>
				<input type="text" name="cnt"  value="<%=dt.getCnt()%>"/>
			</td></tr>			
		<tr><td colspan="2">
				<input type="submit" value="수정"/>
				<input type="button" value="삭제" onclick="del(<%=dt.getSno()%>)"/>
				<input type="button" value="창닫기" 
					 onclick="javascript:closeWin('#detailDiv')"/>
			</td></tr>
	</table>
	</form>	
</div>
<script type="text/javascript">
var regBtn = document.querySelector("#regBtn");
var regDiv = document.querySelector("#regDiv");
var detailDiv = document.querySelector("#detailDiv");
regBtn.onclick=function(){
	regDiv.style.visibility="visible";
}
function closeWin(chWin){
	document.querySelector(chWin).style.visibility="hidden";
}
function detail(sno){
	document.querySelector("#schForm [name=sno]").value=sno;
	//alert("넘긴값:"+document.querySelector("#schForm [name=sno]").value);
	document.querySelector("#schForm").submit();
}
var sno= <%=sno%>;
if(sno!=0){
	detailDiv.style.visibility="visible";
}
function del(sno){
	if(confirm("삭제 하시겠습니까?")){
		location.href="a03_productDelete.jsp?sno="+sno;
	}
}

</script>
</body>
</html>





