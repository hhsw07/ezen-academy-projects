// 카테고리
	$("#all").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#edu").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#beauty").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#homeLiving").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#culture").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#sports").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#book").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#dog").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
	$("#electro").click(function(){
		$("[name=category]").val("");
		$("form").submit();
	});
// 프로젝트 상세보기
	function go_detail(no){
		$(location).attr("href", "${path}/funding.do?method=detail&no="+no);
	}