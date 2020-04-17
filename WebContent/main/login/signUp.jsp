<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"

    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.all-wrap{margin:100px 0;}
.wrap{width:1080px; margin:0 auto; align:center;}
		table tr td,th{padding:5px 10px;}
		table{cursor:pointer;}
		.logo-text{font-family:sans-serif; font-size:60px; color:#F2B809; font-weight:bold;}
		img{width:150px; height:130px; margin-bottom:40px;}
.input-box{width:400px; height:40px; padding:5px;}
.reg-box{width:556px; height:70px; margin-top:20px; font-size:30px;
		background-color:black; color:white;
		border:3px solid purple;
		cursor:pointer;}
		
</style>
<title>Insert title here</title>

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
			$("span").text("유효한 아이디는 8~16자입니다.");
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

<jsp:include page="../../main/top.jsp"/>

<div class="all-wrap">
	<div class="wrap">
	<form method="post">
		<table align="center">
			<tr>
				<th colspan="3" class="logo-text">PC냥이</th>
			</tr>
			<tr>
				<th colspan="3"><img src="image/main/logo.png"></th>
			</tr>
			<tr><th colspan="3" style="font-size:30px; padding-bottom:30px;">회원가입</th></tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" class="input-box" id="id" placeholder="아이디" /></td>
			</tr>
			
			<tr>
				<td></td><td><span></span></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td><input type="text" class="input-box" placeholder="비밀번호" /></td>
			</tr>
			<tr>
				<td>비밀번호 재입력</td>
				<td><input type="text" class="input-box" placeholder="비밀번호 재입력" /></td>
			</tr>
			
			<tr>
				<td></td><td>ajax비밀번호 일치확인란</td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" class="input-box" placeholder="이름" /></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" class="input-box" placeholder="'-'제외 6자리(ex:901102)" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" class="input-box" placeholder="이메일" /></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" class="input-box" placeholder="'-'제외 11자리" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" class="reg-box" value="가입하기"/></th>
			</tr>
			
		</table>
	</form>
	</div>
</div>



<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>