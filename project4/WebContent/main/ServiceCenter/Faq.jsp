<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
      ul li{list-style:none;}

        .sc{width:1080px; margin:0px auto; text-align:center;}
          .sc_title{text-align:left;}
          .sc_menubar{text-align:center;}
            .sc_menubar ul{}
            .sc_menubar ul li {float:left;left:50%; text-size:20px;width:300px; padding:10px 20px;
            				   border-top:3px double black;border-bottom:3px double black;}
            .sc_menubar ul li:hover {border-bottom:3px solid #9553F3; border-top:3px solid #9553F3;}
          .sc_FAQ{padding-top:50px;}
          .sc_FAQ img{width:10px;}
          .sc_FAQ table{width:100%; border-collapse:collapse; cursor:default;}
          .sc_FAQ table tr:nth-child(2n+1){visibility:collapse;}	
          .sc_FAQ table tr:nth-child(2n){border-top:1px solid black;}
          .sc_FAQ table tr:first-child{visibility:visible;border-top:3px double black;border-bottom:3px double black;}			
          .sc_FAQ table tr td,th {padding:10px 20px;} 
          .sc_FAQ table tr td:first-child {width:10%;} 
          .sc_FAQ table tr td:last-child {text-align:left;}
      
      /* 아래로 내려오는 메뉴바 css */
      .dropbtn{background-color:white; color:black; border:none; cursor:pointer; font-size:15px;}
      .dropdown{position: relative; display: inline-block;}
      .dropdown_content{display: none; position: absolute; background-color: #f9f9f9; min-width: 160px;
                              box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1;}
      .dropdown_content a{color: black; padding: 12px 16px; text-decoration: none; display: block;}
      .dropdown_content a:hover{background-color: #9553F3;}
      .dropdown:hover .dropdown_content{display: block;}
      .dropdown:hover .dropbtn{background-color:;}
	</style>
	<script type="text/javascript">
	//id에 따른 FAQ표시, 숨김 기능
	function FAQ(id){
		var obj = document.getElementById(id);
		if(obj.style.visibility == "visible"){
			obj.style.visibility = "collapse";
		}else{
			obj.style.visibility = "visible";
		}
	}
	</script>
</head>
<body>

    	<div class="sc">
    		<div class="sc_FAQ">
	    		<table>
	    			<tr><th>번호</th>
	    				<th>제목</th>
	   				</tr>
	   				<tr><td>1</td>
	   					<td onclick="FAQ('FAQ01')">예약은 어디에서 하나요?</td>
					</tr>
					<tr id="FAQ01" >
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>예약은 시터 찾기를 통해 희망하는 시터에게 간단하고 쉽게 예약을 진행할 수 있습니다.</td>
					</tr>
					<tr><td>2</td>
	   					<td onclick="FAQ('FAQ02')">헬로 펫시터는 어떤 서비스를 제공하나요?</td>
					</tr>
					<tr id="FAQ02">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>저희는 국내 최고 반려동물 전문가들의 교육을 받은 펫시터분들의 1:1 케어와 픽업 서비스 등 이용가능한 다양한 서비스 옵션을 제공하고 있습니다. 또한, 프리미엄 안전보장 프로그램과 모바일 앱을 통해 간단하고 쉽게 서비스를 이용할 수 있습니다.</td>
					</tr>
					<tr><td>3</td>
	   					<td onclick="FAQ('FAQ03')">호텔이나 병원에 맡기는 것과 다른 점은 무엇인가요?</td>
					</tr>
					<tr id="FAQ03">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>호텔이나 병원의 경우 여러 마리의 반려동물을 수용하여야 하기 때문에 24시간 맞춤케어가 힘든 단점이 있습니다. 헬로 펫시터의 펫시팅 서비스는 1:1 반려동물 케어를 원칙으로 하며, 반려동물이 펫시터의 가정집에서 있는 동안 안전하게 지낼 수 있도록 합니다.</td>
					</tr>
					<tr>
						<td>4</td>
	   					<td onclick="FAQ('FAQ04')">타 펫시팅 서비스와 다른 점은 무엇인가요?</td>
					</tr>
					<tr id="FAQ04">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>저희 헬로 펫시터의 펫시터는 철저한 신원 검증 시스템과 전문적인 교육을 통과한 분들입니다.저희는 5단계 신원 검증 시스템(서류-방문-환경-교육-안전 검증)을 통해 펫시터들을 선발하고 있으며, 국내 최고 반려동물 전문가들의 지속적인 교육으로 전문적인 펫시팅 서비스를 제공하도록 합니다.</td>
					</tr>
					<tr><td>5</td>
	   					<td onclick="FAQ('FAQ05')">헬로 펫시터 믿을 수 있는 업체인가요?</td>
					</tr>
					<tr id="FAQ05">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>헬로 펫시터은 채팅 기능을 통해 신속하고 정확하게 반려동물 주인들과 소통을 제 1원칙으로 하고 있습니다. 또한, 지속적으로 펫시터의 거주지 환경을 검증하여 안전과 청결성을 유지하도록 하며 반려동물 전문가들의 교육 프로그램을 계속 이수하여 안심하고 반려동물을 맡기실 수 있습니다.</td>
					</tr>
					<tr><td>6</td>
	   					<td onclick="FAQ('FAQ06')">펫시팅 비용이 얼마인가요?</td>
					</tr>
					<tr id="FAQ06">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>펫시팅은 크게 데이케어와 1박케어로 나눌 수 있습니다. 데이케어의 경우 소형견 기준 약 2~3만원 정도, 1박케어의 경우 소형견 기준 3~5만원으로 책정되어 있습니다. 펫시팅 금액은 펫시터분들마다 상이하므로 참고바랍니다.</td>
					</tr>
					<tr><td>7</td>
	   					<td onclick="FAQ('FAQ07')">고양이도 가능한가요?</td>
					</tr>
					<tr id="FAQ07">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>	   					<td>네, 가능합니다. 고양이도 사랑해주세요.</td>
					</tr>
					<tr><td>8</td>
	   					<td onclick="FAQ('FAQ08')">추가비용 발생은 무엇인가요?</td>
					</tr>
					<tr id="FAQ08">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>추가비용은 예약하신 체크아웃 시간보다 늦어질 경우 발생할 수 있습니다. 추가비용은 1시간당 예약하신 펫시터의 데이케어 비용의 10퍼센트로 계산됩니다.</td>
					</tr>
					<tr><td>9</td>
	   					<td onclick="FAQ('FAQ09')">서비스에 대한 비용 결제는 언제되나요?</td>
					</tr>
					<tr id="FAQ09">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>펫시터님이 예약 요청을 승인하면 동시에 결제가 이뤄집니다. 따라서 예약 시 펫시팅 기간 및 조건을 신중히 확인하고 예약해주세요.</td>
					</tr>
					<tr><td>10</td>
	   					<td onclick="FAQ('FAQ10')">결제수단 (카드) 변경 및 관리는 어디서하나요?</td>
					</tr>
					<tr id="FAQ10">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>결제수단은 프로필 -> 결제수단 관리 탭에서 변경 및 관리할 수 있습니다.</td>
					</tr>
					<tr><td>11</td>
	   					<td onclick="FAQ('FAQ11')">예약 취소 및 환불 규정은 어떻게 되나요?</td>
					</tr>
					<tr id="FAQ11">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>예약 취소 및 환불은 서비스 이용 전 일수에 따라 달라집니다. 서비스 이용 5일 전 취소(100프로 환불), 서비스 이용 3일 내 취소(50프로 환불), 서비스 이용 1일 내 취소 (20프로 환불), 서비스 이용 당일 취소 (환불 불가), 조기 서비스 종료 (남은 일수 환불 불가) 예약 변경은 예약 취소 후 다시 예약 신청 하셔야 하며, 되도록이면 5일 이전에 해주시길 바랍니다. 예약일 연장에 대해서는 헬로 펫시터 고객센터 (070-4756-2223) 및 카카오톡 @헬로 펫시터으로 연락주시면 친절히 안내해드리겠습니다.</td>
					</tr>
					<tr><td>12</td>
	   					<td onclick="FAQ('FAQ12')">예약하기 전에 펫시터와 사전만남도 가능한가요?</td>
					</tr>
					<tr id="FAQ12">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>펫시팅 전 사전만남을 원하신다면 예약을 원하는 펫시터님과 대화를 통해 만남을 조율할 수 있습니다.</td>
					</tr>
					<tr><td>13</td>
	   					<td onclick="FAQ('FAQ13')">당일에도 예약이 가능한가요?</td>
					</tr>
					<tr id="FAQ13">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>맡기려는 시간 3시간이전부터는 펫시팅 예약 요청이 가능합니다. 다만 당일 예약의 경우 펫시터님들께서 갑작스런 예약에 펫시팅이 불가능할 수 있습니다. 펫시팅을 계획하셨다면 미리 예약을 하시면 원하시는 펫시터님께 원하시는 날 맡길 수 있는 가능성이 높아집니다.</td>
					</tr>
					<tr><td>14</td>
	   					<td onclick="FAQ('FAQ14')">과거 일지는 어디서 볼 수 있죠?</td>
					</tr>
					<tr id="FAQ14">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>하단의 일지보기 탭을 누르면 현재 진행중인 일지 뿐만 아니라 과거 일지도 함께 볼 수 있습니다.</td>
					</tr>
					<tr><td>15</td>
	   					<td onclick="FAQ('FAQ15')">서비스 이용중 반려동물이 아프거나 다치면 어떻게 하나요?</td>
					</tr>
					<tr id="FAQ15">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>펫시팅 도중 반려동물의 건강에 이상이 생긴 경우, 사전에 펫시터님과 고객님께서 정한 병원으로 즉시 이송하여 진단, 치료를 받을 수 있습니다. 진단 및 치료 후 수의학적 판단에 의한 과실 여부에 따라 헬로 펫시터의 프리미엄 안전 보상 프로그램을 적용 받으실 수 있습니다.</td>
					</tr>
					<tr><td>16</td>
	   					<td onclick="FAQ('FAQ16')">펫시터와 연락이 안될 경우 어떻게 해야 하나요?</td>
					</tr>
					<tr id="FAQ16">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>6시간 이상 펫시터와 연락이 두절된 경우, 즉시 헬로 펫시터 고객센터(070-4756-2223~4)으로 전화 부탁드리겠습니다.</td>
					</tr>
					<tr><td>17</td>
	   					<td onclick="FAQ('FAQ17')">문자 또는 카카오톡 알림 허용은 어디서 하나요?</td>
					</tr>
					<tr id="FAQ17">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>먼저 앱 내의 환경설정에서 알림 설정이 되어있는지 확인해주세요. 앱 내의 알림 설정도 모두 허용으로 해놓았는데도 알림이 오지 않는 경우 1) 안드로이드의 경우 설정 -> 애플리케이션에서 헬로 펫시터 앱 정보를 확인하시고 알림이 허용되어 있는지 확인해주세요. 2) ios의 경우 앱 내의 알림 선택 뿐만 아니라 일반 -> 헬로 펫시터 어플리케이션으로 들어가 알림(notification)에서 알림 설정이 되어 있는지 확인해 주셔야 합니다. 위와 같은 방법으로 확인 했지만 알림이 안오는 경우 앱을 재설치하는 것을 권장드립니다.</td>
					</tr>
					<tr><td>18</td>
	   					<td onclick="FAQ('FAQ18')">헬로 펫시터을 탈퇴하고 싶어요</td>
					</tr>
					<tr id="FAQ18">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>하단의 프로필 탭을 누르면 환경설정에서 회원 탈퇴가 가능합니다. 회원탈퇴시 이전의 대화, 일지는 모두 볼 수 없게 됩니다. 신중히 진행해 주시길 부탁드립니다.</td>
					</tr>
					<tr><td colspan="2"></td></tr>
	    		</table>
    		</div>
    	</div>	
</body>
	<script type="text/javascript">
	</script>
</html>