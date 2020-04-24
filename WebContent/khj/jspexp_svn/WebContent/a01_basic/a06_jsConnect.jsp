<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1></h1>
</body>
<%--
jsp는 서버에서 자바코드를 통해서 일단 만들어진 html을 client 전달하여
처리한다. js, css, html 에서 scriptlet, expression을 통해서 할당된
java코드를 결과적으로 html로 만들어 전달한 형태이기에, java코드는 
최종 html로 받은 화면에서는 볼 수 없다.
 --%>
<script type="text/javascript">
<%
// a06_jsConnect.jsp?name=홍길동
String name=request.getParameter("name");
if(name==null) name="매개값 없음";
%>
	document.querySelector("h1").innerHTML="<%=name%>";

</script>
</html>



