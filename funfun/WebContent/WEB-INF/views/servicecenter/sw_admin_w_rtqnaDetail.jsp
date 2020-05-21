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
			    <div class="container tim-container noticeList" style="max-width:1200px; padding-top:100px">
			        <div class="collapse navbar-collapse text-center">
			            <h2>실시간 채팅 상담</h2>
				    </div>
				    <div>
				    	<table class="table table-bordered">
				    		<tr><th>회원명</th><th colspan="2"></th><th>관리자명</th></tr>
				    	</table>
				    </div>
				    <form method="post">
					    <input type="hidden" name="" value=""/>
					    <input type="hidden" name="" value=""/>
					    <input type="hidden" name="" value=""/>
					    <div class="row">
					    	<div class="col-md-10">
					    		<textarea></textarea>
					    	</div>
					    	<div class="col-md-1">
					    		<input type="button" class="btn-warning" value="등록">
					    	</div>
					    	<div class="col-md-1">
					    		<input type="button" class="btn-warning" value="목록">
					    	</div>
					    </div>
				    </form>
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
	
	$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/rtqna.do?method=admList");
		});
</script>
</html>

