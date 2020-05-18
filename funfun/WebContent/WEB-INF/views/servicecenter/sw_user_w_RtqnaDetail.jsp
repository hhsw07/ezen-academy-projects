<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/css/sw_user_w_notice.css" rel="stylesheet" />
<script>
	$(document).ready(function(){
		var mem_code = "${mem_code}";
		console.log(mem_code);
		$.ajax({
			type:"post",
			url:"${path}/rtqna.do?method=ajaxdetail&mem_code="+mem_code,
			dataType:"json",
			success:function(data){
				var list = data.list;
				$("h3").text("data.list.lenght:"+list.length);
				var show = $(".table").html();
				$.each(list,function(idx,rtqna){
					if(rtqna.rtqna_writer == mem_code){
						show += '<tr><td>'+rtqna.name+'</td>';
						show += '<td style="backgroundColor:red;">'+rtqna.rtqna_detail+'</td><td></td><td></td></tr>';
					}else{
						show += '<tr><td></td><td></td><td style="backgroundColor:yellow;">'+rtqna.rtqna_detail+'</td>';
						show += '<td>'+rtqna.name+'</td></tr>';
					}
				});
				$("h3").text(show);
				$(".table").html(show);
			},
			error:function(err){
				
			}
		});
	    
	})
	
	
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container noticeList" style="max-width:1200px; padding-top:100px">
	        <div class="collapse navbar-collapse text-center">
	            <h2>실시간 채팅 상담</h2>
		    </div>
		    <div>
		    	<table class="table table-bordered">
		    		<tr><th>회원명</th><th colspan="2"></th><th>관리자명</th></tr>
		    	</table>
		    </div>
		    <div>
		    	인풋 글작성 등록버튼<br>
		    	목록 버튼
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>