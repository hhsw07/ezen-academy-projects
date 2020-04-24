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
<h2>왼쪽메뉴</h2>
<ul>
	<li id="0">메인</li>
	<li id="1">잡화</li>
	<li id="2">식품류</li>
	<li id="3">관리</li>
</ul>
<%
	String schIdx=request.getParameter("ckIdx");
	int chIdx=0;
	if(schIdx!=null) chIdx=Integer.parseInt(request.getParameter("ckIdx"));
%>
<script type="text/javascript">
	var cidx=<%=chIdx%>;
	<%--li중에 check된 index는 배경색상을 노랑으로 변경--%>
	var list = document.querySelectorAll("li");
	list[cidx].style.backgroundColor="yellow";
	for(var idx=0;idx<4;idx++){
		<%-- li를 클릭시, 메인페이지 index와 현재 li사이에 있는 textnode를
			요청값으로 전송 처리..--%>
		list[idx].onclick=function(){
			location.href="a03_main.jsp?ckIdx="+this.id+"&txt="+this.innerHTML;
		}
	}

</script>
</body>
</html>