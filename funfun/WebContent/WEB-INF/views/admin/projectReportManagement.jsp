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
<link rel="stylesheet" href="${path}/css/kb_w_admin_storeList.css">
<script src="http://code.jquery.com/jquery-3.5.1.js"></script>
<link href="${path }/adminTemplate/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://unpkg.com/vue/dist/vue.js" type="text/javascript"></script>
    <script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
 <script>
        $(document).ready(function(){
            $(".tr_btn").click(function(){
                $("#myModal").modal("show");
            })

            $("#appr_Btn").click(function(){
                $("#appr_modal").modal("show");
            })
        })
        
        function goPage(no){
        	$("[name=curPage]").val(no);
			$("#cntForm").submit();
		}
    </script>
</head>
<body class="sb-nav-fixed">
    <%@ include file="/adminTemplate/navi.jsp" %>
    <div id="layoutSidenav">
        <%@ include file="/adminTemplate/leftSidebar.jsp" %>
        <div id="layoutSidenav_content">
            <main style="width:1000px; margin-left:auto; margin-right:auto" id="store_main">
            <!-- 메인태그 안의 내용을 수정해서 작성하세요 -->
                <h1 id="list_Title">프로젝트 신고목록</h1>
        <div id="list_Div">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>프로젝트명</th>
                        <th>신고자</th>
                        <th>신고날짜</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="report" items="${report}">
	                    <tr class="tr_btn" data-target="#myModal" ">
	                        <td>${report.report_code}</td>
	                        <td>${report.pro_title}</td>
	                        <td>${report.mem_name}</td>
	                        <td>${report.report_date}</td>
	                        <td>${report.report_curr}</td>
	                    </tr>
                 	</c:forEach>
                </tbody>
            </table>
        </div>
		<form id="cntForm" method="post">
			<input type="hidden" name="curPage" value="${paging.curPage}"/>
		</form>
         <div class="text-center" style="width:100%; text-align:center">
		         <ul class="pagination ct-orange"> 
					<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
						<li class="${paging.curPage==cnt?'active':''}"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${paging.endBlock==paging.pageCount?paging.pageCount:paging.endBlock+1})">&raquo;</a></li>
				</ul>
	        </div>
       		
          
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
	
</script>
</html>