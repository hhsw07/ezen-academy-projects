<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 채팅 상담</title>
<link href="${path }/template/bootstrap3/css/bootstrap.css" rel="stylesheet" />
<link href="${path }/template/bootstrap3/css/font-awesome.css" rel="stylesheet" />
   
<link href="${path }/template/assets/css/gsdk.css" rel="stylesheet" />   
<link href="${path }/template/assets/css/demo.css" rel="stylesheet" /> 
<style type="text/css">
	#chatArea{
		height:200px; border: 1px solid green;
		overflow-y:auto; text-align:left;
	}
	
</style>
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	  crossorigin="anonymous"></script>
	<script src="${path }/template/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
	<script src="${path }/template/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="${path }/template/assets/js/gsdk-checkbox.js"></script>
	<script src="${path }/template/assets/js/gsdk-radio.js"></script>
	<script src="${path }/template/assets/js/gsdk-bootstrapswitch.js"></script>
	<script src="${path }/template/assets/js/get-shit-done-header.js"></script>
  <script src="${path }/template/assets/js/custom.js"></script>

<link href="${path }/css/sw_user_w_chat.css" rel="stylesheet" /> 
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		var wsocket;
		$("h2").text("채팅 시작");
		
		// 화면 크기 고정
		
		$(window).resize(function(){
			window.resizeTo(460,680);
		});
		
		
		// 채팅 데이터 호출
		var mem_code = "${param.mem_code}";
		var my_code = "${user.mem_code}";
//		if(my_code == "") my_code = "${admin.admin_code}"; 
		if(my_code == "") my_code = "1001"; 
		console.log("mem_code:"+mem_code);
		console.log("my_code:"+my_code);
		$.ajax({
			type:"post",
			url:"${path}/rtqna.do?method=ajaxdetail&mem_code="+mem_code,
			dataType:"json",
			success:function(data){
				var list = data.list;
				var show = "";
				var mem_name = "";
				$.each(list,function(idx,rtqna){
					show += "<div class='sc-message'>";
					if(rtqna.rtqna_writer == my_code){
						show += "	<div class='sc-message--content sent'>";
					}else{
						show += "	<div class='sc-message--content received'>";
					}
					show += "		<div class='sc-message--avatar' ></div>";
					show += "		<div class='sc-message--text'>";
					show += "			<span class='Linkify'>"+rtqna.rtqna_detail+"</span>";
					show += "		</div></div></div>";
					
					if(mem_name == "") mem_name = rtqna.name;
				});
				$(".sc-message-list").html(show);
				$(".sc-header--team-name").text(mem_name);
			},
			error:function(err){
				console.log(err);
			}
		});
		
		$("#sendBtn").click(function(){
			sendMsg();
		});
		$("#msg").keyup(function(e){
			if(e.keyCode==13){
				sendMsg();
			}
		});
		function sendMsg(){
			alert("전송");
			var id = $("#id").val();	// 보내는 사람 id
			var msg = $("#msg").val();	// 보내는 메시지
			wsocket.send("msg:"+id+": "+msg);
			$("#msg").val("");
			$("#msg").focus();
		}
		
		$("#enterBtn").click(function(){
			if(confirm("채팅창 접속합니다!!")){
				// (내 PC:192.168.4.34) (선생님 PC:211.238.140.48) (민기 PC:192.168.4.20)
				// 0. 접속
				wsocket = new WebSocket("ws://192.168.4.34:5080/${path}/chat-ws.do");
				// 1. 접속 처리 후, 처리할 메서드.
				wsocket.onopen=function(evt){
					console.log(evt);
					recieveMsg("연결되었습니다.");
				};
				// 2. 메세지를 전송해주고, 전송 받을 때 처리 내용.
				wsocket.onmessage=function(evt){
					var data = evt.data;
					if(data.substring(0,4) == "msg:"){
						revMsg = data.substring(4);
						recieveMsg(revMsg);
					}
				};
				// 3. 접속 종료 후, 처리할 메서드.
				wsocket.onclose=function(){
					recieveMsg("연결을 종료했습니다.");
				};
				
			}
		});
		// 메시지 처리 메소드(전송 온 메시지를 화면에서 추가 처리)
		function recieveMsg(revMsg){
			$("#chatMessageArea").append(revMsg+"<br>");
		}
		
		$(".exitBtn").click(function(){
			self.opener = self;
			window.close();
		});
		/*
		function goRtqna(){
	  		var chatOpen = $(".sc-chat-window").attr("class"); 
	  		if( chatOpen == "sc-chat-window"){
	  			$(".sc-chat-window").attr("class","sc-chat-window closed");
	  		}else{
	  			$(".sc-chat-window").attr("class","sc-chat-window");
	  		}
	  	}
		*/
		
		
		
		
	});
	
</script>
</head>
<body>
<div class="sc-chat-window" style="z-index:10;">
	<div class="sc-header">
		<img class="sc-header--img" src="${path }/template/assets/img/new_logo.png" alt="">
		<div class="sc-header--team-name">
			회원이름
		</div>
		<div class="sc-header--close-button exitBtn">
			<img src="img/close-icon.png">
		</div>
	</div>
	<div class="sc-message-list">
		<div class="sc-message">
			<div class="sc-message--content sent">
				<div class="sc-message--avatar" ></div>
				<div class="sc-message--text">
					<span class="Linkify">Why don't they have salsa on the table?</span>
				</div>
			</div>
		</div>
		<div class="sc-message">
			<div class="sc-message--content received">
				<div class="sc-message--avatar" ></div>
				<div class="sc-message--text">
					<span class="Linkify">What do you need salsa for?</span>
				</div>
			</div>
		</div>
	</div>
	<div class="sc-user-input">
		<div role="button" tabindex="0" contenteditable="true" 
			placeholder="Write a reply..." class="sc-user-input--text">
		</div>
		<div class="sc-user-input--button">
			<button class="sc-user-input--send-icon-wrapper">
				<img class="sc-user-input--send-icon" src="img/send-message.png" />
			</button>
		</div>
	</div>
</div>
</body>
</html>