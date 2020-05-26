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
<script type="text/javascript">

$(document).ready(function(){
	
})

</script>
</head>

<body>
 <div class="col-sm-2" style="padding-top:30px;height:100%">
	<div class="panel-group">
	<div class="panel panel-default">
	<div class="panel-body">
	
	<span class="sub_gray_font">
	${makerInfo.maker_name }님의<br> 
	프로젝트
	</span>
	
	</div>
	</div>
		<div class="panel panel-default">
			<div class="panel-body sub_gray_font proCancel" style="font-size:1.1em;">
			프로젝트 신청 취소
			</div>
			<div class="panel-body sub_gray_font proCurrnet" style="font-size:1.1em;">
			프로젝트 현황
			</div>
			<div class="panel-body sub_gray_font proQnAManage" style="font-size:1.1em;">
			프로젝트 문의 관리
			</div>
			<div class="panel panel-default">
				<div class="panel-body">
				 	<details open>
				    <summary class="sub_gray_font" style="font-size:1.1em;">스토어 등록<br><br></summary>
					<ul style="list-style:none;line-height:3em">
				  		<li class="sub_gray_font ">기본 정보</li>
				  		<li class="sub_gray_font ">옵션 설계</li>
					</ul>
			  		</details> 	
				</div>
			</div>
			<div class="panel-body sub_gray_font storeOrderManage" style="font-size:1.1em;">
			스토어 주문 관리
			</div>
			<div class="panel-body sub_gray_font storeQnAManage" style="font-size:1.1em;">
			스토어 문의 관리
			</div>
		</div>
	</div>
</div>
</body>
</html>