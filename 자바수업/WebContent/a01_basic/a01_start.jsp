<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javaexp.z01_util.Person"
    %>
<%
Person p01 = new Person("홍길동", 25, "서울 신림동");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	 type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready( function(){
		$("h2").css("background-color","yellow");
	});
	
</script>
</head>
<body>
	<h2>이름:<%=p01.getName()  %></h2>
	<h2>나이:<%=p01.getAge()  %></h2>
	<h2>사는곳:<%=p01.getLoc()  %></h2>

</body>
</html>