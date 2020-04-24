<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--
# 클래스의 속성 추가/제거
1. addClass(클래스명) : 문서 객체의 클래스 속성을 추가.
2. removeClass(추가되 클래스명 ) : 클래스 속성 제거..
# 속성 설정 및 확인과 제거
1. attr("속성","속성값") : 속성과 관련된 모든 기능 수행
2. attr("속성", function(index, attr){})
	: 배열형 DOM 의 각각의 속성을 변경처리할 때, 활용된다.
3. attr({속성1:속성1값, 속성2:속성2값, 속성3:속성3값,})
	: json형식으로 여러가지 속성을 속성값으로 지정할 때, 활용된다.
4. removeAttr("속성명")
	: 문서 객체의 속성을 제거 처리할 때, 활용된다.
5. css("속성", "속성값") css 속성에 대한 설정..
	css("속성",function(){}), css({속성1:속성1값, 속성2:속성2값,..}
# html, text 처리 
1. html("랜더링 가능한 요소내용 적용")
	배열형dom.html(function(idx){ return ""});
2. text("랜더링 하지 않을 요소내용 적용")
	배열형dom.text(function(idx){ return ""});
	
	
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<style type="text/css">
	.bkColor0{background-color:yellow;}
	.bkColor1{background-color:green;}
	.bkColor2{background-color:blue;}
	.bkred{background-color:red;}
	.bkorange{background-color:orange;}
	.bkyellow{background-color:yellow;}
	.bkgreen{background-color:green;}
	.bkblue{background-color:blue;}
	.bknavy{background-color:navy;}
	.bkpurple{background-color:purple;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("클래스 속성 추가.");
		// 선언된 클래스 추가.
		//$("h2").addClass("bkColor0");
		// h3가 배열로 인식하여 각각의 다른 클래스로 처리.
		$("h2").addClass(function(index){
			console.log("bkColor"+index);
			return "bkColor"+index;
		});
		$("h2").click(function(){
			// $(this) : 클릭한 대상 객체..
			// .removeClass() : 클래스의 삭제 처리.
			//    여러클래스가 적용되어 있을 때, 특정한
			//    클래스를 삭제할 때, .removeClass("클래스명")
			$(this).removeClass();
		});
		$("h3").click(function(){
			var imgs=["apple.jpg","bananas.jpg","img01.jpg",
						"iphone.jpg","orange.jpg"];
			$("img").attr({"src":function(idx){
									var path="${path}/a00_img/"+imgs[idx];
								  return path;},
						   "width":function(idx){
								return 100+idx*100;
							},
							"height":function(idx){
								return 100+idx*100;
							}							
							
			});
			
		});
		$("td").css("background-color","pink");
		$("td").css("text-align","center");
		$("td").text(function(idx){
			return (idx+1);
		});
		
	});
/*
# 색칠하기..
색상 내용 7가지 테이블로 구성.
[red][orange][yellow][green][blue][navy][purple]
하단에 div나 테이블로 범위를 정하여,
addClass를 이용하여 위 버튼을 클릭시, 배경색상이 변경
되게 처리하세요.

 
 */	
	function chColor(color){
		//bkred
		// 클래스를 추가할 때, 기존 적용된 class를 삭제하고,
		// 중복된 클래스를 add로 변경하여야 한다.
		$("div").removeClass();
		$("div").addClass("bk"+color);
	}	
</script>
</head>

<body>
<h2 align='center'></h2>
<h2 align='center'></h2>
<h2 align='center'></h2>
<input type="button" value="red" onclick="chColor(this.value)"/>
<input type="button" value="orange" onclick="chColor(this.value)"/>
<input type="button" value="yellow" onclick="chColor(this.value)"/>
<input type="button" value="green" onclick="chColor(this.value)"/>
<input type="button" value="blue" onclick="chColor(this.value)"/>
<input type="button" value="navy" onclick="chColor(this.value)"/>
<input type="button" value="purple" onclick="chColor(this.value)"/>
<div style="width:200pt;height:200pt;">

</div>
<h3>이미지 출력</h3>
<img/>
<img/>
<img/>
<img/>
<img/>
<table border>
	<tr><td></td><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td><td></td></tr>
</table>

</body>
</html>