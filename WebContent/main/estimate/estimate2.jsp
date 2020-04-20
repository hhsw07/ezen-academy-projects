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
<!-- <link rel="stylesheet" href="${path}/a00_com/a00_com.css" > -->
<style>
	body{margin:0 auto; padding:0; width:100%;}
    a{text-decoration:none;}
    ul li{list-style:none;}
	table{width:100%;}
	.ordR{text-align:right;}
	.ordL{text-align:left;}
	
	
	#e_nav_list {margin-top:100px; width:95%; height:400px; border-right:1px solid black; overflow:auto;}
	#e_nav_list td{border-bottom:1px solid black;}
	
</style>
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script type="text/javascript">
	var proc = "${param.proc}";
	var parts_mc = "${parts_mc}";
	var parts_com = "${parts_com}";
	
	$(document).ready(function(){
<%--

--%>
		$("h2").text("견적컴퓨터");
		var w_size = 5; // 화면에 나오는 글수
		var p_size = 5; // 한번에보이는 페이지수
		var t_size = "${fn:length(plist)}"; // 글의 최대개수
		console.log(t_size);
		var i_page = "${param.i_page}"; // 현재 위치한 페이지
		if(i_page == "") i_page = 1;
			
	});

	 	
	
</script>
</head>
<body>
<div>
	<div id="e_nav_list">
		<table>
			<c:forEach var="prod" items="${plist}" varStatus="state">
					<c:if  test="${state.count < 6}">	
						<tr>
							<td><img src="${path}/image/parts/${prod.parts_img}" style="width:60px;"/></td>
							<td>${prod.parts_name}</td>
							<td><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원</td>
							<td>idx${state.index} : cnt${state.count}</td>
							<td class="ad">end${state.end.parts_name } :s${status.begin} : js</td>
							<td>${fn:length(plist)}</td>
						</tr>
					</c:if>
			</c:forEach>
			<tr><td colspan="6"> 1 2 3 4 5 </td></tr>
		</table>
	</div>
</div>
</body>
</html>