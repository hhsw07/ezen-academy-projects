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
<script type="text/javascript">

</script>
</head>
<body>
	<div class="main">
		<div class="container tim-container" style="max-width:1200px; padding-top:100px">
			<div>
				<div>
					동의
				</div>
				<div id="accordion">
					<h3>프로젝트 상세 정책</h3>
					<div>
						<p>펀딩금 반환 안내</p>
						<p>펀딩 종료 후 아래 정책에 따라 펀딩금 반환 신청을 할 수 있습니다. 펀딩금 반환은 서포터가 펀딩한 금액만큼 예치금으로 반환하는 방식으로 이뤄집니다.펀딩금 반환은 펀딩금 반환 문의처에서 신청하실 수 있습니다.</p>
			
						<p>1) 리워드가 지연될 경우</p>
						<p><strong>메이커가 최대 발송 지연 가능일까지 리워드를 발송하지 않을 경우,</strong> 서포터는 펀딩금 반환 신청을 할 수 있습니다. 최대 발송 지연 가능일은 리워드 발송 시작의 마지막 날로부터 90일 이후 입니다.</p>
						<p>(예) 리워드 발송 시작일: 2020년 01월 초(1~10일)<br>
							→ 리워드 최대 발송 지연일: 2020년 04월 08일</p>
						<p>2) 리워드에 하자가 있을 경우</p>
						<p>서포터가 수령한 리워드가 아래 어느 하나에 해당할 경우, 수령일로부터 7일 이내에 펀딩금 반환 신청을 할 수 있습니다. 이때 메이커는 하자 판단을 위한 증빙자료, 리워드 반송을 서포터에게 요청할 수 있습니다.</p>
						<p>- 리워드의 유통 및 제작에 법적으로 문제가 있는 경우<br>
						- 리워드의 내용이 표시/광고 내용과 현저하게 상이한 경우<br>
						- 정상적인 사용상태에서 리워드의 기능/성능상 오작동이 발생되는 경우<br>
						- 리워드가 미작동될 경우<br>
						- 주요 성분 미기재로 인해 서포터에게 중대한 신체 피해를 입힌 경우</p>
						<p>단, 아래 어느 하나에 해당될 경우 펀딩금 반환은 불가합니다.</p>
						<p>- 메이커가 프로젝트 페이지 내에 명시적으로 고지한 하자 불인정 사유에 해당하는 경우<br>
						(예) 공장 제작 과정상 벌어짐 방지를 위해 봉제되어 제공되는 포켓은 하자 사유가 되지 않습니다.<br>
						- 서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손이 발생된 경우<br>
						- 모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우<br>
						- 공연, 디지털컨텐츠, 여행 패키지 상품, 무형 서비스 및 컨텐츠의 제공이 완료되었을 경우<br>
						- 신선식품 혹은 정기구독 서비스일 경우<br>
						- 서포터의 제품 숙지 미숙으로 인해 문제가 발생했을 경우</p>
						<p>3) 기타 주의 사항</p>
						<p>- 크라우드펀딩의 특성상 프로젝트 종료 후 서포터의 단순변심으로 인한 펀딩금 반환은 불가합니다.<br>
						- 회사는 메이커와 상호 협의 하에 프로젝트를 취소할 수 있으며, 펀딩 종료 후 프로젝트가 취소될 경우에는 펀딩금이 반환됩니다.<br>
						- 하자가 있는 경우, 리워드 반송을 위한 배송비는 메이커가 부담하여야 하고 하자가 없는 경우에는 리워드 반송 및 재반송에 대한 배송비를 서포터에게 청구될 수 있습니다.</p>
					</div>
				</div>
			</div>
			<div>
				
			</div>
		</div>
	</div>

</body>
</html>