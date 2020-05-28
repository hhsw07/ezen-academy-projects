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
			        <div class="protitle" style="margin:150px 0 30px;">
				        <h2>메이커 상세보기</h2>
				    </div>
			        <div>
				    	<form class="form-group" method="post">
					    	<table class="table table-bordered">
					        	<col style="width:20%">
					        	<col style="width:30%">
					        	<col style="width:20%">
					        	<col style="width:30%">
					        	<!-- 메이커번호, 메이커명, 이메일, 메이커상태,  -->
					        	<!-- 메이커프로필, 메이커구분, 메이커 통장사본이미지, 회원명 -->
					        	
					        	<tr><th>메이커 번호</th>
					        		<td>${AdminMaker.maker_code}</td>
					        		<th>메이커 상태</th>
					        		<td>${not empty AdminMaker.maker_curr?'제재 대상':'일반 메이커' }</td></tr>
					        	<tr><th>메이커명</th>
					        		<td>${AdminMaker.maker_name }</td>
					        		<th>메이커 구분</th>
					        		<td>${AdminMaker.maker_type }</td></tr>
					        	<tr><th>회원명</th>
					        		<td>${AdminMaker.mem_name }</td>
					        		<th></th>
					        		<td></td></tr>
					        	<tr><th>메이커프로필</th>
					        		<td><img src="${AdminMaker.maker_profile}" onerror="this.src='${path }/template/assets/img/new_logo.png'"/></td>
					        		<th>통장사본</th>
					        		<td><img src="${AdminMaker.maker_bankbook}" onerror="this.src='${path }/template/assets/img/new_logo.png'"/></td></tr>
					        </table>
				        </form>
				    </div>
				    <div class="text-right">
				    	<button class="btn btn-fill btn-warning restrictionBtn">제재</button>
				    	<button class="btn btn-fill btn-warning dropBtn">제명</button>
				    	<button class="btn btn-fill btn-warning clearBtn">제재 해제</button>
				    	<button class="btn btn-fill btn-warning goList">목록</button>
				    </div>
				    <div>
				    	<h3>프로젝트 내역</h3>
				    	<div>프로젝트 내역 - 메이커스튜디오에서 가져올께요.</div>
				    	<h3>스토어 내역</h3>
				    	<div>스토어 내역 - 메이커스튜디오에서 가져올께요.</div>
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
		console.log("maker_code:"+"${AdminMaker.maker_code}");
		console.log("maker_name:"+"${AdminMaker.maker_name}");
		
		$(".restrictionBtn").click(function(){
			alert("제재 조치 (6개월 정지)");
			/*
			if(confirm("제재 조치하시겠습니까?\n수정 할 수 없습니다. ")){
				$("form").attr("action","${path}/notice.do?method=update");
				$("form").submit();
			}
			*/
		});
		$(".dropBtn").click(function(){
			alert("제명 조치 (10년 정지)");
			/*
			if(confirm("제명 조치하시겠습니까?\n수정 할 수 없습니다.")){
				$("form").attr("action","${path}/notice.do?method=update");
				$("form").submit();
			}
			*/
		});
		$(".cleatBtn").click(function(){
			alert("제재 해제 조치");
			/*
			if(confirm("제명 조치하시겠습니까?\n수정 할 수 없습니다.")){
				$("form").attr("action","${path}/notice.do?method=update");
				$("form").submit();
			}
			*/
		});
		$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/AdminMaker.do?method=list");
		});
		
	})
</script>
</html>