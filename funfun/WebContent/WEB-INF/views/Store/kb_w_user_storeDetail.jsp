<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/kb_w_user_StoreDetail.css">
<script>
		$(document).ready(function(){
			
			var price = 0;
			var detai = "";
			$("#option_select").change(function(){
				//price = $("#option_select option:selected").val();
				var 셀렉트태그=document.querySelector("#option_select");
				price = 셀렉트태그.options[셀렉트태그.selectedIndex].dataset.price;
				console.dir(price);
				
				detail = $("#option_select").val();
				$("#cnt_input").val("1");
				$("#price_Span").html(numberWithCommas(price));
			});
			
			$("#cnt_input").change(function(){
				price = $("#option_select option:selected").val();
				var tot = 0;
				var cnt = $("#cnt_input").val();
				if(cnt < 0){
					$("#cnt_input").val("0");
				}
				tot = price * cnt;
				
				$("#price_Span").html(numberWithCommas(tot));

			});
			
			 var article = ("#sto_QnA_Div .qnaShow");
	            $("#sto_QnA_Div .item td").click(function(){
	                var myArticle = $(this).parent().next("tr");
	                if($(myArticle).hasClass('hide')){
	                    $(article).removeClass('qnaShow').addClass('hide');
	                    $(myArticle).removeClass('hide').addClass('qnaShow');
	                } else {
	                    $(myArticle).addClass('hide').removeClass('qnaShow');
	                }
	            });
			
	            $("#qnaSubmit").click(function(){
	                $("#qnaForm").submit();
	                $(".btn btn-primary").modal("hide");
	                $("#sto_QnA_Div").focus();
	            })
			
			})
		
		
		
		function numberWithCommas(x) {
	        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    }
		
		function goPage(no){
			$("#curPage").val(no);
			$("#cntForm").submit();
		}
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	  		<div class="store-title" style="text-align: center; margin-top:0;" >
	    		<div class="label label-warning">${store.cate_title}</div>
	    		<h3 style="font-weight:800;">${store.sto_title}</h3>
        	</div>
        <div id="sto_menu_Div">
            <ul class="sto_menu_ul">
                <li class="sto_menu_li"><a href="#sto_Title_Div" class="sto_menu_a">상단</a></li>
                <li class="sto_menu_li"><a href="#sto_Story_Div" class="sto_menu_a">스토리</a></li>
                <li class="sto_menu_li"><a href="#sto_QnA_Div" class="sto_menu_a">문의</a></li>
            </ul>
        </div>
        <div id="sto_Main_Info_Div">
            
            <div id="sto_Image_Div">
                <img src="img/${store.sto_image}" class="img-responsive" alt="Responsive image" 
                style="width:80%;
                height:100%; margin-left:auto; margin-right:auto;">
            </div>

            <div id="sto_pay_Div">
                <div id="maker_name_Div"> 메이커 명 : ${store.maker_name}</div>
                <div id="option_Div">
                    <span id="option_title">옵션 : </span>
                    <select class="form-data" id="option_select" name="sto_opt_code">
                    	<option></option>
                    	<c:forEach var="opt" items="${option}">
                    		  <option data-price="${opt.sto_opt_price}" value="1"> ${opt.sto_opt_detail} </option>
                    	</c:forEach>
                    </select>    
                </div>
                <div id="option_cnt_div">
                    <span id="option_cnt_title">수량 : </span>
                    <input type="number" class="form-data" id="cnt_input" value="1">
                </div>
                <div id="option_price_Div">
                
                    <span id="price_Span"></span>원
                </div>
                <div id="pay_Btn_Div">
                    <button id="Pay_Btn">주문하기</button>
                </div>
            </div>

           
        </div>
        <div id="sto_Story_Div">
            <div id="sto_Story_Title">상세 스토리</div>
            ${store.sto_detai}
        </div>
		<form id="cntForm" method="get">
			<input type="hidden" id="curPage" name="curPage" value="${sch.curPage}">
			<input type="hidden" name="method" value="detail">
			<input type="hidden" name="sto_code" value="${stocode}">
		
        <div id="sto_QnA_Div">
            <div id="sto_QnA_Title">스토어 문의 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="float:right;" >문의하기</button></div>
            <table class="table table-hover" style="margin-top:2%;">
                <thead>
                    <tr style="text-align:center">
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성날짜</th>
                        <th>답변여부</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="qna" items="${qna}">
                    <tr  class="item" style="text-align:center">
                        <td>${qna.qna_code}</td>
                        <td><span class="title_td">${qna.qna_detail}</span></td>
                        <td>${qna.mem_name} </td>
                        <td>${qna.qna_reg_date} </td>
                        <td>
                        	<c:if test="${qna.qna_ans==null}">
                        		미답변
                        	</c:if>
                        	<c:if test="${qna.qna_ans!=null}">
                        		답변
                        	</c:if>
                        </td>
                    </tr>
                    <tr class="hide">
                    	<td colspan="5"><pre>${qna.qna_detail}</pre></td>
                    </tr>
                    </c:forEach>
                  
                </tbody>

            </table>

            <div class="text-center">
		        <ul class="pagination ct-orange"> 
					<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
						<li class="${paging.curPage==cnt?'active':'' }"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${paging.endBlock==paging.pageCount?paging.pageCount:paging.endBlock+1})">&raquo;</a></li>
				</ul>
	        </div>
	       
            </div>
             </form>
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="exampleModalLabel">스토어 문의하기</h4>
                    
                    </div>
                    <div class="modal-body">
                      <form method="post" id="qnaForm" action="store.do?method=insert">
                      	<div class="form-group">
                      		<label for="message-text" class="control-label">비밀글 유무</label>
                      		<input type="radio" value="Y" name="qna_open"> 비밀글로 하기 <input type="radio" value="n" name="qna_open"> 비밀글로 안하기
                      	</div>
                        <div class="form-group">
                          <label for="message-text" class="control-label">문의내용:</label>
                          <textarea class="form-control" id="message-text" name="qna_detail"></textarea>
                          <input type="hidden" name="mem_code" value="${user.mem_code}">
                          <input type="hidden" name="sto_code" value="${stocode}">
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                      <button type="submit" class="btn btn-primary" id="qnaSubmit">문의하기</button>
                    </div>
                  </div>
                </div>
              </div>
        </div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>