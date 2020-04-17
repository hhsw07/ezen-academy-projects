<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>
[
<c:forEach var="prod" items="${plist}">
	{
		"sno":${prod.sno},"kind":"${prod.kind}","name":"${prod.name}",
		"price":${prod.price},"cnt":${prod.cnt}
	},	
</c:forEach>
]