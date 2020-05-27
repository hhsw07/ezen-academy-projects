/**
 * 
 */

(function(){
	var vm0 = new Vue({
		el:'#noti-wrap',
		data:{
			totalCnt:0,
			notiList:[]
		},
		mounted:function(){
			if(loginUser==''){
				//비로그인
			} else {
				//로그인
				$.ajax({
					type:"get",
					url:path+"/getNotificationList.do?mem_code="+loginUser,
					dataType:"json",
					success:function(data){
						data.list.forEach(el=>{
							var tmp={
									'title':'문의 하신('+el.title+')에 대한 답변이 달렸습니다.',
									'link':"",
							};
							if(el.type==='project'){
								tmp.link=window.location.origin+path+"/funding.do?method=detail&pro_code="+el.code;
							} else if(el.type==='store'){
								tmp.link=window.location.origin+path+"/store.do?method=detail&sto_code="+el.code;
							}
							vm0.notiList.push(tmp);
						})
					},
					error:function(err){
						console.log("ajax에러");
						console.log(err);
					}
				});
				
				//종료예정인 상품 알람추가
				$.ajax({
					type:"get",
					url:path+"/getFavorProjectListLeft7DaysOrLess.do?mem_code="+loginUser,
					dataType:"json",
					success:function(data){
						data.list.forEach(el=>{
							var tmp={
									'title':`★종료임박 프로젝트 알림★
									[${el.title}]`,
									'link':window.location.origin+path+"/funding.do?method=detail&pro_code="+el.code,
							}
							vm0.notiList.push(tmp);
						})
					},
					error:function(err){
						console.log('ajax에러');
						console.log(err);
					}
				})
			}
		},
		watch:{
			notiList:function(val){
				this.totalCnt=val.length;
			}
		}
	})
})();