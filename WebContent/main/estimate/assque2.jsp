<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.*, hsw.* "
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="${path}/a00_com/a00_com.css" > -->
<style>
	body{margin:0 auto; padding:0; width:100%;}
	.ordR{text-align:right;}
	.ordL{text-align:left;}

	.cs-content{min-height:750px;}
	.as-context{width:1080px; margin:20px auto;}
	.apply-title{width:1080px; margin:0 auto;}
 
/* 상세보기 */
	.bbsbox {font-family: 'gulim';margin-top: 30px;}
	.bbsinfo {margin-top: 7px;font-size: 11px;color: #999;}
	.bbslist {margin:30px auto 0; width:700px; }
	.bbslist tbody td:first-child{background-color:black;color:white;}
	.bbscontents {padding: 20px 0; border-bottom: 1px solid #ddd; font-size: 14px;font-weight: bold; margin-top:20px;}
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
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("견적문의");
		$(".goback-btn").click(function(){
			location.href="${path}/assembly";
		});
	});
	
</script>
</head>

<body>
<jsp:include page="../top.jsp"/>
<div class="cs-content">
	<c:choose>
		<c:when test="${param.proc eq 'regAsq'}">
			<div class="as-context">
				<div id="cusestimateview">
					<div class="bbsbox">
						<form>
						<table>
							<tr><th>제목</th>
								<td><input type="text" name="assque_name" /></td></tr>
						</table>
						<!-- 내용 시작 -->
						<table summary="OrderList" class="bbslist">
							<col width="18%">
							<col width="60%">
							<col width="7%">
							<col width="15%">
							<tr>
								<td class="mcCho">CPU</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'CPU'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td>${prod.parts_cnt}개</td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원</td>
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">메인보드</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '메인보드'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">RAM</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'RAM'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">그래픽카드</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '그래픽카드'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">SSD</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'SSD'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">HDD</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'HDD'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">케이스</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '케이스'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">케이스</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '파워'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
						</table>
						<!-- 문의글 시작 -->
						<div class="bbscontents">
							
							
							
							<textarea rows="" cols="" name="asq_detail" ></textarea>
						</div>
						</form>
					</div>
					<div class="listback">
						<input class="goback-btn btn" type="button" value="목록으로"/>
					</div>
				</div>
			</div>
		</c:when>
		
		
		
		
		
		
		<c:when test="${param.proc eq 'goAsq'}">
			<div class="as-context">
				<div id="cusestimateview">
					<div class="bbsbox">
						<div class="bbstitle">
							<strong>${asq.asq_name}</strong>
						</div>
						<div class="bbsinfo">
							<span class="writedate">작성일 : ${asq.asq_reqdate}</span> / <span class="writer">작성자 : ${asq.mem_id}</span>
						</div>
						<!-- 내용 시작 -->
						<table summary="OrderList" class="bbslist">
							<col width="18%">
							<col width="60%">
							<col width="7%">
							<col width="15%">
							<tr>
								<td class="mcCho">CPU</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'CPU'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}" /></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원</td>
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">메인보드</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '메인보드'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">RAM</td>
								<td></td> 
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'RAM'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">그래픽카드</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '그래픽카드'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">SSD</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'SSD'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">HDD</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == 'HDD'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">케이스</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '케이스'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
							<tr>
								<td class="mcCho">케이스</td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<c:forEach var="prod" items="${assemble}">
								<c:if test="${prod.parts_mc == '파워'}" >
									<tr>
										<td></td>
										<td>${prod.parts_name}</td> 
										<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
										<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
									</tr>
								</c:if>
							</c:forEach>
						</table>
						<!-- 문의글 시작 -->
						<div class="bbscontents">
							${asq.asq_detail}
						</div>
					</div>
					<div class="listback">
						<input class="goback-btn btn" type="button" value="목록으로"/>
					</div>
					
					<c:if test="${mem eq 'admin'}">
					<!-- 관리자만 입력 -->
						<table class="commentbox">
							<col width="80%">
							<col width="20%">
							<tr>
								<td>
									<textarea id="online_comment" class=""></textarea>
								</td>
								<td style="text-align:right; padding-right:26px;">
									<input class="insAns btn" type="button" name="insAns" value="입력"/>
								</td>
							</tr>
						</table>
					</c:if>
					<!-- 덧글출력 시작 -->
					<c:if test="${not empty asq.asq_comm}">
						<div class="comment-list" id="online_lines">
							<div class="r_list online_line" id="799229" style="clear:both; padding:10px; border-bottom:1px dotted #666;">
								<div style="padding-bottom:1px; font-weight:bold; font-size:13px; line-height:24px; color:#000;">
									관리자 <span style="margin-left:5px; font-weight:normal; font-size:11px; color:#999;">${asq.asq_comdate}</span>
					     		</div>
					     		<div style="line-height:120%; color:#666;">
					     			${asq.asq_comm}
					     		</div>
					     	</div>
					     </div>
				     </c:if>
				</div>
			</div>
		</c:when>
	</c:choose>
</div>
	
<jsp:include page="../bottom.jsp"/>

</body>
</html>