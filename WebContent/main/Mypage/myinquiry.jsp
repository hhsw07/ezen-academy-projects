<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.reply-info-wrap{padding: 0 22px 0 30px;}
	.reply-info-cont{    margin: 40px 0 0;
    padding: 26px 26px 29px;
    border: 5px solid #DFDFDF;}
	.reply-info-area-type02{line-height: 1.71;}
	.reply-info-area{    height: auto;
    font-size: 14px;color: #a1a4a8;overflow: hidden;}
    .reply-info-tit{color:#2f3338; padding:0 0 5px; font-weight:bold;}
    .reply-info-txt{    display: inline-block;
    margin: 0 30px 0 0;color: #a1a4a8;}
    .direct-ask-wrap{padding:0 10%; color:#3d4248;}
    .direct-ask-tit{    margin: 50px 0 0;
    padding: 17px 0 10px;
    font-size: 16px;
    border-bottom: 2px solid #3d4248;
    line-height: 1.5;    position: relative;color: #3d4248;    font-weight: bold;}
    .btn-write-direct{width: 144px;
    height: 35px;
    font-size: 14px;
    line-height: 33px;    display: block;
    position: absolute;
    top: 0;
    right: 0;	color: #202127;    border: 1px solid #3d4248;text-align: center;
    font-weight: normal;}
	.btn-write-direct:visited{text-decoration: none;}
	.btn-write-direct:link, :active {text-decoration: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);}
	.no-view-wrap{padding:70px 0; text-align:center;}
    .no-view-tit{color: #3d4248; font-size:24px; font-weight:bold;}
    .no-view-txt{margin:5px 0 0; color:#a1a4a8; font-size:16px;}

</style>
</head>
<body>
	<div class="reply-info-wrap">
		<div class="reply-info-cont">
			<div class="reply-info-area reply-info-area-type02">
				<div class="reply-info-tit">[상담 안내]</div>
				<span class="reply-info-txt">• 1:1 문의를 주시면 담당자가 빠르게 답변 드리도록 하겠습니다.</span>
			</div>
		</div>
	</div>
	
	<!--  문의내역 없음 -->
	<article class="mymenu-content">
		<div class="direct-ask-wrap">
			<div class="direct-ask-tit">1:1 문의내역<a href="/mypage.html?m=action-history&amp;s=qna&amp;action=write" class="btn-write-direct btn-write-qna">1:1 문의 작성하기</a></div>
			<div class="no-view-wrap">
				<div class="no-view-tit">궁금하신 내용이 있으시면 1:1 문의를 신청해보세요.</div>
				<div class="no-view-txt">하비풀 서비스 이용시 궁금하신 내용이 있으시면 1:1 문의를 이용해보세요.<br>친절하고 빠르게 문제 해결을 도와드리겠습니다.</div>
				<!--a href="/mypage.html?m=action-history&s=qna&action=write" title="1:1 문의 신청하기" class="btn-no-view no-view-write-qna">1:1 문의 신청하기</a-->
			</div>
		</div>
	</article>
</body>
</html>