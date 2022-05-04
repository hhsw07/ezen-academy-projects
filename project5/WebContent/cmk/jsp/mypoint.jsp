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
/* 포인트조회 */
	table{border-collape:collape;}
	.point-cont-wrap{min-height:600px;}
	.point-wrap{padding:0 10%; color:#a1a4a8;}
	.point_page{width:980px; margin:0 auto;}
	.pointinfo-cont{padding:32px 0; margin:40px 0 0; border:5px solid #DFDFDF;}
	.pointinfo_show{line-height:1.71; height:auto; font-size:14px; color:#a1a4a8; overflow:hidden;}
	.point-info{width:18%; float:left; padding:0;text-align:center;}
	.point-info-tit{font-size:14px; line-height:2.14;}
	.point-info-p{margin:2px 0; color:#2f3338; font-size:18px; line-height:1.67;}
	.point-info-txt{margin:10px 0 0; color:#909397; font-size:14px; line-height:1.8;}
	.point-cont{margin:40px 0 0;}
	.point-tit{padding:0 0 10px; font-size:16px; border-bottom:2px solid #3d4248; line-height:1.5; color:#3d4248;}
    .point-table{margin:10px 0 50px; text-align:center;}
    .point-th{color:#2f3338; font-size:14px; border-bottom:2px solid #3d4248; line-height:2; padding-bottom:10px; text-align:center;}
    .point-td{padding:15px 0 18px; color:#2f3338; font-size:14px; line-height:2; vertical-align:middle; border-bottom:1px solid #dfdfdf; text-align:center;}
    .txt-color-r{color:#f1645d !important;}
    
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
	<jsp:include page="../myPageTop.jsp"/>
	<div class="point-cont-wrap">
		<h2></h2>
		<section class="mypage_content">
			<article class="point-wrap">
				<div class="point_page">
					<div class="pointinfo-cont">
						<div class="pointinfo_show">
							<div class="point-info">
								<div class="point-info-tit">현재 포인트</div>
								<div class="point-info-p">0000 P</div>
							</div>
							<div class="point-info">
								<div class="point-info-tit">총 적립 포인트</div>
								<div class="point-info-p">0000 P</div>
							</div>
							<div class="point-info">
								<div class="point-info-tit">사용한 포인트</div>
								<div class="point-info-p">0000 P</div>
							</div>
						</div>
					</div>
					
					<div class="point-info-txt">•  포인트는 주문 시 사용하실 수 있습니다.<br></div>
					
					<div class="point-cont">
						<div class="point-tit">포인트 적립/사용 내역</div>
						<div class="point-table">
							<table width="100%">
								<colgroup>
									<col width="28%">
									<col width="44%">
									<col width="28%">
								</colgroup>
								<thead>
									<tr>
										<th class="point-th">적립날짜</th>
										<th class="point-th">내역</th>
										<th class="point-th">포인트</th>
									</tr>
								</thead>
								<tbody class="point_list_wrap">
									<tr>
										<td class="point-td">2020/00/00</td>
										<td class="point-td">포인트 사용</td>
										<td class="point-td">-0000 p</td>
									</tr>
									<tr>
										<td class="point-td">2020/00/00</td>
										<td class="point-td">회원가입 포인트</td>
										<td class="point-td txt-color-r">+0000 p</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
			</article>
		</section>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
	
</body>
</html>