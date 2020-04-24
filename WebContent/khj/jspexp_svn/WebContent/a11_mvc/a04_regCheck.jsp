<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		var id = "${param.id}";
		// id를 입력하고, controller단 호출 후..
		if(id!=""){
			var isMember = "${isMember}";
			if(isMember=="true"){ /// true이면..
				alert("등록된 id입니다!");
				$("[name=id]").focus();
			}else{
				alert("등록가능합니다.")
				$("[name=id]").val(id);
			}
		}
		$("h2").text("등록여부 확인");
		$("#regCkBtn").click(function(){
			//alert($("[name=id]").val());
			$("form").submit();
		});
	});
</script>
</head>
<body>
<h2 align="center"></h2>
<form method="post">
<table align="center">
	<tr><th>아이디</th>
	<td>
		<input type="text" name="id"/>
		<input type="button" value="등록확인" 
			id="regCkBtn" />
		</td></tr>
</table>
</form>
</body>
</html>