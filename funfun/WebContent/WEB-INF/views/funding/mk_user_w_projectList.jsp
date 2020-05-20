<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/mk_user_w_projectList.css">
<script type="text/javascript">
	$(document).ready(function(){
		console.log("카테고리:"+$("[name=cate_title]").val());
		// 카테고리
		$("#all").click(function(){
			$("[name=cate_title]").val("");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#edu").click(function(){
			$("[name=cate_title]").val("교육");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#beauty").click(function(){
			$("[name=cate_title]").val("패션");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#homeLiving").click(function(){
			$("[name=cate_title]").val("홈리빙");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#culture").click(function(){
			$("[name=cate_title]").val("공연");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#sports").click(function(){
			$("[name=cate_title]").val("스포츠");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#book").click(function(){
			$("[name=cate_title]").val("출판");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#dog").click(function(){
			$("[name=cate_title]").val("반려동물");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
		$("#electro").click(function(){
			$("[name=cate_title]").val("테크");
			alert("cate_title"+$("[name=cate_title]").val());
			$("[name=projectsch]").val("");
			$("form").submit();
		});
	});
	
	function go_detail(no){
		$(location).attr("href", "funding.do?method=detail&pro_code="+no);
	}
	function goPage(no){
		
	}

</script>
</head>
<body>
	<div class="main">
		<div class="container tim-container" style="max-width:1200px; padding-top:100px">
		<h2>펀딩하기</h2>
		<form method="post" action="${path}/funding.do?method=list">
			<input type="hidden" name="cate_title" value="${projSch.cate_title}"/>
		<!-- 카테고리 -->
			<div class="row project-category" >
				<div class="categoryList" id="all">
					<img src="${path}/img/all.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>전체보기</h6>
				</div>
				<div class="categoryList" id="edu">
					<img src="${path}/img/edu.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>교육·키즈</h6>
				</div>
				<div class="categoryList" id="beauty">
					<img src="${path}/img/beauty.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>패션·잡화·뷰티</h6>
				</div>
				<div class="categoryList" id="homeLiving">
					<img src="${path}/img/homeLiving.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>홈리빙·디자인소품</h6>
				</div>
				<div class="categoryList" id="culture">
					<img src="${path}/img/culture.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>공연·컬쳐</h6>
				</div>
				<div class="categoryList" id="sports">
					<img src="${path}/img/sports.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>스포츠·모빌리티</h6>
				</div>
				<div class="categoryList" id="book">
					<img src="${path}/img/book.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>출판</h6>
				</div>
				<div class="categoryList" id="dog">
					<img src="${path}/img/dog.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>반려동물</h6>
				</div>
				<div class="categoryList" id="electro">
					<img src="${path}/img/electro.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>테크·가전</h6>
				</div>
            </div>
		</form>
			<div class="ProjectListHead_bar">
				<h3 class="ProjectListHead_title">${category}</h3>
			</div>
		<!-- 분류 -->
	    	<div class="ProjectListHead_bar">
	    		
		  		<ul class="nav nav-tabs ">
					<li class="active" style="font-weight:700;"><a href="#">진행중인 프로젝트</a></li>
					<li style="font-weight:700;"><a href="#">오픈예정 프로젝트</a></li>
					<li style="font-weight:700;"><a href="#">종료된 프로젝트</a></li>
					<li style="right:0px; position:absolute;">	
						<div>
						<form class="ProjectListHead_search" method="post" action="${path}/funding.do?method=list">
							<label for="search-keyword">
								<input class="form-control" id="search-keyword" type="text" placeholder="검색어를 입력하세요" name="projectsch" value="${param.projectsch}">
								<button type="submit" style="border:none; background-color: transparent; color:black;" class="fa fa-search" aria-label="검색"></button>
							</label>
						</form>
						<div class="select-sort ProjectListHead_sort">
							<select name="sort" class="">
								<option value="recommend">추천순</option>
								<option value="popluar">인기순</option>
								<option value="recent">최신순</option>
								<option value="amount">펀딩액순</option>
								<option value="closing">마감임박순</option>
							</select>
						</div>
					</div>
				</li>
				</ul>
			</div>
		
		
		<!-- 리스트 -->
			<div style="background-color: rgb(245, 247, 250); margin:30px auto 0;">
					<div class="row">
				<c:forEach var="proj" items="${plist}">
						<div class="col-xs-12 col-md-3 item" onclick="javascript:go_detail('${proj.pro_code}')">
							<div class="thumbnail projectList-item">
								<img alt="..." src="img/${proj.pro_image}">
								<div class="caption proj-info">
									<p class="ProjectList-title">${proj.pro_title}</p>
									<div class="maker-info">
										<span class="ProjectList-maker">${proj.cate_title} | ${proj.maker_name}</span>
									</div>
									<div>
										<span class="ProjectList-rate">모금율 : ${proj.percent}%</span>
										<span class="ProjectList-date">남은기간 : ${proj.dday}일</span>
									</div>
								</div>
							</div>
						</div>
				</c:forEach>
					</div>
		
			</div>
		<!-- 페이징 -->
			<div class="text-center">
		        <ul class="pagination ct-orange"> 
					<li><a href="javascript:goPage(${projSch.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${projSch.startBlock}" end="${projSch.endBlock}">
						<li class="${projSch.curPage==cnt?'active':''}"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${projSch.endBlock==projSch.pageCount?projSch.pageCount:projSch.endBlock+1})">&raquo;</a></li>
				</ul>
	        </div>
		
		</div>
	</div>
	<!-- end main -->
</body>
</html>