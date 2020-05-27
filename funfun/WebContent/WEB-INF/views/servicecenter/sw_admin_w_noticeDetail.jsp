<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>FunFun - 템플릿</title>
<link href="${path }/adminTemplate/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<style type="text/css">
	div {cursor:default;}
</style>
</head>
<body class="sb-nav-fixed">
    <%@ include file="/adminTemplate/navi.jsp" %>
    <div id="layoutSidenav">
        <%@ include file="/adminTemplate/leftSidebar.jsp" %>
        <div id="layoutSidenav_content">
            <main>
			<div class="main">
			    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
			        <div class="sctitle">
				        <h2>공지사항 상세</h2>
				    </div>
			        <div>
				    	<form class="form-group" method="post">
					    	<table class="table table-bordered">
					        	<col style="width:15%">
					        	<col style="width:35%">
					        	<col style="width:15%">
					        	<col style="width:35%">
					        	<tr><th>번호</th>
					        		<td><input type="hidden" name="noti_code" value="${notice.noti_code}"/>${notice.noti_code}</td>
					        		<th>등록일</th>
					        		<td>${notice.noti_reg_date}</td></tr>
					        	<tr><th rowspan="2">중요</th>
					        		<td rowspan="2">
					        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="Y" ${notice.noti_ck=="Y"?"checked":""} />Y</label>
					        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="N" ${notice.noti_ck!="Y"?"checked":""}/>N</label></td>
					        		<th>수정일</th>
					        		<td>${not empty notice.noti_upt_date?notice.noti_upt_date:"없음"}</td></tr>
					        	<tr><th>작성자</th>
					        		<td><input type="hidden" name="admin_code" value="${notice.admin_code}"/>${notice.admin_name}</td></tr>
					        	<tr><th>제목</th>
					        		<td colspan="3"><input type="text" class="form-control" name="noti_title" placeholder="공지제목" value="${notice.noti_title}"/></td></tr>
					        	<tr><th>내용</th>
					        		<td colspan="3">
					        			<textarea class="form-control" rows="20" name="noti_detail" placeholder="공지내용" style="resize:none;" >${notice.noti_detail}</textarea></td></tr>
					        </table>
				        </form>
				    </div>
				    <div class="text-right">
				    	<button class="btn btn-fill btn-warning updateNoti">수정</button>
				    	<button class="btn btn-fill btn-warning deleteNoti">삭제</button>
				    	<button class="btn btn-fill btn-warning goList">목록</button>
				    </div>
			    </div>
			</div>
			<!-- end main -->
			</main>
            <%@ include file="/adminTemplate/footer.jsp" %>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="${path }/adminTemplate/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="${path }/adminTemplate/assets/demo/chart-area-demo.js"></script>
    <script src="${path }/adminTemplate/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="${path }/adminTemplate/assets/demo/datatables-demo.js"></script>
</body>
<script>
	$(document).ready(function(){
		
		$(".updateNoti").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","${path}/notice.do?method=update");
				$("form").submit();
			}
		});
		$(".deleteNoti").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$(location).attr("href","${path}/notice.do?method=delete&noti_code=${notice.noti_code}");
			}
		});
		$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/notice.do?method=admList");
		});
		
	})
</script>
</html>