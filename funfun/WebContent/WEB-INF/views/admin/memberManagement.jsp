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
	.sctable td {cursor:pointer;}
	.text-right{text-align:right;}
	.text-left{text-align:left;}
	.text-center{text-align:center;}
	
	
	.pagination {
	  display: inline-block;
	  padding-left: 0;
	  margin: 20px 0;
	  border-radius: 4px; }

	.pagination > li {
	  display: inline;	}

	.pagination > li > a,
	.pagination > li > span {
	  position: relative;
	  float: left;
	  padding: 6px 12px;
	  margin-left: -1px;
	  line-height: 1.428571429;
	  text-decoration: none;
	  background-color: #ffffff;
	  border: 1px solid #dddddd; }
	
	.pagination > li:first-child > a,
	.pagination > li:first-child > span {
	  margin-left: 0;
	  border-bottom-left-radius: 4px;
	  border-top-left-radius: 4px;	}
	
	.pagination > li:last-child > a,
	.pagination > li:last-child > span {
	  border-top-right-radius: 4px;
	  border-bottom-right-radius: 4px;	}
	
	.pagination > li > a:hover,
	.pagination > li > span:hover,
	.pagination > li > a:focus,
	.pagination > li > span:focus {
	  background-color: #eeeeee; }
	
	.pagination.pagination-no-border > li > a,
	.pagination.pagination-no-border > li > span {
	  border: 0; }
	
	.pagination > li > a, .pagination > li > span, .pagination > li:first-child > a, .pagination > li:first-child > span, .pagination > li:last-child > a, .pagination > li:last-child > span {
	  border-radius: 50%;
	  margin: 0 2px;
	  color: #777777; }
	
	.pagination > li.active > a, .pagination > li.active > span, .pagination > li.active > a:hover, .pagination > li.active > span:hover, .pagination > li.active > a:focus, .pagination > li.active > span:focus {
	  background-color: #ffc107;
	  border: 0;
	  color: #FFFFFF;
	  padding: 7px 13px; }

</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("#pageSize").change(function(){
	    	$("#curPage").val(1);	// 페이지크기를 바꾸면 초기 첫페이지가 나오도록 처리
			$("form").submit();
		});
		
		// ajax
		$.ajax({
			type:"post",
			url:"${path}/",
			dataType:"json",
			success:function(data){
				var list = data.list;
				var show = $(".memtable").html();
				$.each(list,function(idx,AdminMember)){
					
				});
				$(".memtable").html(show);
			},
			error:function(err){
				console.log("에러:"+err);
			}
		});
		
		
	})
	function go(mem_code){
		// 회원 detail 화면
		//$(location).attr("href","${path}/notice.do?method=detail&noti_code="+noti_code);
	}
	function goPage(no){
		$("#curPage").val(no);
		$("form").submit();
	}
</script>
</head>
<body class="sb-nav-fixed">
    <%@ include file="/adminTemplate/navi.jsp" %>
    <div id="layoutSidenav">
        <%@ include file="/adminTemplate/leftSidebar.jsp" %>
        <div id="layoutSidenav_content">
            <div class="main">
			    <div class="container tim-container AdminMemberList" style="max-width:1200px;">
			        <div class="title" style="margin-bottom:30px;">
				        <h2>회원 목록</h2>
				    </div>
			    	<form method="post">
				    	<input type="hidden" name="curPage" value="${paging.curPage}"/>
				    	<div class="row">
				        	<div class="text-left col-sm-3 ">총건수 : ${paging.count}건</div> 
				        	<div class="text-right col-sm-9">페이지수 : 
					        	<select name="pageSize" value="${paging.pageSize}">
					        		<option value="5">5건</option>
					        		<option value="10">10건</option>
					        		<option value="20">20건</option>
					        	</select></div>
						</div>
					</form>
					<div class="memList">
				        <table class="table table-hover memtable">
				        	<col width="">
				        	<col width="">
				        	<col width="">
				        	<col width="">
				        	<col width="">
				        	<tr><th class="text-center">회원번호</th>
				        		<th>이름</th>
				        		<th>이메일</th>
				        		<th>휴대폰</th>
				        		<th>관심카테고리</th></tr>
				        	<tr><td>1</td>
				        		<td>홍길동</td>
				        		<td>himan77@gmail.com</td>
				        		<td>01023625362</td>
				        		<td>홈리빙·디자인소품,공연·컬쳐,출판,반려동물</td></tr>
				        	<tr><td>1</td>
				        		<td>홍길동</td>
				        		<td>himan77@gmail.com</td>
				        		<td>01023625362</td>
				        		<td>홈리빙·디자인소품,공연·컬쳐,출판,반려동물</td></tr>
				        </table>
					</div>
			        <div class="text-center">
				        <ul class="pagination ct-orange"> 
							<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
							<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
								<li class="${paging.curPage==cnt?'active':'' }"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
							</c:forEach>
							<li><a href="javascript:goPage(${paging.endBlock==paging.pageCount?paging.pageCount:paging.endBlock+1})">&raquo;</a></li>
						</ul>
			        </div>
			    </div>
			</div>    
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
</html>