<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/17.0.0/classic/ckeditor.js"></script> 
<style type="text/css">
/* 전체 */
	ul li{list-style:none;}
	a{text-decoration:none; color:black;cursor:pointer;}
/* 메뉴바 */
	.mymenu{width:1050px; margin:60px auto 0; background:none; position:relative;}
	.mymenubar{position:relative; height:64px; background:#2a2c34; overflow:hidden;}
	.mymenubar ul{width:100%; padding:0 10px; overflow:hidden;}
	.mymenubar ul li{float:left;}
	.mymenu_btn{padding:4px 18px 23px; font-size:18px; display:block; color:#FFFFFF;}
	.mymenu_btn-on{font-weight:bold;}
	.host_btn{width:90px; height:64px; padding-left:89px; color:#FFFFFF; font-size:18px; background-size:19px 18px; text-indent:0;
	line-height:64px; display:block; position:absolute; top:0; right:0; overflow:hidden;}
/* 소메뉴 */
	.mynav{text-align:left; display:inline;}
	.mynav ul li{float:right; text-align:center; display:flex; padding-right:30px;}
	.mynav ul li a{color:#FFFFFF; cursor:pointer;}
	.mysubmenu{display:block; position:relative; width:1050px; padding:4px; margin:0 auto;}
	.mysubmenu ul li a{color:#000000; cursor:pointer;}
/* 신청서 */
	.hoststore{width:1050px; margin:0 auto; display:block;}
	.apply-cont{padding:40px 3% 0;}
	.in-wrap{position:relative; padding:7px 10px 9px; border:1px solid #eaeaea;}
	.in-wrap input{width:850px; color:#3d4248; background:none; border:0;}
	.ck.ck-editor{min-width:900px;max-width: 900px;}
	.ck-editor__editable{min-height:700px;}
	.apply-con{padding:10px 0;}
	.apply-tit{width:85px}
	.myinfo_btn{padding:50px 0;}
	.btn-myinfo_edit{width:260px;height:64px;font-size:16px;line-height:64px;display:block;margin:0 auto;color:#FFFFFF;background:#3d4248;text-align:center;}
	
</style>
</head>
<body>
<!-- 마이페이지 메뉴 -->
	<div class="mymenu">
		<div class="mymenubar">
			<ul class="mymenu-list">
				<li>
					<a href="?page=mypage_order" class="mymenu_btn">주문/배송관리</a>
				</li>
				<li>
					<a href="?page=mypage_mileage" class="mymenu_btn">나의 활동</a>
				</li>
				<li>
					<a href="?page=mypage_modiinfo" class="mymenu_btn">내 정보 관리</a>
				</li>
			</ul>
		</div>
		<a href="?page=host_class" class="host_btn mymenu_btn-on">HOST</a>
	</div>
	
<!-- 소메뉴 -->
	<div class="mysubmenu">
		<nav class="mynav">
			<ul>
				<li class="mymenu_btn-on"><a href="?page=host_store">스토어</a></li>
				<li><a href="?page=host_class">클래스</a></li>
			</ul>
		</nav>
	</div>
<!-- 신청서 -->
	<section>
		<article class="hoststore">
		<div class="apply-cont">
			<table>
				<tr>
					<th class="apply-tit">상품명</th>
			    	<td class="apply-con">
			    		<div class="in-wrap"><input type="text" name="aptitle"/></div>
			    	</td>
				</tr>
				<tr>
			    	<th class="apply-tit">상품사진</th>
			    	<td class="apply-con">
			    		<input type="file" name="pic" />
			    	</td>
			    </tr>
				<tr>
					<th></th>
			    	<td class="apply-con"><textarea name="content" id="editor"></textarea></td>
				</tr>	   		  		  					
			</table>
			<div class="myinfo_btn">
				<a href="#" class="btn-myinfo_edit">신청하기</a>
			</div>
		</div>
			
		</article>
	</section>
	
</body>
<script type="text/javascript">
ClassicEditor
.create( document.querySelector( '#editor' ) )
.catch( error => {
    console.error( error );
} );
</script>
</html>