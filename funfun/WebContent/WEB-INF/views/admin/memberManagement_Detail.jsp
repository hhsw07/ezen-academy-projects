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
			        <div class="memtitle" style="margin:150px 0 30px;">
				        <h2>회원 상세보기</h2>
				    </div>
			        <div>
				    	<form class="form-group" method="post">
					    	<table class="table table-bordered">
					        	<col style="width:20%">
					        	<col style="width:30%">
					        	<col style="width:20%">
					        	<col style="width:30%">
					        	<!-- // 회원번호, 회원이메일, 회원이름, 회원휴대폰번호,
									// 회원관심카테고리, 회원 프로필 이미지, 회원상태(제제여부),
									// 회원계좌은행, 회원 계좌번호, 회원 보유 예치금
									// 메이커유무, 펀딩기록, 구매기록 -->
					        	<tr><th>회원번호</th>
					        		<td><input type="hidden" name="mem_code" value="${AdminMember.mem_code}"/>${AdminMember.mem_code}</td>
					        		<th>이메일</th>
					        		<td>${AdminMember.mem_email}</td></tr>
					        	<tr><th>이름</th>
					        		<td>${AdminMember.mem_name}</td>
					        		<th>휴대폰번호</th>
					        		<td>${not empty AdminMember.mem_phoneno?AdminMember.mem_phoneno:"없음"}</td></tr>
					        	<tr><th rowspan="2">프로필</th>
					        		<td rowspan="2"><img src="${AdminMember.mem_profile}" alt="이미지없음" style="width:90px; height:90px;"/></td>
					        		<th>관심 카테고리</th>
					        		<td>${AdminMember.mem_favor}</td></tr>
					        	<tr><th>회원상태</th>
					        		<td><c:if test="${not empty AdminMember.mem_curr}">제재 회원<br>(${AdminMember.mem_curr})</c:if>
					        			<c:if test="${empty AdminMember.mem_curr}" >일반 회원</c:if>
					        		</td></tr>
					        	<tr><th>계좌은행</th>
					        		<td>${not empty AdminMember.mem_bank?AdminMember.mem_bank:"없음"}</td>
					        		<th>계좌번호</th>
					        		<td>${not empty AdminMember.mem_account?AdminMember.mem_account:"없음"}</td></tr>
					        	<tr><th>보유 예치금</th>
					        		<td><fmt:formatNumber pattern="###,###" value="${AdminMember.mem_balance}"/></td>
					        		<th>메이커유무</th>
					        		<td>${AdminMember.maker_code == 0?"일반회원":"메이커회원"}</td></tr>
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
				    	<h3>펀딩 내역</h3>
				    	<div>펀딩 내역 - 마이페이지에서 가져올께요.</div>
				    	<h3>구매 내역</h3>
				    	<div>구매 내역 - 마이페이지에서 가져올께요.</div>
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
			$(location).attr("href","${path}/AdminMember.do?method=list");
		});
		
	})
</script>
</html>