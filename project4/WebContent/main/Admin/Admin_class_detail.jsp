<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, z01_vo.*, java.util.Date, vo_hsw.*,
    java.text.SimpleDateFormat " 
%>
<%	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath(); %>
<%
A01_Admin dao = new A01_Admin();
String course_noS = request.getParameter("cIdx");
int course_no = 1; if(course_noS != null) course_no = new Integer(course_noS);

SimpleDateFormat format1 = new SimpleDateFormat ("yyyy-MM-dd");
Date time = new Date();
String nowTime = format1.format(time);

Adm_Cou co = dao.getCourse(course_no);
ArrayList<Adm_Ckind> ckList = dao.getCkList(course_no);

String proc = request.getParameter("proc"); if(proc == null) proc="";
String newCk = request.getParameter("newCk"); if(newCk== null)newCk="";
//COURSE_NO|MEM_ID|COURSE_INPUTDATE   |COURSE_TITLE|
// COURSE_DETAIL |COURSE_IMG    |CORUSE_CATEGORY|

if(proc.equals("del")){
	String delnoS = request.getParameter("delno");
	int delno = 0; if(delnoS !=null) delno = Integer.parseInt(delnoS);
	dao.deleteCkind(delno);
	
	Thread.sleep(500);
	response.sendRedirect("Admin_class_detail.jsp?cIdx="+course_no);
}


if(proc.equals("upt")){
	String noS = request.getParameter("course_no");
	int no = new Integer(noS);
	Adm_Cou upt = new Adm_Cou(no,request.getParameter("mem_id"),
			null,request.getParameter("course_title"),
			request.getParameter("course_detail"),request.getParameter("course_img"),
			request.getParameter("course_category"));
	
	dao.updateCou(upt);
	
	for(Adm_Ckind ck : ckList){
		int ckno = ck.getCkind_no();
		String course_kind = request.getParameter("course_kind"+ckno);
		String course_opendateS = request.getParameter("course_opendate"+ckno);
		if(course_opendateS==null) course_opendateS="2020-01-01";
		Date course_opendate = format1.parse(course_opendateS);
		String course_priceS = request.getParameter("course_price"+ckno);
		int course_price = 0; if(course_priceS !=null)course_price = new Integer(course_priceS);
		String course_totcntS = request.getParameter("course_totcnt"+ckno);
		int course_totcnt = 0; if(course_totcntS != null)course_totcnt = new Integer(course_totcntS);
		
		Adm_Ckind ckupt = new Adm_Ckind(ckno,course_no,course_kind,course_opendate,course_price,course_totcnt,0);
		dao.updateCkind(ckupt);
	}
		
	if(newCk.equals("newCk")){
		String course_kind = request.getParameter("course_kind");
		String course_opendateS = request.getParameter("course_opendate");
		if(course_opendateS==null) course_opendateS="2020-01-01";
		Date course_opendate = format1.parse(course_opendateS);
		String course_priceS = request.getParameter("course_price");
		int course_price = 100; if(course_priceS!=null)course_price = Integer.parseInt(course_priceS);
		String course_totcntS = request.getParameter("course_totcnt");
		int course_totcnt =10; if(course_totcntS!=null)course_totcnt = Integer.parseInt(course_totcntS);
		
		Adm_Ckind ckupt = new Adm_Ckind(0,course_no,course_kind,course_opendate,course_price,course_totcnt,0);
		dao.insertCkind(ckupt);
	}
	
	Thread.sleep(500);
	response.sendRedirect("Admin_class_detail.jsp?cIdx="+course_no);
}




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>??????????????? - ????????? ?????? ????????? ?????????</title>
<style type="text/css">
    a{text-decoration:none; color:black;}
	.middle{position: relative; width:1080px;}
	
	.top{position:absolute; width:100%; height:100px;}
	.logo{font-family:sans-serif;font-size:35px;color:#FF4000;font-weight:bold; margin:0;}
	
	.nav{background-color:#f8f8fa; position:absolute; top:100px; width:200px;height:1000px;}
	.nav ul {list-style:none; padding:5px;}
	.nav ul li {height:90px; border:1px solid black; text-align:center; line-height:90px;}
	.nav ul li:first-child {border-radius:20px 20px 0 0;}
	.nav ul li:last-child {border-radius:0 0 20px 20px;}
	.ckOn {background-color:#f36359; color:#ffffff;}
	.ckOff {background-color:#ffffff;}
	
	.section{background-color:#f8f8fa;position:absolute; top:100px;left:200px; width:880px;height:1000px; padding:10px;}
	.section table {width:100%; text-align:center;border-collapse:collapse;background-color:#ffffff; margin-top:30px;}
	.section table th {height:40px;background-color:#F5A9A9;}
	.section table td {height:40px;}
	
	.section table td input[type=text], input[type=date] {width:90%; height:90%;}
	.section table td input[type=file]{ height:20%;}
	.inputBtn {margin:10px 0 0 800px; font-size:15px;}
</style>

</head>

<body>
	<div class="middle">
		<div class="top">
			<p><a href="<%=path %>/main/Main.jsp" class="logo" > HobbyFactory</a> ????????? ?????? ?????????</p>
		</div>
		<div class="nav">
			<ul>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_mem.jsp'" class="ckOff">?????? ??????</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" class="ckOn">????????? ??????</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_store.jsp'" class="ckOff">????????? ??????</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_notice.jsp'" class="ckOff">???????????? ??????</li>
				<li onclick="location.href='<%=path %>/main/Admin/Admin_inquiry.jsp'" class="ckOff">?????? ??????</li>
			</ul>
		</div>
		<div class="section">
			<h1>????????? ??????</h1>
			<form method="post">
				<input type="hidden" name="proc" value="upt" />
				<table border>
					<tr>
						<th>???????????????</th>
						<td><input type="text" name="course_no" value="<%=co.getCourse_no() %>" readonly /></td>
						<th></th>
						<td></td>
					</tr>
					<tr>
						<th>????????? ?????????</th>
						<td><input type="date" name="course_inputdate" value="<%=co.getCourse_inputdate() %>"readonly /></td>
						<th>?????????</th>
						<td><input type="text" name="mem_id" value="<%=co.getMem_id() %>"/></td>
					</tr>
					<tr>
						<th>???????????? </th>
						<td><input type="text" name="course_title" value="<%=co.getCourse_title() %>"/></td>
						<th>????????????</th>
						<td>
							<select name="course_category" style="width:90%;">
								<option value="????????????">????????????</option>
								<option value="???????????????">???????????????</option>
								<option value="?????????/?????????">?????????/?????????</option>
								<option value="?????????/??????">?????????/??????</option>
								<option value="????????????">????????????</option>
								<option value="?????????/????????????">?????????/????????????</option>
								<option value="????????? ??????">????????? ??????</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>??????????????????</th>
						<td>
							<div style="height:80px; margin-bottom:10px; overflow:hidden;"><img src="../image/<%=co.getCourse_img() %>" style="max-width:250px;"/></div>
							<input type="file" name="course_img" /></td>
						<th>???????????? </th>
						<td>
							<div style="height:80px; margin-bottom:10px;overflow:hidden;"><img src="../image/<%=co.getCourse_detail() %>" style="max-width:250px;"/></div>
							<input type="file" name="course_detail" /></td>
					</tr>
					<tr>
						<td colspan="4" style="text-aling:right; " >
							<input type="hidden" name="cIdx" value="<%=course_no %>"  />
							<input type="button" value="????????????" onclick="location.href='<%=path %>/main/Admin/Admin_class.jsp'" />
							<input type="submit" value="??????" />
							<input type="button" value="??????" onclick="ckDel(<%=course_no %>)" />
						</td>
					</tr>
				</table>
			<div>
				<h2>????????? ???????????? 
				<input type="button" value="????????????" onclick="location.href='?cIdx=<%=course_no %>'" />
				<input type="button" value="????????????" onclick="newCk(<%=course_no %>)" /></h2>
				<%
				
				for(Adm_Ckind ck : ckList){
					int ckno = ck.getCkind_no();
				%>
				<table border>
					<colgroup>
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
					</colgroup>
					<tr>
						<th>???????????????</th>
						<td>
							<%if(ck.getCourse_kind() != null && ck.getCourse_kind().equals("?????????")){ %>
							<label><input type="radio" id="o<%=ckno %>" name="course_kind<%=ckno %>" value="?????????" checked/>?????????</label>
							<label><input type="radio" id="r<%=ckno %>" name="course_kind<%=ckno %>" value="??????" />??????</label>
						</td>
						<th>?????????</th>
						<td><input type="date" id="d<%=ckno %>" name="course_opendate<%=ckno %>" value="<%=ck.getCourse_opendate() %>" /></td>
							<%}else{ %>
							<label><input type="radio" id="o<%=ckno %>" name="course_kind<%=ckno %>" value="?????????" />?????????</label>
							<label><input type="radio" id="r<%=ckno %>" name="course_kind<%=ckno %>" value="??????" checked/>??????</label>
						</td>
						<th>?????????</th>
						<td><input type="date" id="d<%=ckno %>" name="course_opendate<%=ckno %>" value="<%=ck.getCourse_opendate() %>" disabled/></td>
							<%} %>
						<th>??????????????????</th>
						<td><input type="button" value="??????" onclick="subDel(<%=ckno %>)" /></td>
					</tr>
					<tr>
						<th>??????</th>
						<td><input type="text" name="course_price<%=ckno %>" value="<%=ck.getCourse_price() %>" onKeyup="numAutoComma(this);"/></td>
						<th>????????????</th>
						<td><input type="text" name="course_curcnt<%=ckno %>" value="<%=ck.getCourse_curcnt() %>" readonly/></td>
						<th>?????????</th>
						<td><input type="text" name="course_totcnt<%=ckno %>" value="<%=ck.getCourse_totcnt() %>" onKeyup="numAutoComma(this);"/></td>
					</tr>
				</table>
				<%  
				} %>
				<%if(!newCk.equals("")){ %>
				<table border>
					<colgroup>
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
						<col width="100/6%">
					</colgroup>
					<tr>
						<th>??????</th>
						<td>??????</td>
						<th>???????????????</th>
						<td>
							<label><input type="radio" name="course_kind" value="?????????" checked/>?????????</label>
							<label><input type="radio" name="course_kind" value="??????" />??????</label>
						</td>
						<th>?????????</th>
						<td><input type="date" name="course_opendate" value="<%=nowTime %>" /></td>
						
					</tr>
					<tr>
						<th>??????</th>
						<td><input type="text" name="course_price" value="100" onKeyup="numAutoComma(this);" /></td>
						<th>????????????</th>
						<td><input type="text" name="course_curcnt" value="0" readonly /></td>
						<th>?????????</th>
						<td><input type="text" name="course_totcnt" value="10" onKeyup="numAutoComma(this);" /></td>
					</tr>
				</table>
				<input type="hidden" name="newCk" value="newCk" />
				<%} %>
				</form>
			</div>	
		</div>
	</div>
</body>
<script>
	function ckDel(idx){
		var ckConfirm = confirm("?????? ?????????????????????????");
		 if(ckConfirm){
			location.href="<%=path %>/main/Admin/Admin_del.jsp?cIdx="+idx;
		}
	}
	function newCk(cIdx){
		location.href="?cIdx="+cIdx+"&newCk=newCk";
	}
	
	function subDel(idx){
		if(confirm("?????? ?????????????????????????")){
		location.href="?cIdx=<%=course_no%>&proc=del&delno="+idx;
		}
	}
	
	// onKeyup="numAutoComma(this);"
	function numAutoComma(obj) {
	    
	    var number = obj.value;
	    var integer = obj.value;
	    var chekcd = "";

	    // ???????????? ????????? ????????????.
	    integer = integer.replace(/\,/g, "");
	    chekcd = inputNumberisFinit(integer);

	    if(chekcd == "N") {
	        alert("????????? ???????????? ??? ????????????.");
	        obj.value = "";
	        return false;
	    }

	    // ???????????? ????????? ????????????.
	    integer = inputNumberWithComma(inputNumberRemoveComma(integer));
	    obj.value = integer;
	    
	}

	// ????????? ????????? ????????? ??????( , )??? ???????????? ??????
	function inputNumberWithComma(str) {
	    str = String(str);
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
	}

	// ??????( , )??? ????????? ?????? ????????? ???????????? ??????
	function inputNumberRemoveComma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, "");
	}

	//?????? ????????? ???????????? ????????? ???????????? N, ???????????? ????????? Y??? ????????????.
	function inputNumberisFinit(str) {
	    if(isFinite(str) == false) {
	        return "N";
	    } else {
	        return "Y";
	    }
	}
	
</script>
<%-- var course_kind = "<%=ck.getCourse_kind() %>";
	if(course_kind == "?????????"){
		document.querySelector("#o<%=ckno%>").checked = true;
	}
	if(!document.querySelector("#o<%=ckno%>").checked){
		document.querySelector("#d<%=ckno%>").disabled = true;
	} --%>
</html>