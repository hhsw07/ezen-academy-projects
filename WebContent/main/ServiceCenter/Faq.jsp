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
	   					<td onclick="FAQ('FAQ01')">스타터 키트가 무엇인가요?</td>
					</tr>
					<tr id="FAQ01" >
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>스타터키트는 취미를 즐기기 위해 꼭 필요하면서 반복적으로 사용되는 기초 도구 키트입니다.</td>
					</tr>
					<tr><td>2</td>
	   					<td onclick="FAQ('FAQ02')">하비팩토리 취미 클래스 작가로 신청하고 싶어요. 어떻게 하면 되나요?</td>
					</tr>
					<tr id="FAQ02">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>하비팩토리 취미 클래스 작가가 될 기회는 누구에게나 열려있습니다!

간단한 작가님 소개와 포트폴리오, 하비풀에서 진행하고자 하는 클래스 정보를 기재하여 artist@hobbyfactory.co.kr 로 보내주세요.</td>
					</tr>
					<tr><td>3</td>
	   					<td onclick="FAQ('FAQ03')">하비팩토리에서의 활동 내역을 볼 수 있나요?</td>
					</tr>
					<tr id="FAQ03">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>네. ‘마이페이지> 내 활동 내역’ 에 들어가면   하비팩토리에서의 활동 내역을 한 눈에 살펴볼 수 있습니다.</td>
					</tr>
					<tr>
						<td>4</td>
	   					<td onclick="FAQ('FAQ04')">탈퇴하고 싶어요.</td>
					</tr>
					<tr id="FAQ04">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>'마이페이지>내 정보 관리> 회원탈퇴' 에서 탈퇴가 가능합니다. </td>
					</tr>
					<tr><td>5</td>
	   					<td onclick="FAQ('FAQ05')">회원 정보를 수정하고 싶어요.</td>
					</tr>
					<tr id="FAQ05">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>'마이페이지>내 정보 관리> 회원정보 수정' 에서 수정할 수 있습니다.</td>
					</tr>
					<tr><td>6</td>
	   					<td onclick="FAQ('FAQ06')">상품을 반품할 때, 배송비는 누가 부담하게 되나요?</td>
					</tr>
					<tr id="FAQ06">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>물품의 오배송, 파손, 상품의 불량 등의 경우는 하비팩토리에서 배송비를 부담합니다. 구매자의 단순변심, 배송 주소지 오류로 반송된 경우 등 상품 문제가 아닌 경우의 배송비는 고객부담입니다.</td>
					</tr>
					<tr><td>7</td>
	   					<td onclick="FAQ('FAQ07')">주문을 취소하고 싶어요.</td>
					</tr>
					<tr id="FAQ07">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>	   					<td>상품 발송 전(결제 대기, 결제 완료 단계)까지는 주문 취소가 가능합니다.</td>
					</tr>
					<tr><td>8</td>
	   					<td onclick="FAQ('FAQ08')">마일리지 사용에 제한이 있나요?</td>
					</tr>
					<tr id="FAQ08">
						<td>
							<img src="../image/꺽인화살표.png" />
						</td>
	   					<td>마일리지는 1원부터 사용 가능하며, 금액 제한은 없습니다. 마일리지는 발급일로부터 12개월 후 자동 소멸되니, 소멸 전에 사용해주세요!</td>
					</tr>
					<tr><td>9</td>
	   					<td onclick="FAQ('FAQ09')">마일리지가 생겼습니다. 어떻게 사용하나요?</td>
					</tr>
					<tr id="FAQ09">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>쿠폰을 통한 충전, 후기 작성, 구독 적립 등을 통해 쌓은 마일리지는 정기구독 신청 시 사용하여 할인을 받으실 수 있습니다. 마일리지 1p는 현금 1원과 동일합니다.</td>
					</tr>
					<tr><td>10</td>
	   					<td onclick="FAQ('FAQ10')">쿠폰을 등록했습니다. 어떻게 사용하나요? </td>
					</tr>
					<tr id="FAQ10">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>쿠폰 등록 시 마일리지로 충전되며, 충전한 마일리지는 현금처럼(1p=1원) 사용이 가능합니다. </td>
					</tr>
					<tr><td>11</td>
	   					<td onclick="FAQ('FAQ11')">쿠폰을 받았습니다. 어떻게 등록하나요?</td>
					</tr>
					<tr id="FAQ11">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>쿠폰 즉시 발급 안내를 받으신 경우, ‘마이페이지>나의활동내역>쿠폰 현황’에서 발급된 쿠폰을 즉시 확인 할 수 있습니다.</td>
					</tr>
					<tr><td>12</td>
	   					<td onclick="FAQ('FAQ12')">신용/체크카드로 결제하고 싶은데 공인인증서가 없으면 어떻게 하나요?</td>
					</tr>
					<tr id="FAQ12">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>결제 수단 등록 시 공인인증서를 요청하지 않습니다.</td>
					</tr>
					<tr><td>13</td>
	   					<td onclick="FAQ('FAQ13')">결제수단 종류는 어떤 것들이 있나요?</td>
					</tr>
					<tr id="FAQ13">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>현재 신용/체크카드 결제만 가능합니다.</td>
					</tr>
					<tr><td>14</td>
	   					<td onclick="FAQ('FAQ14')">배송일을 변경할 수 있는 방법은 없나요?</td>
					</tr>
					<tr id="FAQ14">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>배송일 변경을 희망하시는 경우 1:1 문의를 남겨주세요. 배송일 변경을 희망하는 클래스와 희망배송일을 알려주시면 됩니다.</td>
					</tr>
					<tr><td>15</td>
	   					<td onclick="FAQ('FAQ15')">도서산간 지역도 배송이 되나요?</td>
					</tr>
					<tr id="FAQ15">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>네. 도서산간지역의 경우에도 배송해드리나, 택배사의 정책에 따라 추가 배송료를 결제하셔야 합니다.</td>
					</tr>
					<tr><td>16</td>
	   					<td onclick="FAQ('FAQ16')">제품을 받지 못했는데 배송완료라고 되어 있어요.</td>
					</tr>
					<tr id="FAQ16">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>수령인 부재 시, 택배 집배원이 경비실 또는 이웃 등에게 임의배송 후 ‘배송완료’로 표시하거나, 배송물량 폭주로 배송 전, 배송 시스템에 ’배송완료’로 선 등록 후 당일 중으로 배송하는 경우가 있습니다.</td>
					</tr>
					<tr><td>17</td>
	   					<td onclick="FAQ('FAQ17')">배송조회를 했는데, 해당 운송장번호가 없다고 나와요.</td>
					</tr>
					<tr id="FAQ17">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>출고된 당일에는 운송장 번호 조회가 되지 않을 수 있습니다. 출고 다음 날 다시 한 번 더 확인 부탁 드리며, 확인이 되지 않을 경우 1:1 문의 부탁드립니다.</td>
					</tr>
					<tr><td>18</td>
	   					<td onclick="FAQ('FAQ18')">하비풀에서 사용하는 택배사는 어딘가요?</td>
					</tr>
					<tr id="FAQ18">
	   					<td>
							<img src="../image/꺽인화살표.png" />
						</td>
						<td>하비풀의 취미 키트는 CJ대한통운을 통해 배달됩니다.</td>
					</tr>
					<tr><td colspan="2"></td></tr>
	    		</table>
    		</div>
    	</div>	
</body>
	<script type="text/javascript">
	</script>
</html>