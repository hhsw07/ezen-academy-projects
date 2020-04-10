<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "
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
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("시작 : ${param.proc}");
	});
	$( function() {
	    var spinner = $( "#spinner" ).spinner();
	 
	    $( "#disable" ).on( "click", function() {
	      if ( spinner.spinner( "option", "disabled" ) ) {
	        spinner.spinner( "enable" );
	      } else {
	        spinner.spinner( "disable" );
	      }
	    });
	    $( "#destroy" ).on( "click", function() {
	      if ( spinner.spinner( "instance" ) ) {
	        spinner.spinner( "destroy" );
	      } else {
	        spinner.spinner();
	      }
	    });
	    $( "#getvalue" ).on( "click", function() {
	      alert( spinner.spinner( "value" ) );
	    });
	    $( "#setvalue" ).on( "click", function() {
	      spinner.spinner( "value", 5 );
	    });
	 
	    $( "button" ).button();
	    
	    $("#btn1").click(function(){
	    	$("#form1").submit();
	    });
	    $("#btn2").click(function(){
	    	$("#form2").submit();
	    });
	    
	  } );
	
	
	
</script>
</head>

<body>
<h2 align="center"></h2>
 
<form id="form1">
	<input type="hidden" name="proc" value="폼1" />
	<input type="submit" value="폼1" />
</form>
<form id="form2">
	<input type="hidden" name="proc" value="폼2" />
	<input type="submit" value="폼2" />
</form>

<h1 id="btn1">버튼1</h1>
<h1 id="btn2">버튼2</h1>

</body>
</html>