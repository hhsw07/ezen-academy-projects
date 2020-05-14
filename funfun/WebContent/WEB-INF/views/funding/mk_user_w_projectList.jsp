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
<script src="js/mk_user_w_projectList.js"></script>
</head>
<body>
	<div class="main">
		<div class="container tim-container" style="max-width:1200px; padding-top:100px">
		<form method="post">
			<input type="hidden" name="category" />
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
				<h3 class="ProjectListHead_title">전체보기</h3>
				<form class="ProjectListHead_search">
					<label for="search-keyword">
						<input class="" id="search-keyword" type="search" placeholder="검색" value="">
						<button type="submit" style="border:none; background-color: transparent; color:black;margin: 26px 3px;" class="fa fa-search" aria-label="검색"></button>
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
		<!-- 분류 -->
	    	<div>
		  		<ul class="nav nav-tabs justify-content-center">
					<li class="active"><a href="#">진행중인 프로젝트</a></li>
					<li><a href="#">오픈예정 프로젝트</a></li>
					<li><a href="#">종료된 프로젝트</a></li>
				</ul>
			</div>
		<!-- 리스트 -->
			<div style="background-color: rgb(245, 247, 250); margin:30px auto 0;">
					<div class="row" style="padding-bottom:100px;">
				<c:forEach var="proj" items="${plist}">
						<div class="col-xs-12 col-md-3 item"  onclick="javascript:go_detail('${proj.pro_code}')">
							<div class="thumbnail projectList-item">
								<img alt="..." src="img/${proj.pro_image}">
								<div class="caption proj-info">
									<p class="ProjectList-title">${proj.pro_title}</p>
									<div class="maker-info">
										<span class="ProjectList-maker">${proj.cate_title} | ${proj.maker_name}</span>
										<span class="ProjectList-rate">모금율 : 90%</span>
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
					<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
						<li class="${paging.curPage==cnt?'active':'' }"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${paging.endBlock==paging.pageCount?paging.pageCount:paging.endBlock+1})">&raquo;</a></li>
				</ul>
	        </div>
		
		</div>
	</div>
	<!-- end main -->
</body>
</html>