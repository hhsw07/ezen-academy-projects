<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		
</script>
<style>

.shaking {
  /* Start the shake animation and make the animation last for 0.5 seconds */
  animation: shake 0.5s;

  /* When the animation is finished, start again */
  animation-iteration-count: infinite;
}

@keyframes shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
  10% { transform: translate(-1px, -2px) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) rotate(1deg); }
  30% { transform: translate(3px, 2px) rotate(0deg); }
  40% { transform: translate(1px, -1px) rotate(1deg); }
  50% { transform: translate(-1px, 2px) rotate(-1deg); }
  60% { transform: translate(-3px, 1px) rotate(0deg); }
  70% { transform: translate(3px, 1px) rotate(-1deg); }
  80% { transform: translate(-1px, -1px) rotate(1deg); }
  90% { transform: translate(1px, 2px) rotate(0deg); }
  100% { transform: translate(1px, -2px) rotate(-1deg); }
}

.bounce{
	animation:BounceIn 500ms;
}

@keyframes BounceIn{
	0%{
		transform:scale(1.1);
		opacity:0.3;
	}
	100%{
		transform:scale(1);
		opacity:1;
	}
}
</style>
<script>
	$(document).ready(function(){
		$('.main').addClass('bounce');
		setTimeout(()=>{
			$('.main').removeClass('bounce');
		},500);
	})
</script>
</head>
<body>
	<div class="main">
	    <div id="vue-container" v-bind:class="{bounce:isBounce}" class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <h1 class="text-center">{{state[0].mainText}}</h1>
	        <br><br><br>
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div class="btn-group btn-group-justified">
					  <a id="changeBtn" href="#" class="btn btn-warning">{{state[0].button1}}</a>
				</div>
		        </div>
    		</div>
	        <br><br>
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div class="form-group">
					  <label for="usr">{{state[0].inputText}}</label>
					  <input type="text" class="form-control" name="mem_email">
					</div>
		        </div>
    		</div>
	        
	        <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		        	<div v-bind:class="{shaking:isShaking}" v-bind:style="{color:fontColor}">{{state[0].inputText2}}</div>
		        </div>
    		</div>
	        
        	<br><br>
        	<div class="row">
        		<div class="col-md-4"></div>
        		<div class="col-md-4">
        			<button type="button" class="btn btn-warning btn-lg" style="width:100%; background-color:rgb(255,150,0); color:white;">{{state[0].button2}}</button>
        		</div>
        	</div>
        	
   
			  
     	 
	    </div>
	</div>
	<!-- end main -->
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<script>
	
		var idx=0;
		var vm = new Vue({
			el:'#vue-container',
			data:{
				state:[
					{
						mainText:"아이디 찾기",
						button1:"비밀번호 찾기 >",
						inputText:"가입 시 등록한 이메일 주소 입력:",
						button2:"가입여부 확인",
						inputText2:"",
					},
					{
						mainText:"비밀번호 찾기",
						button1:"< 아이디찾기",
						inputText:"가입 시 등록한 이메일 주소 입력:",
						button2:"비밀번호 재설정",
						inputText2:"",
					}
				],
				isBounce:false,
				fontColor:"red",
				isShaking:false,
				isToggle:false,
				isTarget:false
			}
		});
		
		$('#changeBtn').on('click', ()=>{
			vm.state=[vm.state[1], vm.state[0]];
			vm.isToggle=!vm.isToggle;
			vm.isTarget=!vm.isTarget;
			vm.isBounce=true;
			setTimeout(()=>{
				vm.isBounce=false;
			}, 500);
			idx++;
			idx=idx%2;
		});
		
		$('button').on('click', (event)=>{
			event.preventDefault();
			if(idx===0){
				$.ajax({
					type:"post",
					url:"${path}/signupIdCheck.do",
					data:$("input[name=mem_email]").serialize(),
					dataType:"json",
					success:function(data){
						if(data.verification===false){
							vm.state[0].inputText2="이미 해당 이메일로 가입하셨습니다";
							vm.fontColor="red";
							vm.isShaking=true;
							setTimeout(()=>{
								vm.isShaking=false;
							}, 500);
						} else {
							vm.state[0].inputText2="아직 가입하지 않으셨습니다.";
							vm.fontColor="green";
						}
					},
					error:function(err){
						console.log("ajax처리 에러");
						console.log(err);
					}
				});
			} else if(idx===1){
				
			}
		});
	</script>
</body>
</html>