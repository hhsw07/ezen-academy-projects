<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<%
A02_Database dao= new A02_Database();

int deptno=0;String deptnoS = request.getParameter("deptno"); if(deptnoS!=null) deptno=Integer.parseInt(deptnoS);		
String dname = request.getParameter("dname"); if(dname==null) dname="";	
String loc = request.getParameter("loc"); if(loc==null) loc="";		
boolean isSuccess=false;
if(!dname.equals("")){
	dao.insertDept(new Dept(deptno,dname,loc));
	isSuccess=true;
}
ArrayList<Dept> dlist = dao.getDeptList();
%>
<body>
	<h2 align="center">부서정보등록</h2>
	<form method="post">
	<table>
		<tr><th>부서번호</th>
			<td>
				<input type="text" name="deptno"/>
			</td></tr>
		<tr><th>부서명</th>
			<td>
				<input type="text" name="dname"/>
			</td></tr>
		<tr><th>부서위치</th>
			<td>
				<input type="text" name="loc"/>
			</td></tr>
		<tr><td colspan="2">
				<input type="submit" value="등록"/>
				<input type="button" value="조회화면"  onclick="javascript:goMain()"/>
			</td></tr>
	</table>
	</form>
<script type="text/javascript">
	var isSuccess=<%=isSuccess%>;
	if(isSuccess){
		if(!confirm("등록 성공\n계속등록하시겠습니까?")){
			location.href="a02_deptList.jsp";
		}
	}
	var regDeptnos=[];
	var regDnames=[];
	var regLocs=[];
	// jsp dlist를 통해서 js의 각 배열을 등록..
	<%for(Dept d:dlist){%>
	regDeptnos.push(<%=d.getDeptno()%>);
	regDnames.push('<%=d.getDname()%>');
	regLocs.push('<%=d.getLoc()%>');
	<%}%>
	var deptno = document.querySelector("[name=deptno]");
	var dname = document.querySelector("[name=dname]");
	var loc = document.querySelector("[name=loc]");
	deptno.onkeyup=function(){
		var isReg=false;
		for(var idx in regDeptnos){
			if(regDeptnos[idx]==this.value){
				isReg=true;
			}
		}
		if(isReg){
			alert("등록된 부서번호가 있습니다.");
			this.value="";
		}
	};
	dname.onkeyup=function(){
		var isReg=false;
		for(var idx in regDeptnos){
			if(regDnames[idx]==this.value.toUpperCase()){
				isReg=true;
			}
		}
		if(isReg){
			alert("등록된 부서명이 있습니다.");
			this.value="";
		}
	};
	loc.onkeyup=function(){
		var isReg=false;
		for(var idx in regLocs){
			if(regDeptnos[idx]==this.value.toUpperCase()){
				isReg=true;
			}
		}
		if(isReg){
			alert("등록된 부서위치가 있습니다.");
			this.value="";
		}
	};	
	function goMain(){
		location.href="a02_deptList.jsp";
	}

</script>	
</body>
</html>