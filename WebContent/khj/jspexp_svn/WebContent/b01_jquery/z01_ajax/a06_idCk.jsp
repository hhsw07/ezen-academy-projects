<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
		$("h2").text("등록된 id확인");
		var xhr = new XMLHttpRequest();
		
		
		$("#id").keyup(function(){
			var id=$(this).val();
			var len = id.length;
			if(len<5||len>=8){
				$("span").text("유효한 아이디는 5~8자입니다.");
			}else{
				// 서버에 비동기 데이터 확인 처리..
				// servlet를 통해서 호출..
				xhr.open("get","${path}/ckmem?id="+id,true);
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4&&xhr.status==200){
						var obj = eval("("+xhr.responseText+")");
						var isInValid=obj.isInvalid;
						if(isInValid){
							$("span").text("등록된 아이디가 있습니다.");
						}else{
							$("span").text("등록가능한 아이디 입니다!");
						}					
					}
				};
				xhr.send();

			}
		});
	});
</script>
</head>

<body>
<h2 align='center'></h2>
<p align="center">아이디:<input id="id"/><span></span></p>

</body>
</html>