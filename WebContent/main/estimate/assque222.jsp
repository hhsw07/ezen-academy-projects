<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("p5_assque");
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<div>
ASQ_NO : ${asq.asq_no}|ASQ_NAME : ${asq.asq_name}|ASQ_DETAIL : ${asq.asq_detail}| <br>
ASQ_REQDATE : ${asq.asq_reqdate}|ASQ_COMM : ${asq.asq_comm}|ASQ_COMDATE : ${asq.asq_comdate}|MEM_ID : ${asq.mem_id}<br>
	<table>
		<col width="18%">
		<col width="auto">
		<col width="7%">
		<col width="18%">
		<col width="4%">
		<tr>
			<td class="mcCho">CPU</td>
			<td></td> 
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == 'CPU'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="${prod.parts_cnt}"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원								</td>
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">메인보드</td>
			<td></td> 
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == '메인보드'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">RAM</td>
			<td></td> 
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == 'RAM'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">그래픽카드</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == '그래픽카드'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">SSD</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == 'SSD'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">HDD</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == 'HDD'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">케이스</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == '케이스'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
		<tr>
			<td class="mcCho">케이스</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach var="prod" items="${assemble}">
			<c:if test="${prod.parts_mc == '파워'}" >
				<tr>
					<td></td>
					<td>${prod.parts_name}</td> 
					<td><input type="number" name="cnt(${prod.parts_no})" value="1"/></td>
					<td class="ordR"><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원
					<td onclick="delCart(${prod.parts_no})">X</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
	<input type="button" value="돌아가기" />
</div>
</body>
</html>