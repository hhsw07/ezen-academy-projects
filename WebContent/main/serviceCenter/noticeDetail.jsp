<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.cs-content{min-height:750px;}
	.as-context{width:1080px; margin:20px auto;}
	.apply-title{width:1080px; margin:0 auto;}
 
/* 상세보기 */
	.bbsbox {font-family: 'gulim';margin-top: 30px;}
	.bbsinfo {margin-top: 7px;font-size: 11px;color: #999;}
	.bbslist {margin-top: 10px;}
	.bbslist tbody td:nth-child(3) {text-align: left;font-size: 13px;}
	.bbscontents {padding: 20px 0; border-bottom: 1px solid #ddd; font-size: 14px;font-weight: bold;}
	.listback {margin-top: 20px; text-align: right;}
	.commentbox {margin-top:20px;background: #e9e9e9;}
	table {width:100%; border:0; border-spacing: 0; border-collapse: collapse;}
	textarea {padding: 5px 6px; border: 1px solid #d5d5d5; line-height: 1.5;height: 38px;background: #fff;margin: 20px 0 20px 20px;
	width:100%; border:none;resize:none;}
	.insAns{margin-top:10px; cursor:pointer; width:150px; margin:0; height:37px !important;line-height:34px;display:inline-block;color:#FFFFFF;font-size:12px !important;background:#63145F;text-align:center;vertical-align:middle;
	outline:none; border:none;}
	.commentbox tr{vertical-align:middle;}
	.comment-noti{font-size:12px; line-height:20px;padding:5px 26px;}
	.goback-btn{width:93px; margin:0; height:34px !important;line-height:34px;display:inline-block;color:#FFFFFF;font-size:12px !important;background:#63145F;text-align:center;vertical-align:middle;
	outline:none; border:none;}
	.comment-list{margin:20px auto;}
	
	.bbslist thead{border-top:2px solid cocoa; border-top:1px solid #cacaca;padding:12px 10px;}
	.bbslist thead th{ padding:12px 10px;}
/* 버튼 */
	.apply-btn{width:1050px; margin:20px auto 50px; text-align:center;}
	.btn{background:#63145F; color:#fff; border:none; position:relative; height:60px; font-size:1.5em; padding:0 2em; cursor:pointer;
	transition:800ms ease all; outline:none;}
	.btn:hover{background:#fff; color:#63145F;}
	.btn:before,.btn:after{content:''; position:absolute; top:0; right:0; height:2px; width:0; background: #63145F; transition:400ms ease all;}
	.btn:after{right:inherit; top:inherit; left:0; bottom:0;}
	.btn:hover:before,.btn:hover:after{width:100%; transition:800ms ease all;}
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		$("h2").text("AS신청");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<div class="cs-content">
	<header class="apply-title">

	</header>
	<div class="as-context">
		<div id="cusestimateview">
			<div class="bbsbox">
				<div class="bbstitle">
					<strong>컴퓨터 견적을 의뢰하는 경우★필독</strong>
				</div>
				<div class="bbsinfo">
					<span class="writedate">작성일 : 2018-12-16</span> / <span class="writer">작성자 : 관리자</span>
				</div>
				<!-- 내용 시작 -->
				<table summary="OrderList" class="bbslist">
						<colgroup>
							<col width="15%">
							<col width="10%">
							<col width="auto">
							<col width="15%">
							<col width="7%">
							<col width="15%">
						</colgroup>
						
					</table>
					<!-- 문의글 시작 -->
					<div class="bbscontents">
						고객님의 컴퓨터 견적을 가지고 컴퓨터 제작만 의뢰하는 경우에 대한 세 가지 안내사항을 전달합니다.<br>
						★ 완성됨 상품을 구매하는 경우에 본 내용을 보지 않으셔도 됩니다.<br>
						(1) 출장방문 A/S 를 포함하여 구매하시는 것을 권장합니다. (11,000원~12,000원)<br>
						(2) 박스를 추가 구매하시는 것을 권장합니다. (3,000원)<br>
						(3) 구매를 원하시는 견적과 판매중인 컴퓨터의 견적을 비교해주세요.<br>
						★ 위 내용이 기본 적용되는 곳이 있고, 추가해야 적용되는 곳이 있습니다.<br>
						해당 사이트의 상세페이지를 확인한 후 추가해주세요.<br>
					</div>
				<!-- 문의글 끝 -->
				</div>
				<div class="listback">
					<input class="goback-btn btn" type="button" value="목록으로"/>
				</div>
				<!-- 덧글 시작 -->
				<table class="commentbox">
					<col width="80%">
					<col width="20%">
					<!-- 덧글입력 시작 -->
					<tbody>
						<tr>
							<td>
								<textarea id="online_comment" class=""></textarea>
							</td>
							<td style="text-align:right; padding-right:26px;">
								<input class="insAns btn" type="button" name="insAns" value="입력"/>
							</td>
						</tr>
					</tbody>
				</table>
				
				<!-- 덧글출력 시작 -->
				<div class="comment-list" id="online_lines">
					<div class="r_list online_line" id="799229" style="clear:both; padding:10px; border-bottom:1px dotted #666;">
						<div style="padding-bottom:1px; font-weight:bold; font-size:13px; line-height:24px; color:#000;">
							관리자 <span style="margin-left:5px; font-weight:normal; font-size:11px; color:#999;">2020-00-00</span>
            			</div>
            			<div style="line-height:120%; color:#666;">
            				안녕하세요. PC냥이 입니다(댓글)<br><br>
            				
            			</div>
            		</div>
            	</div>
            </div>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>