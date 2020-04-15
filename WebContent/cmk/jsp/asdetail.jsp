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
	.as-context{width:1080px; margin:20px auto;}
 
/* 상세보기 */
	.bbsbox {font-family: 'gulim';margin-top: 30px;}
	.bbsinfo {margin-top: 7px;font-size: 11px;color: #999;}
	.bbslist {margin-top: 10px;}
	.bbslist tbody td:nth-child(3) {text-align: left;font-size: 13px;}
	.bbscontents {padding: 20px 0; border-bottom: 1px solid #ddd; font-size: 14px;font-weight: bold;}
	.listback {margin-top: 20px; text-align: right;}
	.commentbox {margin-top: 20px;background: #e9e9e9;}
	table {width: 100%;border: 0;border-spacing: 0;border-collapse: collapse;}
	textarea {padding: 5px 6px; border: 1px solid #d5d5d5; line-height: 1.5;width: 680px; height: 38px;background: #fff;margin: 20px 0 20px 20px;}
	.insAns{margin-top: 20px;cursor:pointer;}
	
	.bbslist thead{border-top:2px solid cocoa; border-top:1px solid #cacaca;padding:12px 10px;}
	.bbslist thead th{ padding:12px 10px;}

</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){		
		$("h2").text("");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<h2></h2>
	<div class="as-context">
		<div id="cusestimateview">
			<div class="bbsbox">
				<div class="bbstitle">
					<strong>AS신청합니다</strong>
					<span class="">[분류]</span>
				</div>
				<div class="bbsinfo">
					<span class="writedate">작성일 : 2020-00-00</span> / <span class="writer">작성자 : 작성자</span>
				</div>
				<!-- 내용 시작 -->
				<table summary="OrderList" class="bbslist">
						<colgroup>
							<col width="100">
							<col width="70">
							<col width="">
							<col width="100">
							<col width="50">
							<col width="100">
						</colgroup>
						<thead>
							<tr>
								<th>주문번호</th>
								<th></th>
								<th>상품명</th>
								<th>판매가</th>
								<th>수량</th>
								<th>구매날짜</th>
							</tr>
						</thead>
						<tbody>
						<!-- 리스트 시작 -->	
							<tr style="">
								<td>주문번호</td>
                    			<td>
                    				<input type="hidden" name="Pnum[]" value="341282">
                    				<input type="hidden" name="RUID[]" value="220">
                        			<input type="hidden" name="qty[]" value="18">
                        				상품이미지 넣을까말까
                    			</td>
	                   			<td style="background:none;">
	                   				<div class="cart_name">상품명상품명상품명</div>
	                    		</td>
	                    		<td>\18,380</td>
	                    		<td>18</td>
	                    		<td>2020-00-00</td>
                			</tr>
                		<!-- 리스트 끝 -->
                		</tbody>
					</table>
					<!-- 문의글 시작 -->
					<div class="bbscontents">
						AS 신청내용<br>
						AS 신청내용<br>
						AS 신청내용<br>
					</div>
				<!-- 문의글 끝 -->
				</div>
				<div class="listback">
					<a href="">목록으로</a>
				</div>
				<!-- 덧글 시작 -->
				<table summary="comment" class="commentbox">
					<!-- 덧글입력 시작 -->
					<tbody>
						<tr>
							<td>
								<textarea id="online_comment" class=""></textarea>
								<input class="insAns" type="button" name="insAns" value="입력"/>
							</td>
						</tr>
					<!-- 덧글입력 끝 -->
						<tr>
							<td class="comment-noti"><span>* 운영정책에 위배되는 덧글들은 운영자 판단하에 제재될 수 있습니다.</span> </td>
						</tr>
					</tbody>
				</table>
				
				<!-- 덧글출력 시작 -->
				<div class="comment-list" id="online_lines">
					<div class="r_list online_line" id="799229" style="clear:both; padding:10px; border-bottom:1px dotted #666;">
						<div style="padding-bottom:1px; font-weight:bold; font-size:13px; line-height:24px; color:#000;">
							관리자
							<span style="margin-left:5px; font-weight:normal; font-size:11px; color:#999;">2020-00-00</span>
							<span style="margin-left:5px; font-weight:normal; font-size:11px; color:#999;"></span>
            			</div>
            			<div style="line-height:150%; color:#666;">
            				안녕하세요. PC냥이 입니다<br><br>
            				AS신청에 대한 답변...<br>
            			</div>
            		</div>
            	</div>
            </div>
		</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>