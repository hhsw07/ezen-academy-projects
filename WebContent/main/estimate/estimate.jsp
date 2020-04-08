<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, hsw.* "
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<style>
	#e_root{margin:auto; width:1000px;}
	#e_top{width:100%; height:100px; background-color:yellow;}
	#e_nav{width:60%; height:400px; background-color:pink; float:left;}
	#e_cart{width:40%; height:400px; background-color:green; float:left;}
	#e_bottom{width:100%; height:100px; clear:both; background-color:gray;}
</style>
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("견적짜기");
	});
</script>
</head>

<body>
<h2></h2>
<div id="e_root">
	<div id="e_top">top 내용</div>
	<div>
	<div id="e_nav">nav 내용</div>
	<div id="e_cart">cart 내용</div>
	</div>
	<div id="e_bottom">bottom 내용</div>
</div>
</body>
</html>