<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="${path }/template/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="${path }/view/template/assets/img/favicon.png">	
	<link rel="stylesheet" href="${path }/css/slider.css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>FunFun 펀펀</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
</head>

<body>
<div class="main">
<div class="container tim-container" style="max-width:1200px; padding-top:100px">
<h1 class="text-center">남의 눈치 보지말고<br> FunFun하게 투자하세요! <small class="subtitle">Better Funding Better Business Better Life</small></h1>
<p class="text-center">사람들은 자신이 지지하는 기업에 투자합니다.<br>
한 사람 한 사람의 투자가 모여 기업은 성장합니다.<br>
여기, 기업 하나가 출발선에 있습니다.<br>
그는 자신의 가치를 증명하고<br>
사람들이 그의 가치를 알아봅니다.<br>
서로 지지하고 소통하고 공유하면서<br>
더 많은 사람들이 그를 알아봅니다.<br>
그렇게 기업은 성장합니다.<br>
또 다른 기업들이 용기를 얻고 출발선에 섭니다.<br>
사람들의 지지를 받는 기업은 성장합니다.<br>
세상에 자신만의 가치를 품은<br>
기업이 많아집니다.<br>
세상이 조금 더 나아집니다.</p>
<!-- end extras -->
	<br><br><br><br>
		<div id="slider" style="width:100%">
        <i class="material-icons">chevron_left</i>
        <ul>
            <li><a href="#"><img src="${path }/img/sliderimg1.PNG"></a></li>
            <li><a href="#"><img src="${path }/img/sliderimg2.PNG"></a></li>
            <li><a href="#"><img src="${path }/img/sliderimg3.PNG"></a></li>
            <li><a href="#"><img src="${path }/img/sliderimg4.PNG"></a></li>
        </ul>
        <i class="material-icons">chevron_right</i>
    	</div>
    	
	<br><br><br><br>
	<h1>추천 프로젝트</h1>
	<div class="row">
		<div class="col-xs-12 col-md-3 item">
        	<div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3 item">
        	<div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3 item">
        	<div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-3 item">
        	<div class="thumbnail">
                <img src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" alt="...">
                <div class="caption">
                  
                  <p class="item__title">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</p>
                  <span class="item__category">패션.잡화 | MOD</span><span class="item__money">모금율 : 90%</span>
                </div>
            </div>
        </div>
	</div>
           
           
       
</div>
<div class="space"></div>
<!-- end container -->
</div>
<!-- end main -->
<script src="${path }/js/slider.js"></script>
</body>

</html>