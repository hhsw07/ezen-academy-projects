<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>a01_start에서 받은 값 출력!!</h1>
<!-- 
	name="id" value="himan"
	name="pass" value="7777"
	의 form 데이터를 제출(submit 했을 때)
	z01_show.jsp?id=himan&pass=7777
-->
	<h2>받은값:id:${param.id}</h2>
	<h2>받은값:pass:${param.pass}</h2>

</body>
</html>