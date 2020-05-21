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
				        <h2>공지사항 등록</h2>
				    </div>
			        <div>
				    	<form class="form-group" method="post">
					    	<input type="hidden" name="admin_code" value="1001" />
					    	<table class="table table-bordered">
					        	<col style="width:15%">
					        	<col style="width:85%">
					        	<tr><th>제목</th>
					        		<td colspan="3"><input type="text" class="form-control" name="noti_title" placeholder="공지사항 제목" /></td></tr>
					        	<tr><th>중요</th>
					        		<td colspan="3">
					        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="Y" />Y</label>
					        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="N" checked/>N</label></td></tr>
					        	<tr><th>내용</th>
					        		<td colspan="3">
					        			<textarea class="form-control" name="noti_detail" placeholder="공지사항 내용" style="resize: none;" rows="20"></textarea></td></tr>
					        </table>
				        </form>
				    </div>
				    <div class="text-right">
				    	<button class="btn btn-fill btn-warning insertNoti">등록</button>
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
		var noti_title="${notice.noti_title}";
		if(noti_title != ""){
			if(!confirm("추가로 등록하시겠습니까?")){
				$(location).attr("href","${path}/notice.do?method=admList");
			}
		}
		
		
		$(".insertNoti").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("form").attr("action","${path}/notice.do?method=insert");
				$("form").submit();
			}
		});
		
		$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/notice.do?method=admList");
		});
		
	})
</script>
</html>